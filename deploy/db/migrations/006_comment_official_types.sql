ALTER TABLE incident ADD gibdd_sent BOOLEAN DEFAULT 0;
ALTER TABLE incident ADD prokuratura_sent BOOLEAN DEFAULT 0;
ALTER TABLE comment DROP COLUMN comment_direction;
ALTER TABLE comment ADD comment_official_type varchar(100) DEFAULT NULL;
