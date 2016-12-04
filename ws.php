<?php

################################################################
# piece of code
# Is a webservice to handle all the CRUD operations done in php. 
#
# @author Rashid Alam <alam.rashid039@gmail.com>
#
################################################################
 
date_default_timezone_set("Asia/Kolkata");
#error_reporting(E_ALL); ini_set('display_errors', '1');

require "vendor/autoload.php";
$uniqid = uniqid();

define('thedbconn', TRUE);
define('thehelper_functions', TRUE);
define('the_lang_list', TRUE);
define('the_add_log', TRUE);


use Flixmates\Config\HELPERFUNCTIONS;
use Flixmates\Config\LANLIST;
use Flixmates\Config\ADDLOGS;
use Flixmates\Config\DBCONN;

$helperpobj = new HELPERFUNCTIONS();
$lanlistobj = new LANLIST();
$addlogobj  = new ADDLOGS();
$dbconn = new DBCONN();


#---=========================================================[   GET   ]==============================================---
if ($_SERVER['REQUEST_METHOD'] == 'GET') {

    if (!isset($_GET['mode'])) { 
        $helperpobj->send('Hey, Please send correct get value.');

    }

    if ($_GET['mode'] == 'flix_send_chat_msg') {
        $from_userid = isset($_GET['from_userid']) ?
            trim($_GET['from_userid'])  : '';
        $to_userid = isset($_GET['to_userid']) ?
            trim($_GET['to_userid'])  : '';
        $message = isset($_GET['message']) ?
            trim($_GET['message'])  : '';
        $group_id = isset($_GET['group_id']) ?
            trim($_GET['group_id'])  : '';
        $addlogobj->add_log("Send Chat Msg --- "
               ."From_userid=$from_userid, "
               ."To_userid=$to_userid, "
               ."Message=$message, "
               ."Group Id=$group_id", $uniqid);
        $message_id = flix_send_chat_msg($from_userid, 
                                         $to_userid, 
                                         $message, 
                                         $group_id);

        if (!$message_id) {
            $helperpobj->send("Internal Error !");
        }
        $helperpobj->send("Sent Message");

    } elseif ($_GET['mode'] == 'get_flix_send_chat_msg') {
        $from_userid = isset($_GET['from_userid']) ?
            trim($_GET['from_userid'])  : '';
        $to_userid = isset($_GET['to_userid']) ? 
            trim($_GET['to_userid'])  : '';
        $message = isset($_GET['message']) ?  
            trim($_GET['message'])  : '';
        $message_id = isset($_GET['message_id']) ?
            trim($_GET['message_id'])  : '';
        $group_id = isset($_GET['group_id']) ?
            trim($_GET['group_id'])  : '';

        $addlogobj->add_log("Send Chat Msg --- "
               ."From_userid=$from_userid, "
               ."To_userid=$to_userid, "
               ."Message=$message, "
               ."Message Id=$message_id, "
               ."Group Id=$group_id", $uniqid);

        $helperpobj->send($helperpobj->get_flix_send_chat_msg($from_userid, 
                                    $to_userid, 
                                    $message_id, 
                                    $group_id)); 

    } elseif ($_GET['mode'] == 'flix_create_chat_group') {
        $group_name = isset($_GET['group_name']) ?
            trim($_GET['group_name'])  : '';
        $addlogobj->add_log("Create Group --- "
               ."group_name=$group_name,", $uniqid
           );
        $groupidcreated = QB::table('flix_create_chat_group')
            ->insert(array(
                'group_name'  => $group_name,
            ));
        $helperpobj->send("Group Created | "
            ."groupid =$groupidcreated");

    } elseif ($_GET['mode'] == 'flix_group_add_users') {
        $group_id = isset($_GET['group_id']) ?
            trim($_GET['group_id'])  : '';
         $admin_id = isset($_GET['admin_id']) ?
             trim($_GET['admin_id'])  : '';
        $friends_id = isset($_GET['friends_id']) ?
            rtrim(ltrim(trim($_GET['friends_id']), "["), "]")  : '';
        $addlogobj->add_log("Group Add Users--- "
               ."group_id=$group_id,"
                ."admin_id=$admin_id,"
               ."friends_id=$friends_id", $uniqid);
        # Add admin first
        QB::table('flix_group_add_users')
        ->insert(array(
            'group_id' => trim($group_id),
            'friends_id'  => trim($admin_id),
        ));
        # Add friends he want to add
        $friend_id_array = explode(',', $friends_id);
        foreach($friend_id_array as $eachfrnd) { 
            if($eachfrnd){
                QB::table('flix_group_add_users')
                ->insert(array(
                    'group_id' => trim($group_id),
                    'friends_id'  => trim($eachfrnd),
                ));
            }
        }
        $helperpobj->send("Users:$friends_id added to Group:$group_id");

    } elseif ($_GET['mode'] == 'get_flix_admin_of_grp_usrs') {
        $admin_id = isset($_GET['admin_id']) ?
            trim($_GET['admin_id'])  : '';
        $group_id = isset($_GET['group_id']) ?
            trim($_GET['group_id'])  : '';
        $addlogobj->add_log("Get Group Users--- "
               ."group_id=$group_id,"
               ."admin_id=$admin_id,", $uniqid
               );
        $helperpobj->send($helperpobj->get_flix_admin_of_grp_usrs($admin_id, $group_id));

    } elseif ($_GET['mode'] == 'get_flix_adminwise_groups_usrs') {
        $admin_id = isset($_GET['admin_id']) ?
            trim($_GET['admin_id'])  : '';
        $addlogobj->add_log("Get Admin Wise Group Users--- "
               ."admin_id=$admin_id,", $uniqid
               );
        $helperpobj->send($helperpobj->get_flix_adminwise_groups_usrs($admin_id));

    }
    $helperpobj->send("Direct Access Not Allowed Man ! "
        ."Send Valid Parameters !");
}

#---=========================================================[   POST   ]==============================================---
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    if (!isset($_POST['mode'])) { 
        $helperpobj->send('Hey, Please send correct post value.');

    }

    if ($_POST['mode'] == 'flix_other_users_details') {
        # GET OTHER USER DETAILS 
        $skip_userid = isset($_POST['id']) ?
            trim($_POST['id'])  : '';
        $status = isset($_POST['status']) ?
            trim($_POST['status'])  : '';
        $friend_id = isset($_POST['friend_id']) ?
            trim($_POST['friend_id'])  : '';
        $addlogobj->add_log("Skip User --- "
               ."Userid=$skip_userid, "
               ."Friendid=$friend_id, "
               ."Status=$status", $uniqid);
        if (!$status) {
            $helperpobj->send($helperpobj->get_friendlist($skip_userid));
        }
        $helperpobj->send($helperpobj->send_accept_friend_request($skip_userid, 
            (int)$status, 
            $friend_id));
    } elseif ($_POST['mode'] == 'login') {

        #CHECK LOGIN
        $mobile_email = isset($_POST['mobile_email']) ?
            trim($_POST['mobile_email'])  : '';
        $password    = isset($_POST['password']) ? 
            trim($_POST['password'])  : '';
        #google,fb etc
        $type    = isset($_POST['type']) ? 
            trim($_POST['type'])  : '';
        $type_id    = isset($_POST['type_id']) ? 
            trim($_POST['type_id'])  : '';
        $gcm_regid     = isset($_POST['gcm_regid']) ? 
            trim($_POST['gcm_regid'])  : '';
        $addlogobj->add_log("Login --- mobile_email=$mobile_email, ".
                "Password =$password, ".
                "Type =$type".
                "GCMregid= $gcm_regid", $uniqid);
        //Check if existing arn_no value in db and user enterd both are same
        $get_value = $helperpobj->chk_valid_user($mobile_email, $password);
        if (!$get_value) {
            //Check If both arn't same , new exists in db
            $addlogobj->add_log("Login --- Incorrect Username or Password", $uniqid);
            $helperpobj->send('Incorrect Username or Password');
        }
        $id         = $get_value[0]->id;
        $first_name = $get_value[0]->first_name;
        $email      = $get_value[0]->email;
        $mobile     = $get_value[0]->mobile;
        $user_image = $get_value[0]->user_image;
        //Check If both arn't same , new exists in db
        $collected_string =  "id =>$id, "
                            ."name => $first_name, "
                            ."email=> $email, "
                            ."mobile => $mobile, "
                            ."user_image => $user_image";
        $addlogobj->add_log("Login --- 'message' => 'Login Successfull.',".
            " $collected_string", $uniqid);
        $helperpobj->send(array('message' => 'Login Successfull.',  
            'id' =>$id, 
            'name' => $first_name, 
            'email' => $email, 
            'mobile' => $mobile, 
            'user_image' => $user_image));

        $get_gcm_data = QB::table('gcm_users')
            ->select('gcm_regid')
            ->where('user_id', '=', $id);
        if(!$get_gcm_data->get()->gcm_regid) {
            QB::table('gcm_users')
                ->where('user_id', '=', $id)
                ->update(array(
                    'gcm_regid' => $gcm_regid 
            ));
        }
    } elseif ($_POST['mode'] == 'admin-login') {

        #CHECK ADMIN-LOGIN
        $username = isset($_POST['username']) ?
            trim($_POST['username'])  : '';
        $password    = isset($_POST['password']) ? 
            trim($_POST['password'])  : '';
        $addlogobj->add_log("Admin Login --- username=$username, ".
                "Password=$password", $uniqid);
        //Check if existing arn_no value in db and user enterd both are same
        $get_value = $helperpobj->chk_valid_admin_user($username, $password);
        if (!$get_value) {
            //Check If both arn't same , new exists in db
            $addlogobj->add_log("Login --- Incorrect Username or Password", $uniqid);
            $helperpobj->send('Incorrect Username or Password');
        }
        $id = 1;
        //Check If both arn't same , new exists in db
        $addlogobj->add_log("Login --- "
               ."'message' => 'Login Successfull.', "
               ."'id' =>$id", $uniqid);
        $helperpobj->send(array('message' => 'Login Successfull.', 
                   'id' => $id));

    } elseif ($_POST['mode'] == 'dashboard-userlist') {

        # DASHBOARD-USERLIST
        $get_all_data = QB::table('flix_login')
                            ->select('*');
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        $helperpobj->send($get_all_data);

    } elseif ($_POST['mode'] == 'signup') {

        #SIGN UP
        $first_name    = isset($_POST['first_name']) ?
            trim($_POST['first_name'])  : '';
        $mobile     = isset($_POST['mobile']) ?
            trim($_POST['mobile'])  : '';
        $email     = isset($_POST['email']) ?
            trim($_POST['email'])  : '';
        $password = isset($_POST['password']) ? 
            trim($_POST['password'])  : $helperpobj->send("Password cannot be empty !!!");
        $gcm_regid = isset($_POST['gcm_regid']) ? 
            trim($_POST['gcm_regid'])  : '';
        $type    = isset($_POST['type']) ? 
            trim($_POST['type'])  : '';
        $type_id = isset($_POST['type_id']) ? 
            trim($_POST['type_id'])  : '';
        if (!$mobile and !$email) {
            $addlogobj->add_log("Both mobile and email cannot be empty !!!");
            $helperpobj->send("Both mobile and email cannot be empty !!!");
        }
        $addlogobj->add_log("Register --- "
               ."firstname: $first_name, "
               ."mobile: $mobile, "
               ."email: $email,  "
               ."type: $type,  "
               ."type_id: $type_id,  "
               ."password:$password, "
               ."gcm_regid:$gcm_regid", $uniqid);

        if (!$type and $helperpobj->chk_already_reg_user($mobile, $email)) {
            //Check If both arn't same , new exists in db
            $addlogobj->add_log("Register --- Username or Password Already Exists", $uniqid);
            $helperpobj->send("Email and Mobile Already Used");
        }
        $login_id = QB::table('flix_login')
            ->insert(array(
                'first_name'  => $first_name,
                'mobile'      => $mobile,
                'email'       => $email,
                'type'        => $type,
                'type_id'        => $type_id,
                'password'    => $password,
            ));
        $gcm_id = QB::table('gcm_users')
            ->insert(array(
                'user_id'      => $login_id,
                'gcm_regid'   => $gcm_regid,
                'password'      => $password,
            ));
        $profile_id = QB::table('flix_profiles')
            ->insert(array(
                'user_id'      => $login_id,
                'name'  => $first_name,
            ));
        QB::table('flix_profiles_raw_images')
            ->insert(array(
                'user_id'    => $login_id,
            ));
        QB::table('flix_profiles_raw_videos')
            ->insert(array(
                'user_id'    => $login_id,
            ));
        QB::table('flix_profiles_raw_audios')
            ->insert(array(
                'user_id'    => $login_id,
            ));
        $array_send = array("message" => "Sign Up Successfull. "
                            ."You can now login with your mobile "
                            ."and first name.", 
                            "id" => $login_id, 
                            "name" => $first_name, 
                            "email" => $email, 
                            "mobile" => $mobile, 
                            "user_image" => '');
        $addlogobj->add_log("Register --- Sign Up Successfull. You can "
            ."now login with your mobile and first name.',"
            .json_encode($array_send), $uniqid);
        $helperpobj->send($array_send);

    } elseif ($_POST['mode'] == 'profilesignup') {

        #PROFILE SIGNUP
        $user_id    = isset($_POST['user_id']) ?
            $_POST['user_id']  : '';
        $occupation = isset($_POST['occupation']) ?
            $_POST['occupation']  : '';
        $permanent_address = isset($_POST['permanent_address']) ?
            $_POST['permanent_address']  : '';
        $currently_living_address = isset($_POST['currently_living_address']) ?
            $_POST['currently_living_address']  : '';
        $age        = isset($_POST['age']) ?
            $_POST['age']  : '';
        $status     = isset($_POST['status']) ?
            $_POST['status']  : '';
        $person_profile_description  = isset($_POST['person_profile_description']) ?
            $_POST['person_profile_description']  : '';

        $get_gcm_data = QB::table('flix_login')
            ->select('first_name')
            ->select('last_name')
            ->where('id', '=', $user_id);
        $name = $get_gcm_data->get()
            ->first_name.' '.$get_gcm_data
            ->get()
            ->last_name;
        $inserted_id = QB::table('flix_profiles')
            ->insert(array(
                'user_id'    => $user_id,
                'occupation' => $occupation,
                'name'       => $name,
                'permanent_address' => $permanent_address,
                'age'               => $age,
                'status'            => $status,
                'currently_living_address'   => $currently_living_address,
                'person_profile_description' => $person_profile_description,
            ));

        $addlogobj->add_log("Profile --- "
            ."'user_id': $user_id  ,"
            ."'occupation': $occupation, "
            ."'location': $location, "
            ."'age': $age, "
            ."'status': $status,"
            ."'followers': $followers, "
            ."'achievement':$achievement , "
            ."'recommendations': $recommendations, "
            ."'workingwith':$workingwith,"
            ."'userimage':$userimage, "
            ."'profile_text':$profile_text", $uniqid);
        $helperpobj->send(array("message" => "Profile Sign Up Successfull."
            ." Login with your mobile and first name.", 
            "id" => $inserted_id, "occupation" => $profession));
    } elseif ($_POST['mode'] == 'editprofile') {

        # EDIT PROFILE
        if (!isset($_POST['id'])) { 
            $helperpobj->send("Direct Acces Not Allowed Man ! Send Valid Parameters !");
        }
        $user_id = $_POST['id'];
        $addlogobj->add_log("Edit Profile --- Id =$user_id", $uniqid );

        $get_all_data = QB::table('flix_profiles')->select('flix_profiles.*')
            ->select('flix_profiles_raw_images.image_path')
            ->select('flix_profiles_raw_videos.video_path')
            ->select('flix_profiles_raw_audios.audio_path')
            ->join('flix_profiles_raw_images', 
            'flix_profiles_raw_images.user_id', '=', 'flix_profiles.user_id')
            ->join('flix_profiles_raw_videos', 
            'flix_profiles_raw_videos.user_id', '=', 'flix_profiles.user_id')
            ->join('flix_profiles_raw_audios', 
            'flix_profiles_raw_audios.user_id', '=', 'flix_profiles.user_id')
            ->where('flix_profiles.user_id', '=', $user_id);

        if($get_all_data->count()) {
            $exclude_index = array_shift($get_all_data->get());
            $helperpobj->send($exclude_index);
        }
        if(!$get_all_data->count()) {
            $addlogobj->add_log("Edit Profile --- Invalid id.", $uniqid);
            $helperpobj->send('Invalid id.');
        }
    } elseif ($_POST['mode'] == 'updateprofile') {

        # UPDATE PROFILE
        $user_id    = isset($_POST['user_id']) ?
                            $_POST['user_id']  : '';
        $occupation = isset($_POST['occupation']) ?
                            $_POST['occupation']  : '';
        $permanent_address   = isset($_POST['permanent_address']) ?
                            $_POST['permanent_address']  : '';
        $currently_living_address   = isset($_POST['currently_living_address']) ?
                            $_POST['currently_living_address']  : '';
        $age    = isset($_POST['age']) ?
                        $_POST['age']  : '';
        $status = isset($_POST['status']) ?
                            $_POST['status']  : '';
        $person_profile_description  = isset($_POST['person_profile_description']) ?
                                             $_POST['person_profile_description']  : '';
        $achievements = isset($_POST['achievements']) ?
                              $_POST['achievements']  : '';
        $recommendations = isset($_POST['recommendations']) ?
                                 $_POST['recommendations']  : '';
        $awards  = isset($_POST['awards']) ?
                         $_POST['awards']  : '';
        $working_with_person  = isset($_POST['working_with_person']) ?
                                      $_POST['working_with_person']  : '';
        $image_path  = isset($_POST['image_path']) ?
                             $_POST['image_path']  : '';
        $video_path  =  '';
        $audio_path  =  '';
        $profile_image  = '';
        $name  = isset($_POST['name']) ?
            $_POST['name']  : '';
        if (strlen($person_profile_description) < 50) {
            $helperpobj->send("Atleast 50 chars description mandatory");
        }

        if(!$name) {
            $get_username_frm_usrid = QB::table('flix_login')
                                        ->select('first_name')
                                        ->where('id', '=', $user_id);
            $name = array_shift($get_username_frm_usrid->get())->first_name;
        }
        if($name) {
            QB::table('flix_login')
                ->where('id', $user_id)->update(array(
                    'first_name' => $name,
                ));
        }
        $addlogobj->add_log("UserId: $user_id, "
               ."Name:$name, "
               ."Occupation: $occupation, "
               ."Permanent Address: $permanent_address, "
               ."Currently Living Address: $currently_living_address, "
               ."Age: $age, "
               ."Status: $status, "
               ."Person Profile Description: $person_profile_description, "
               ."Achievements: $achievements, "
               ."Recommendation: $recommendations, "
               ."Awards: $awards, "
               ."Working With Person: $working_with_person, "
               ."Image Path: $image_path, "
               ."Video Path: $video_path, "
               ."Audio Path: $audio_path, "
               ."Profile image: $profile_image", $uniqid);
        if (isset($_FILES['image_path']['name'])) {
            $target_path1 = "images_upload/";
            $image_path = $target_path1 . basename($_FILES['image_path']['name']);
            if(!move_uploaded_file($_FILES['image_path']['tmp_name'], 
                                   $image_path)) {
                echo "There was an error uploading the file, please try again!";
                echo "filename: " .  basename( $_FILES['image_path']['name']);
            }
        }
        if (isset($_FILES['profile_image']['name'])) {
            $target_path1 = "images_upload/";
            $profile_image = $target_path1 . basename($_FILES['profile_image']['name']);
            if(!move_uploaded_file($_FILES['profile_image']['tmp_name'], 
                                   $profile_image)) {
                echo "There was an error uploading the profile file, please try again!";
                echo "filename: " .  basename( $_FILES['profile_image']['name']);
            }
        }
        QB::table('flix_profiles')
            ->where('user_id', $user_id)->update(array(
                'occupation' => $occupation,
                'name'       => $name,
                'permanent_address' => $permanent_address,
                'age'               => $age,
                'status'            => $status,
                'user_image' => $profile_image,
                'currently_living_address'   => $currently_living_address,
                'person_profile_description' => $person_profile_description,
                'achievements' => $achievements,
                'recommendations' => $recommendations,
                'awards' => $awards,
                'working_with_person' => $working_with_person,
            ));

        QB::table('flix_profiles_raw_images')
            ->insert(array(
                'image_path' => $image_path,
                'user_id' => $user_id,
            ));
        QB::table('flix_profiles_raw_images')
            ->insert(array(
                'image_path' => $profile_image,
                'user_id' => $user_id,
            ));
        if (isset($_FILES['audio_path']['name'])) {
            $target_path1 = "audios_upload/";
            $audio_path = $target_path1 . basename( $_FILES['audio_path']['name']);
            if(!move_uploaded_file($_FILES['audio_path']['tmp_name'], 
                                   $audio_path)) {
                echo "There was an error uploading the audio file, please try again!";
                echo "filename: " .  basename( $_FILES['audio_path']['name']);
            }
        }
        QB::table('flix_profiles_raw_audios')
            ->insert(array(
                'audio_path' => $audio_path,
                'user_id' => $user_id,
            ));
        if (isset($_FILES['video_path']['name'])) {
            $target_path1 = "videos_upload/";
            $video_path = $target_path1 . 
                          basename($_FILES['video_path']['name']);
            if(!move_uploaded_file($_FILES['video_path']['tmp_name'], 
                                          $video_path)) {
                echo "There was an error uploading the video file, please try again!";
                echo "filename: " .  basename( $_FILES['video_path']['name']);
            }
        }
        QB::table('flix_profiles_raw_videos')
            ->insert(array(
                'video_path' => $video_path,
                'user_id' => $user_id,
            ));
        $addlogobj->add_log("Update Profile --- Profile created ", $uniqid);
        $helperpobj->send("Profile created");
    } elseif ($_POST['mode'] == 'getnewsfeed') {

        if(isset($_POST['id'])) {
            $get_all_data = QB::table('flix_news_feed')
                ->select('*')
                ->where('lan_id', '=', $_POST['id']);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $helperpobj->send($exclude_index);	
            }
        }
    } elseif ($_POST['mode'] == 'getwhtstrending') {

        if(isset($_POST['id'])) {
            $get_all_data = QB::table('flix_whts_trending')
                ->select('*')
                ->where('lan_id', '=', $_POST['id']);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $helperpobj->send($exclude_index);	
            }
        }
    } elseif ($_POST['mode'] == 'lan_list') {

        $addlogobj->add_log("Lan List --- Lang ", $uniqid);
        echo get_lan_list();
    } elseif ($_POST['mode'] == 'flix_search') {

        if(isset($_POST['search'])){
            $send_search_array = [] ;
            $get_all_login = QB::table('flix_profiles')
                ->select('*')
                ->where('name', 'LIKE', "%".$_POST['search']."%");
            if($get_all_login->count()) {
                foreach ($get_all_login->get() as $a) {
                    $data['type'] = 'person';
                    $data['name'] = $a->name;
                    $data['person_profile_desc'] = $a->person_profile_description ;
                    $data['image'] = $a->user_image;
                    $data['date'] = $a->log_time;
                    $data['occupation'] = $a->occupation;
                    $data['status'] = $a->status;
                    $data['current_address'] = $a->currently_living_address;
                    $data['parmenent_address'] = $a->permanent_address;
                    $data['acheivement'] = $a->achievements;
                    $data['award'] = $a->awards;
                    $data['recommendations'] = $a->recommendations;
                    $data['working_with'] = $a->working_with_person;
                    $data['age'] = $a->age;
                    array_push($send_search_array,  $data);
                }
            }
            $get_all_news = QB::table('flix_news_feed')
                ->select('*')
                ->where('title', 'LIKE', "%".$_POST['search']."%");
            if($get_all_news->count()) {
                foreach ($get_all_news->get() as $a) {
                    $data['type'] = 'news';
                    $data['name'] = $a->title;
                    $data['person_profile_desc'] = $a->story ;
                    $data['image'] = $a->image;
                    $data['date'] = $a->pub_date;
                    $data['occupation'] = '';
                    $data['status'] = '';
                    $data['current_address'] = '';
                    $data['parmenent_address'] = '';
                    $data['acheivement'] = '';
                    $data['award'] = '';
                    $data['recommendations'] = '';
                    $data['working_with'] = '';
                    $data['age'] = '';
                    array_push($send_search_array,  $data);
                }
            }
            $helperpobj->send($send_search_array);
        }
    } elseif ($_POST['mode'] == 'flix_get_user_raw_files') {

        $user_id = $_POST['id'];
        $get_all_data = QB::table('flix_profiles')
            ->select('flix_profiles_raw_images.image_path')
            ->select('flix_profiles_raw_videos.video_path')
            ->select('flix_profiles_raw_audios.audio_path')
            ->join('flix_profiles_raw_images', 
                   'flix_profiles_raw_images.user_id', '=', 
                   'flix_profiles.user_id')
            ->join('flix_profiles_raw_videos', 
                   'flix_profiles_raw_videos.user_id', '=', 
                   'flix_profiles.user_id')
            ->join('flix_profiles_raw_audios', 
                   'flix_profiles_raw_audios.user_id', '=', 
                   'flix_profiles.user_id')
            ->where('flix_profiles.user_id', '=', $user_id);

        if($get_all_data->count()) {
            $exclude_index = array_shift($get_all_data->get());
            $helperpobj->send($exclude_index);
        }
        if(!$get_all_data->count()) {
            $addlogobj->add_log("Flix Get User Raw Files --- Invalid id.", $uniqid);
            $helperpobj->send('Invalid id.');
        }
    } elseif ($_POST['mode'] == 'flix_get_user_raw_specific_files') {

        $user_id = $_POST['id'];
        $type = $_POST['type'];
        $b = [];
        if($type == 'image') {
            $get_all_data = QB::table('flix_profiles')
                ->select('flix_profiles.user_image')
                ->select('flix_profiles_raw_images.image_path')
                ->select('flix_profiles_raw_images.log_time')
                ->join('flix_profiles_raw_images', 
                       'flix_profiles_raw_images.user_id', '=', 
                       'flix_profiles.user_id')
                ->where('flix_profiles.user_id', '=', $user_id);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $counter=0;
                foreach($exclude_index as $a) {
                    if($a->image_path) {
                        $b[$counter]['image'] = $a->image_path;
                        $b[$counter]['name'] = basename($a->image_path);
                        $b[$counter]['date'] = $a->log_time;
                        $counter++;
                    }
                }
            }
            if(!$get_all_data->count()) {
                $addlogobj->add_log("Flix Get User Raw Specific Files Image --- Invalid id.", $uniqid);
                $helperpobj->send('Invalid id.');
            }
            # Added profile image
            $user_image = '';
            $user_logtime = '';
            $get_all_data = QB::table('flix_profiles')
                ->select('flix_profiles.user_image')
                ->select('flix_profiles.log_time')
                ->where('flix_profiles.user_id', '=', $user_id);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $user_image = $exclude_index[0]->user_image;
                $user_logtime = $exclude_index[0]->log_time;
                $counter=0;
            }
            if(!$get_all_data->count()) {
                $addlogobj->add_log("Flix Get User Raw Specific Files User Image --- Invalid id.", $uniqid);
                $helperpobj->send('Invalid id.');
            }
            $b[$counter+1]['image']= $user_image;
            $b[$counter+1]['name'] = basename($user_image);
            $b[$counter+1]['date'] = $user_logtime;
        }
        if($type == 'video') {
            $get_all_data = QB::table('flix_profiles')
                ->select('flix_profiles.user_image')
                ->select('flix_profiles_raw_videos.video_path')
                ->select('flix_profiles_raw_videos.log_time')
                ->join('flix_profiles_raw_videos', 
                        'flix_profiles_raw_videos.user_id', '=', 
                        'flix_profiles.user_id')
                ->where('flix_profiles.user_id', '=', $user_id);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $counter=0;
                foreach($exclude_index as $a) {
                    if($a->video_path) {
                        $b[$counter]['image'] = $a->video_path;
                        $b[$counter]['name'] = basename($a->video_path);
                        $b[$counter]['date'] = $a->log_time;
                        $counter++;
                    }
                }
            }
            if(!$get_all_data->count()) {
                $addlogobj->add_log("Flix Get User Raw Specific Files Video --- Invalid id.", $uniqid);
                $helperpobj->send('Invalid id.');
            }
        }
        if($type == 'audio') {
            $get_all_data = QB::table('flix_profiles')
                        ->select('flix_profiles.user_image')
                        ->select('flix_profiles_raw_audios.audio_path')
                        ->select('flix_profiles_raw_audios.log_time')
                        ->join('flix_profiles_raw_audios', 
                               'flix_profiles_raw_audios.user_id', '=', 
                               'flix_profiles.user_id')
                        ->where('flix_profiles.user_id', '=', $user_id);
            if($get_all_data->count()) {
                $exclude_index = $get_all_data->get();
                $counter=0;
                foreach($exclude_index as $a) {
                    if($a->audio_path) {
                        $b[$counter]['image'] = $a->audio_path;
                        $b[$counter]['name']  = basename($a->audio_path);
                        $b[$counter]['date']  = $a->log_time;
                        $counter++;
                    }
                }
            }
            if(!$get_all_data->count()) {
                $addlogobj->add_log("Flix Get User Raw Specific Files Audio --- Invalid id.", $uniqid);
                $helperpobj->send('Invalid id.');
            }
        }
        $helperpobj->send($b);
    } elseif ($_POST['mode'] == 'flix_send_chat_notification') {

        $user_id = $_POST['id'];
        $friend_id = $_POST['user_id'];
        $message = $_POST['message'];
        $helperpobj->send(send_chat_notification($friend_id, 
                                    $message, 
                                    $user_id, 
                                    $inbuit_func = 0));
    } elseif ($_POST['mode'] == 'flix_send_profile_match_notify') {

        # UPDATE PROFILE
        $user_id    = isset($_POST['user_id']) ?
                            $_POST['user_id']  : die("Userid is empty !!!");
        $addlogobj->add_log("Flix Send Profile Match Notify --- User id = $user_id.", $uniqid);
        send_profile_match_notify($user_id);
    } elseif ($_POST['mode'] == 'flix_get_todays_notifications') {

        # UPDATE PROFILE
        $user_id    = isset($_POST['user_id']) ?
                            $_POST['user_id']  : die("Userid is empty !!!");
        $currdate = date('Y-m-d');
            $get_all_login = QB::table('gcm_users_notifications')
                ->select('gcm_users_notifications.user_id')
                ->select('gcm_users_notifications.message')
                ->select('gcm_users_notifications.created_at')
                ->select('flix_login.first_name')
                ->select('flix_profiles.*')
                ->leftjoin('flix_profiles', 
                'gcm_users_notifications.user_id', '=', 'flix_profiles.user_id')
                ->leftjoin('flix_login', 
                'flix_login.id', '=', 'flix_profiles.user_id')
                ->where('gcm_users_notifications.created_at', 'LIKE', "$currdate%")
                ->where('gcm_users_notifications.user_id', '=', $user_id);
            $send_search_array = array();
            if($get_all_login->count()) {
                foreach ($get_all_login->get() as $a) {
                    $data['type'] = 'person';
                    $data['name'] = $a->first_name;
                    $data['notification'] = $a->message;
                    $data['person_profile_desc'] = $a->person_profile_description ;
                    $data['image'] = $a->user_image;
                    $data['date'] = $a->created_at;
                    $data['occupation'] = $a->occupation;
                    $data['status'] = $a->status;
                    $data['current_address'] = $a->currently_living_address;
                    $data['parmenent_address'] = $a->permanent_address;
                    $data['acheivement'] = $a->achievements;
                    $data['award'] = $a->awards;
                    $data['recommendations'] = $a->recommendations;
                    $data['working_with'] = $a->working_with_person;
                    $data['age'] = $a->age;
                    array_push($send_search_array, $data);
                }
            }
        $addlogobj->add_log("Flix Send Profile Match Notify --- User id = $user_id.", $uniqid);
        $helperpobj->send($send_search_array);
        #send_profile_match_notify($data);
    } elseif ($_POST['mode'] == 'flix_get_todays_notifications_news') {
            $send_search_array = [] ;
            $get_all_login = QB::table('flix_news_feed')
                ->select('*');
            if($get_all_login->count()) {
                foreach ($get_all_login->get() as $a) {
                    $data['type'] = 'news';
                    $data['title'] = $a->title;
                    $data['link'] = $a->link ;
                    $data['image'] = $a->image;
                    $data['pub_date'] = $a->pub_date;
                    $data['story'] = $a->story;
                    $data['lan_id'] = $a->lan_id;
                    array_push($send_search_array,  $data);
                }
            }
            $helperpobj->send($send_search_array);
    }
}
