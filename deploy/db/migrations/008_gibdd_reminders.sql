INSERT INTO `scheduler` VALUES (6,'GIBDD Reminders',1284499652,-1,-1,0,0,'s_gibdd_reminders',1);
ALTER TABLE comment ADD comment_gibdd_reminder_date date DEFAULT NULL;
ALTER TABLE comment ADD comment_gibdd_reminder_sent bool DEFAULT 0;

