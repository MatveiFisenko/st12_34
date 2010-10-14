ALTER TABLE alert ADD alert_incident_id BIGINT(20) DEFAULT NULL;
ALTER TABLE comment ADD comment_alert_status TINYINT(4) NOT NULL DEFAULT 0;
