#!/bin/bash

mysql -hlocalhost -u root -pnasopada039 -e "use flix;truncate flix_send_chat_msg;truncate flix_chat_id_map;truncate flix_login;truncate flix_profiles;truncate gcm_users;truncate flix_profiles_raw_audios;truncate flix_profiles_raw_videos;truncate flix_profiles_raw_images;truncate flix_group_add_users;truncate flix_create_chat_group"
