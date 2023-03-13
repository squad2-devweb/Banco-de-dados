LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/plays.csv'
INTO TABLE plays
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (catch,id,player);
   LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clears.csv'
INTO TABLE clears
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (catch,id,player);
   LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/likes.csv'
INTO TABLE likes
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (catch,id,player);
   LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/records.csv'
INTO TABLE records
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (catch,id,player,timeRecord);