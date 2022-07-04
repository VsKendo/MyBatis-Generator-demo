DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    user_id            varchar(18) NOT NULL,
    password           varchar(64) NOT NULL COMMENT '密码',
    user_email         varchar(40) COMMENT '邮箱',
    disabled           TINYINT(1) COMMENT '是否被禁用',
    last_update_date   datetime
) COMMENT ='users';