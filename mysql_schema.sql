CREATE TABLE flix_login (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    mobile VARCHAR(100),
    email VARCHAR(100),
    type VARCHAR(100),
    type_id VARCHAR(100),
    password VARCHAR(100) NOT NULL,
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);


CREATE TABLE flix_profiles (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(200),
    name VARCHAR(200),
    occupation VARCHAR(200),
    permanent_address text,
    currently_living_address text,
    age VARCHAR(100),
    status VARCHAR(100),
    user_image VARCHAR(100),
    achievements VARCHAR(100),
    awards VARCHAR(100),
    recommendations VARCHAR(100),
    working_with_person VARCHAR(100),
    person_profile_description VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_profiles_raw_profile_images (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(300),
    profile_image VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_profiles_raw_images (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(300),
    image_path VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_profiles_raw_audios (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(300),
    audio_path VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_profiles_raw_videos (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(300),
    video_path VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_news_feed (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title text,
    link text,
    image text,
    pub_date VARCHAR(50),
    story text,
    lan_id int ,
    is_used int ,
    reg_date TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_whts_trending (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title text,
    link text,
    image text,
    pub_date VARCHAR(50),
    story text,
    lan_id int ,
    is_used int ,
    reg_date TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_chat_id_map (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id VARCHAR(300),
    friend_id VARCHAR(300),
    status VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_send_chat_msg (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    from_id VARCHAR(300),
    to_id VARCHAR(300),
    group_id VARCHAR(300),
    message VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_create_chat_group (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    group_name VARCHAR(300),
    group_admin_id VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE flix_group_add_users (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    group_id VARCHAR(300),
    admin_id VARCHAR(300),
    friends_id VARCHAR(300),
    log_time TIMESTAMP DEFAULT   CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS gcm_users (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id VARCHAR(200),
  gcm_regid text,
  password varchar(255) ,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS gcm_users_notifications (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id VARCHAR(200),
  message text,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP 
);

