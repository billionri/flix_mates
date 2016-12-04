<?php

namespace Flixmates\Config;
defined('the_lang_list') or die('Direct Access Not Allowed.');

class LANLIST {

    public function __construct()
    {
    }

    public function get_lan_list() {
        $data['response'] = 'success';
        $data['userdata'][0]['id'] = '1';
        $data['userdata'][0]['language_name'] = 'English';
        $data['userdata'][1]['id'] = '2';
        $data['userdata'][1]['language_name'] = 'Hindi(\u0939\u093f\u0902\u0926\u0940)';
        $data['userdata'][2]['id'] = '3';
        $data['userdata'][2]['language_name'] = 'Marathi(\u092e\u0930\u093e\u0920\u0940)';
        $data['userdata'][3]['id'] = '4';
        $data['userdata'][3]['language_name'] = 'Gujarati(\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0)';
        $data['userdata'][4]['id'] = '5';
        $data['userdata'][4]['language_name'] = 'Bengali(\u09ac\u09be\u0999\u09be\u09b2\u09bf)';
        $data['userdata'][5]['id'] = '6';
        $data['userdata'][5]['language_name'] = 'Kannada(\u0c95\u0ca8\u0ccd\u0ca8\u0ca1)';
        $data['userdata'][6]['id'] = '7';
        $data['userdata'][6]['language_name'] = 'Tamil(\u0ba4\u0bae\u0bbf\u0bb4\u0bcd)';
        $data['userdata'][7]['id'] = '8';
        $data['userdata'][7]['language_name'] = 'Telugu(\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41)';
        $data['userdata'][8]['id'] = '9';
        $data['userdata'][8]['language_name'] = 'Malayalam(\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02)';
        return stripslashes(json_encode($data, JSON_UNESCAPED_SLASHES));
    }
}
