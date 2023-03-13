LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/courses.csv'
INTO TABLE courses
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
    (id,difficulty,gameStyle,maker,title,thumbnail,image,creation);
    LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/players.csv'
INTO TABLE players
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (id,image,flag,name);
     LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/course-meta.csv'
INTO TABLE course_meta
FIELDS TERMINATED BY '	'
ENCLOSED BY '"'
LINES TERMINATED BY '/n'
    IGNORE 1 rows
   (catch,id,firstClear,tag,stars,players,tweets,clears,attempts,clearRate);
   
   
   