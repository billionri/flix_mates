<?php

################################################################
# piece of code
# Is a webservice to helps ws.php to handle the CRUD operations done in php. 
#
# @author Rashid Alam <alam.rashid039@gmail.com>
#
################################################################

namespace Flixmates\Config;
defined('thehelper_functions') or die('Direct Access Not Allowed.');


class HELPERFUNCTIONS {

    public function __construct()
    {
    }

    public function send($data, $d = true) {
        if (is_array($data)) {
            //$data = json_encode($data);
            $data = stripslashes(json_encode(
                $data, 
                JSON_UNESCAPED_SLASHES));
        } else {
            //$data = json_encode(array('message' => $data));
            $data = stripslashes(json_encode(
                array('message' => $data), 
                JSON_UNESCAPED_SLASHES));
        }

        if ($d) {
            die($data);
        }

        return $data;
    }

    public function chk_valid_user($mobile_email, $password) {
        $get_all_data = \QB::query("select l.*, p.user_image from flix_login l ".
            "left join flix_profiles p on l.id = p.user_id ".
            "where (l.mobile = ? OR l.email = ? ) and l.password = ? ", 
            array($mobile_email, $mobile_email, $password))->get();
        if(!$get_all_data) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        return $get_all_data;
    }

    public function get_friendlist($skip_userid) {
        # get all userids list
        $user_ids_withid_key = \QB::query("select id from  flix_login "."where id != ?", 
            array($skip_userid))->get();
        $user_idso = [];
        foreach($user_ids_withid_key as $u) {
            $user_idso[] = $u->id;
        }
        # get joined user-frnd-status data
        $get_all_uniq_users = \QB::query("select distinct(c.user_id) as frnd_id, ".
            "l.first_name as name, l.email, img.user_image ".
            "from flix_chat_id_map as c ".
            "left join flix_login as l on l.id = c.user_id ".
            "left join flix_profiles as img on l.id = img.user_id ".
            "where  c.user_id != ? ", array($skip_userid))->get();
        $send_friendlist = [];
        $counter = 0;  # set counter
        $chk_uniq_users = isset($get_all_uniq_users[0]->frnd_id); # chk if any joined user-frnd-status data exits
        if (!$chk_uniq_users) { # No joined user-frnd-status data exits, Make your own array with all status as zero (fresh user)
            $us_prof_arr = get_userlist_profilesimages_without_userid($skip_userid);
            foreach($us_prof_arr as $userids) {
                if (isset($userids->id)) {
                    $send_friendlist[$counter]['name'] = $userids->first_name;
                    $send_friendlist[$counter]['email'] = $userids->email;
                    $send_friendlist[$counter]['image_path'] = $userids->user_image;
                    $send_friendlist[$counter]['status'] = 0;
                    $send_friendlist[$counter]['id'] = $userids->id;
                    $counter ++;
                }
            }
            return $send_friendlist;
        }
        # if Yes joined user-frnd-status data exits,
        $query_user_ids = [];
        foreach ($get_all_uniq_users as $userids) {
            $query_user_ids[] = $userids->frnd_id;
            $send_friendlist[$counter]['name'] = $userids->name;
            $send_friendlist[$counter]['email'] = $userids->email;
            $send_friendlist[$counter]['image_path'] = $userids->user_image;

            $get_mappings =  \QB::query("select  status, user_id, friend_id from ".
                "flix_chat_id_map where user_id = ? and friend_id = ?", 
                array($skip_userid, $userids->frnd_id))->get();
            if (!isset($get_mappings[0]->status)) {
                $send_friendlist[$counter]['status'] = 0;
                $send_friendlist[$counter]['id'] = $userids->frnd_id;
                $counter ++;
                continue;
            }
            $send_friendlist[$counter]['status'] =  $get_mappings[0]->status;
            $send_friendlist[$counter]['id'] =  $get_mappings[0]->friend_id;
            $counter ++;
        }
        $diff = array_diff($user_idso, $query_user_ids);
        if ($diff) {
            foreach($diff as $userids) {
                $us_prof_arr = get_userlist_profilesimages_with_userid($userids);
                if (isset($us_prof_arr[0]->id)) {
                    $send_friendlist[$counter]['name'] = $us_prof_arr[0]->first_name;
                    $send_friendlist[$counter]['email'] = $us_prof_arr[0]->email;
                    $send_friendlist[$counter]['user_image'] = $us_prof_arr[0]->user_image;
                    $send_friendlist[$counter]['status'] = 0;
                    $send_friendlist[$counter]['id'] = $us_prof_arr[0]->id;
                    $counter ++;
                }
            }
        }
        return $send_friendlist;
    }

    public function send_accept_friend_request($skip_userid, $status, $friend_id) {
        if (!$skip_userid or !$friend_id) {
            send('Userid or Friendid is empty');
        }
        if ($status == 	1) {
            $gcm_id = \QB::table('flix_chat_id_map')
                ->insert(array(
                    'user_id'      => $skip_userid,
                    'status'   => '2',
                    'friend_id'      => $friend_id,
                ));
            $gcm_id = \QB::table('flix_chat_id_map')
                ->insert(array(
                    'user_id'      => $friend_id,
                    'status'   => $status,
                    'friend_id'      => $skip_userid,
                ));
            send_chat_notification($friend_id, ' has sent you chat request', $skip_userid, $inbuit_func = 3);
        }
        if ($status == 	3) {
            \QB::table('flix_chat_id_map')
                ->where('user_id', $skip_userid)->where('friend_id', $friend_id)
                ->update(array(
                    'status'   => $status 
                ));
            \QB::table('flix_chat_id_map')
                ->where('user_id', $friend_id)->where('friend_id', $skip_userid)
                ->update(array(
                    'status'   => $status 
                ));
            send_chat_notification($skip_userid, ' has accepted your chat request', $friend_id, $inbuit_func = 2);
        }
        return 'Request Processing Done';
    }

    public function chk_valid_admin_user($username, $password) {
        if (strtolower(trim($username)) == 'admin' && strtolower(trim($password)) == 'admin'){ 
            return 1;
        }
        return 0;
    }

    public function chk_already_reg_user($mobile, $email) {
        $get_all_data = \QB::table('flix_login')
            ->select('id')
            ->where('email', '=', $email)
            ->where('mobile', '=', $mobile);
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        return 1;
    }

    public function get_userlist() {
        $get_all_data = \QB::table('flix_login')->select('*');
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        send($get_all_data);
    }

    public function get_admin_grps($admin_id) {
        $get_all_data = \QB::table('flix_group_add_users')
            ->select('flix_group_add_users.friends_id')
            ->select('flix_group_add_users.group_id')
            ->select('flix_create_chat_group.*')
            ->join('flix_create_chat_group', 
            'flix_group_add_users.group_id', '=', 'flix_create_chat_group.id')
            ->where('flix_group_add_users.friends_id', '=', $admin_id)
            ->groupBy('flix_group_add_users.group_id');
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        return $get_all_data->get();
    }

    public function get_grps_users($group_id) {
        $get_all_data = \QB::table('flix_group_add_users')
            ->select('*')
            ->where('group_id', '=', $group_id);
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
            return 0;
        }
        return $get_all_data->get();
    }

    public function get_userlist_profilesimages_without_userid($user_id) {
        global $uniqid;
        $get_all_data = \QB::table('flix_login')
            ->select('flix_login.id')
            ->select('flix_login.first_name')
            ->select('flix_login.email')
            ->select('flix_profiles.user_image')
            ->join('flix_profiles', 
            'flix_profiles.user_id', '=', 'flix_login.id')
            ->where('flix_login.id', '!=', $user_id)->get();
        if(!$get_all_data) {
            add_log("Get Userlist Profilesimages Without Userid --- Invalid id.", $uniqid);
            send('Empty result');
        }
        return $get_all_data;
    }


    public function get_userlist_profilesimages_with_userid($user_id) {
        global $uniqid;
        $get_all_data = \QB::table('flix_login')
            ->select('flix_login.id')
            ->select('flix_login.first_name')
            ->select('flix_login.email')
            ->select('flix_profiles.user_image')
            ->join('flix_profiles', 
            'flix_profiles.user_id', '=', 'flix_login.id')
            ->where('flix_login.id', '=', $user_id)->get();
        if(!$get_all_data) {
            add_log("Get Userlist Profilesimages With Userid --- ".
                "Invalid id (Ignore this error if req is for grp chat).", $uniqid);
            #send('Empty result'); // Skiped for grp id empty
        }
        return $get_all_data;
    }

    public function flix_send_chat_msg($skip_userid, $friend_id, $message, $group_id) {
        return \QB::table('flix_send_chat_msg')
            ->insert(array(
                'from_id'      => $skip_userid,
                'to_id'   => $friend_id,
                'message'      => $message,
                'group_id'      => $group_id,
            ));
    }

    public function get_flix_send_chat_msg($from_userid, $to_userid, $message_id=0, $groupid) {
        if (!$groupid) {
            $get_all_flix_send_chat_msg = \QB::query("select id as message_id, ".
                "from_id, to_id, message from flix_send_chat_msg ".
                "where ((from_id = ? and to_id=?) or ".
                "(from_id = ? and to_id = ?)) and id > ?", 
                array($from_userid, 
                $to_userid, 
                $to_userid, 
                $from_userid, 
                $message_id))->get();
        }
        if ($groupid) {
            $get_all_flix_send_chat_msg = \QB::query("select id as message_id, from_id, to_id, ".
                "message from flix_send_chat_msg where (group_id = ? and id > ?)", 
                array($groupid, $message_id))->get();
        }
        if(!$get_all_flix_send_chat_msg) {
            //Check If both arn't same , new exists in db
            return "No records found";
        }
        $from_profile_details = get_userlist_profilesimages_with_userid($from_userid);
        $to_profile_details = get_userlist_profilesimages_with_userid($to_userid);
        $send_response = [];
        $counter = 0 ;
        foreach($get_all_flix_send_chat_msg as $read) {
            $send_response[$counter]['message_id'] = $read->message_id;
            $send_response[$counter]['message'] = $read->message;
            $send_response[$counter]['from_id'] = $read->from_id;
            $send_response[$counter]['to_id'] = $read->to_id;
            $send_response[$counter]['from_name'] = isset($from_profile_details[0]->first_name) ? 
                $from_profile_details[0]->first_name : '' ;
            $send_response[$counter]['to_name'] = isset($to_profile_details[0]->first_name) ? 
                $to_profile_details[0]->first_name : '' ;
            $send_response[$counter]['from_image'] = isset($from_profile_details[0]->user_image) ? 
                $from_profile_details[0]->user_image : '' ;
            $send_response[$counter]['to_image'] = isset($to_profile_details[0]->user_image) ?
                $to_profile_details[0]->user_image : '' ;

            $counter ++;
        }
        return array("response"=>"success","userdata"=>$send_response);
    }

    public function get_flix_adminwise_groups_usrs($admin_id) {
        $get_grp_list = (array)$this->get_admin_grps($admin_id);
        if (!$get_grp_list or $get_grp_list=='[0]' or !$get_grp_list[0]) {
            //Check If both arn't same , new exists in db
            return array("response"=>"failed","userdata"=>"No data. found.");
        }
        $send_response = [];
        $grpcounter = 0;

        foreach($get_grp_list as $eachgrp) {
            $send_response[$grpcounter]["group_id"] = $eachgrp->id;
            $send_response[$grpcounter]["group_name"] = $eachgrp->group_name;
            $send_response[$grpcounter]["group_admin_id"] = $eachgrp->group_admin_id;
            $send_response[$grpcounter]["grp_created_at"] = $eachgrp->log_time;
            $grpuserlist = get_grps_users($eachgrp->group_id);
            if (!count($grpuserlist) or !$grpuserlist) {
                $grpcounter++;
                continue;
            }
            foreach($grpuserlist as $eachusers_id) {
                $send_response[$grpcounter][0][] = get_userlist_profilesimages_with_userid($eachusers_id->friends_id)[0];
            }
            $grpcounter++;
        }
        return array("response"=>"success","userdata"=>$send_response);
    }


    public function get_flix_admin_of_grp_usrs($admin_id, $group_id) {
        $get_join_records = \QB::query("select crcgrp.id as group_id, crcgrp.group_name,".
            "crcgrp.group_admin_id, l.first_name, addgu.friends_id, ".
            "fri.user_image from flix_group_add_users as addgu ".
            "left join flix_create_chat_group as crcgrp on crcgrp.id = addgu.group_id ".
            "left join flix_login as l on l.id = addgu.friends_id ".
            "left join flix_profiles as fri on fri.user_id = addgu.friends_id ".
            "where crcgrp.group_admin_id = ? and crcgrp.id = ?", 
            array($admin_id, $group_id))->get();

        if(!$get_join_records) {
            //Check If both arn't same , new exists in db
            return "No users were added.";
        }
        return array("response"=>"success","userdata"=>$get_join_records);
    }

    public function send_chat_notification($friend_id, $message, $user_id, $inbuit_func) {
        if ($inbuit_func) {
            if ($inbuit_func == 2) {
                list($friend_id, $user_id) = array($user_id, $friend_id);
            }
            $get_all_data = \QB::table('flix_login')
                ->select('flix_login.first_name')
                ->select('flix_profiles.user_image')
                ->join('flix_profiles', 'flix_profiles.user_id', '=', 'flix_login.id', 'LEFT')
                ->where('flix_login.id', '=', $user_id);
            if($get_all_data->count()) {
                $user_name = $get_all_data->get()[0]->first_name;
                $message = $user_name.$message;
            }
            if(!$get_all_data->count()) {
                add_log("Send Chat Notification --- Invalid friend_id.", $uniqid);
                send('Send Chat Notification --- Invalid friend_id.');
            }
        }
        include_once 'admin/gcm_server_php/GCM.php';

        $gcm = new GCM();

        $get_gcm_data = \QB::table('gcm_users')
            ->select('gcm_regid')
            ->where('id', '=', $friend_id);
        if(!$get_gcm_data->get()[0]->gcm_regid) {
            send('Internal problem');
        }
        $gcm_id = \QB::table('gcm_users_notifications')
            ->insert(array(
                'user_id'      => $friend_id,
                'message'   => $message,
                'created_at'   => date("Y-m-d h:i:s"),
            ));
        $registatoin_ids = array($get_gcm_data->get()[0]->gcm_regid);
        #add_log($get_gcm_data->get()[0]->gcm_regid.$message);
        $message = array("flix" => $message);

        $result = $gcm->send_notification($registatoin_ids, $message);
        return $get_all_data;
    }

    public function send_profile_match_notify($userid) {
        #$get_join_records = \QB::query("SELECT a.id as first_userid, b.id as second_userid, a.occupation, a.achievements, a.awards , ".
        #                              "a.recommendations, a.working_with_person FROM flix_profiles a ".
        #                              "INNER join flix_profiles as b ON  ".
        #                              "a.occupation = b.occupation OR ".
        #                              "a.achievements = b.achievements OR ".
        #                              "a.awards = b.awards  OR ".
        #                              "a.recommendations = b.recommendations OR ".
        #                              "a.working_with_person = b.working_with_person ".
        #                              "where (a.occupation || a.achievements || a.awards || a.recommendations ".
        #                              "|| a.working_with_person IS NOT NULL ")->get();//and b.id = $userid and not (a.id = $userid and b.id = $userid)")->get();

        #if(!$get_join_records) {
        #    //Check If both arn't same , new exists in db
        #    return "No match found.";
        #}
        #foreach ($get_join_records as $userids) {
        #    send_chat_notification($userids->second_userid, ' may know you !!', $userids->first_userid, $inbuit_func = 1);
        #}
    }
}

