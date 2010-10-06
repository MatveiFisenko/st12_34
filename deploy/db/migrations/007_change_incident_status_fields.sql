ALTER TABLE incident DROP COLUMN gibdd_sent;
ALTER TABLE incident DROP COLUMN prokuratura_sent;
ALTER TABLE incident ADD gibdd_state varchar(100) DEFAULT 'not_sent';
ALTER TABLE incident ADD prokuratura_state varchar(100) DEFAULT 'not_sent';

