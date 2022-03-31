

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course` (`dept_id`),
  CONSTRAINT `course` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO course VALUES("c1","computer science","d1");
INSERT INTO course VALUES("c2","information technology","d2");
INSERT INTO course VALUES("c3","computer technology","d3");
INSERT INTO course VALUES("c4","actuarial science","d4");
INSERT INTO course VALUES("c5","applied statistics","d5");
INSERT INTO course VALUES("c6","mathematics and computer science","d6");
INSERT INTO course VALUES("c7","medicine and surgery","d7");



CREATE TABLE `department` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `sch_id` varchar(10) NOT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `dept_id` (`dept_id`),
  KEY `department` (`sch_id`),
  CONSTRAINT `department` FOREIGN KEY (`sch_id`) REFERENCES `school` (`sch_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO department VALUES("d1","computer science","s1");
INSERT INTO department VALUES("d2","information technology","s1");
INSERT INTO department VALUES("d3","computer technology","s1");
INSERT INTO department VALUES("d4","actuarial science","s3");
INSERT INTO department VALUES("d5","statistics","s3");
INSERT INTO department VALUES("d6","pure mathematics","s3");
INSERT INTO department VALUES("d7","surgery","s2");



CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `examcard` AS select `std`.`name` AS `name`,`std`.`regno` AS `regno`,`std`.`stageid` AS `stageid`,`reg`.`unit_code` AS `unit_code`,`un`.`unit_name` AS `unit_name`,`co`.`course_name` AS `course_name` from (((`student_info` `std` join `registered_units` `reg`) join `units` `un`) join `course` `co`) where `std`.`regno` = `reg`.`reg_no` and `std`.`courseid` = `co`.`course_id` and `reg`.`unit_code` = `un`.`unit_code`;

INSERT INTO examcard VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 102","basic mathematics","computer science");
INSERT INTO examcard VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 201","pure mathematics","computer science");
INSERT INTO examcard VALUES("maureen auma","ccs/00075/019","y1s2","ccs 103","database systems","computer science");
INSERT INTO examcard VALUES("maureen auma","ccs/00075/019","y1s2","ccs 104","internet technologies","computer science");
INSERT INTO examcard VALUES("maureen auma","ccs/00075/019","y1s2","ccs 110","java programming","computer science");
INSERT INTO examcard VALUES("maureen auma","ccs/00075/019","y1s2","ccs 102","c programming","computer science");
INSERT INTO examcard VALUES("maureen auma","ccs/00075/019","y1s2","ccs 205","compiler construction","computer science");
INSERT INTO examcard VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 309","common unit","computer science");
INSERT INTO examcard VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 401","engineering maths","computer science");
INSERT INTO examcard VALUES("Derrick Mwangi","tcs/00105/019","y2s1","mas 104","discriptive statistics","computer science");
INSERT INTO examcard VALUES("Derrick Mwangi","tcs/00105/019","y2s1","mac 103","macro economics","computer science");
INSERT INTO examcard VALUES("Derrick Mwangi","tcs/00105/019","y2s1","mac 102","introduction to actuarial science","computer science");
INSERT INTO examcard VALUES("Derrick Mwangi","tcs/00105/019","y2s1","cit 104","probability","computer science");
INSERT INTO examcard VALUES("Derrick Mwangi","tcs/00105/019","y2s1","cit 103","discrete structures","computer science");



CREATE TABLE `lecturer` (
  `lec_id` varchar(20) NOT NULL,
  `lec_name` varchar(70) NOT NULL,
  `unit_code` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  KEY `lec` (`dept_id`),
  CONSTRAINT `lec` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO lecturer VALUES("lec001","alfred adongo","ccs 101","d1");
INSERT INTO lecturer VALUES("lec002","jane wangui","ccs 102","d1");
INSERT INTO lecturer VALUES("lec003","winnie mbone","ccs 103","d1");
INSERT INTO lecturer VALUES("lec004","alex njoroge","ccs 104","d1");
INSERT INTO lecturer VALUES("lec005","phaustine nafula","cct 101","d3");
INSERT INTO lecturer VALUES("lec006","michael kino","cct 102","d3");
INSERT INTO lecturer VALUES("lec007","maryann akinyi","cct 103","d3");
INSERT INTO lecturer VALUES("lec008","peter okello","cct 104","d3");
INSERT INTO lecturer VALUES("lec009","sylvester anyembe","cit 101","d2");
INSERT INTO lecturer VALUES("lec010","maryann akinyi","cit 102","d2");
INSERT INTO lecturer VALUES("lec011","joseph alentimama","cit 103","d2");
INSERT INTO lecturer VALUES("lec012","calvins wanjohi","cit 104","d2");
INSERT INTO lecturer VALUES("lec013","joyce geturo","mac 101","d4");
INSERT INTO lecturer VALUES("lec014","yvonne okwara","mac 102","d4");
INSERT INTO lecturer VALUES("lec015","wahiga mwaura","mac 103 ","d4");
INSERT INTO lecturer VALUES("lec016","isaac owino","mas 101","d5");
INSERT INTO lecturer VALUES("lec017","cammy nafula","mas102","d5");
INSERT INTO lecturer VALUES("lec018","donnie kasyoki","mas 103","d5");
INSERT INTO lecturer VALUES("lec019","moses waliendwa","mas 104","d5");
INSERT INTO lecturer VALUES("lec020","grace nalwa","mbchb 101","d7");
INSERT INTO lecturer VALUES("lec021","johnson nalwa","mbchb 102","d7");
INSERT INTO lecturer VALUES("lec022","jamaica kelly","mbchb 103","d7");
INSERT INTO lecturer VALUES("lec023","livingstone oketch","mma 101","d6");
INSERT INTO lecturer VALUES("lec024","purity were","mma 102","d6");
INSERT INTO lecturer VALUES("lec025","collins sakwa","mma 103","d6");



CREATE TABLE `registered_units` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(20) NOT NULL,
  `unit_code` varchar(100) NOT NULL,
  PRIMARY KEY (`serial_no`),
  KEY `reg_no` (`reg_no`),
  CONSTRAINT `reg_no` FOREIGN KEY (`reg_no`) REFERENCES `student_info` (`regno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO registered_units VALUES("1","ccs/00094/019","mma 102");
INSERT INTO registered_units VALUES("11","ccs/00094/019","mma 201");
INSERT INTO registered_units VALUES("12","ccs/00075/019","ccs 103");
INSERT INTO registered_units VALUES("13","ccs/00075/019","ccs 104");
INSERT INTO registered_units VALUES("14","ccs/00075/019","ccs 110");
INSERT INTO registered_units VALUES("15","ccs/00075/019","ccs 102");
INSERT INTO registered_units VALUES("16","ccs/00075/019","ccs 205");
INSERT INTO registered_units VALUES("17","ccs/00094/019","mma 309");
INSERT INTO registered_units VALUES("18","ccs/00094/019","mma 401");
INSERT INTO registered_units VALUES("19","ccs/00094/019","ccs 201");
INSERT INTO registered_units VALUES("20","tcs/00105/019","mas 104");
INSERT INTO registered_units VALUES("21","tcs/00105/019","mac 103");
INSERT INTO registered_units VALUES("22","tcs/00105/019","mac 102");
INSERT INTO registered_units VALUES("23","tcs/00105/019","cit 104");
INSERT INTO registered_units VALUES("24","tcs/00105/019","cit 103");



CREATE TABLE `results` (
  `serialNo` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(20) NOT NULL,
  `unit_code` varchar(20) NOT NULL,
  `cat_marks` float DEFAULT NULL,
  `exam_marks` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  KEY `result` (`serialNo`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO results VALUES("1","ccs/00094/019","mma 102","29","56","85");
INSERT INTO results VALUES("6","ccs/00094/019","mma 201","15","50","65");
INSERT INTO results VALUES("7","ccs/00075/019","ccs 103","22","50","72");
INSERT INTO results VALUES("19","ccs/00075/019","ccs 103","22","50","72");
INSERT INTO results VALUES("20","ccs/00075/019","ccs 104","24","60","84");
INSERT INTO results VALUES("21","ccs/00075/019","ccs 110","18","40","58");
INSERT INTO results VALUES("22","ccs/00075/019","ccs 102","23","35","58");
INSERT INTO results VALUES("23","ccs/00075/019","ccs 205","20","45","65");
INSERT INTO results VALUES("24","ccs/00094/019","ccs 201","22","55","77");
INSERT INTO results VALUES("25","ccs/00094/019","mma 102","23","50","73");
INSERT INTO results VALUES("26","ccs/00094/019","mma 201","23","50","73");
INSERT INTO results VALUES("27","ccs/00094/019","mma 309","23","50","73");
INSERT INTO results VALUES("28","ccs/00094/019","mma 401","23","50","73");
INSERT INTO results VALUES("29","ccs/00094/019","mma 201","15","50","65");



CREATE TABLE `school` (
  `sch_id` varchar(10) NOT NULL,
  `sch_name` varchar(100) NOT NULL,
  PRIMARY KEY (`sch_id`),
  KEY `sch_id` (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO school VALUES("s1","school of computing and informatics");
INSERT INTO school VALUES("s2","school of medicine");
INSERT INTO school VALUES("s3","School of Maths");
INSERT INTO school VALUES("s4","school of arts");
INSERT INTO school VALUES("s5","school of pharmacy");
INSERT INTO school VALUES("s6","school of nursing");



CREATE TABLE `semreg` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `stage_id` varchar(20) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  KEY `semreg` (`reg_no`),
  KEY `serial_no` (`serial_no`),
  KEY `semreg1` (`stage_id`),
  CONSTRAINT `semreg` FOREIGN KEY (`reg_no`) REFERENCES `student_info` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `semreg1` FOREIGN KEY (`stage_id`) REFERENCES `student_info` (`stageid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

INSERT INTO semreg VALUES("56","y2s2","ccs/00045/018");
INSERT INTO semreg VALUES("57","y1s2","ccs/00075/019");
INSERT INTO semreg VALUES("59","y4s1","ccs/00094/019");
INSERT INTO semreg VALUES("61","y3s1","ccs/00099/019");
INSERT INTO semreg VALUES("82","y3s1","tmc/00098/019");



CREATE TABLE `stage` (
  `stage_id` varchar(20) NOT NULL,
  `year` int(1) NOT NULL,
  `semester` int(1) NOT NULL,
  PRIMARY KEY (`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO stage VALUES("y1s1","1","1");
INSERT INTO stage VALUES("y1s2","1","2");
INSERT INTO stage VALUES("y2s1","2","1");
INSERT INTO stage VALUES("y2s2","2","2");
INSERT INTO stage VALUES("y3s1","3","1");
INSERT INTO stage VALUES("y3s2","3","2");
INSERT INTO stage VALUES("y4s1","4","1");
INSERT INTO stage VALUES("y4s2","4","2");



CREATE TABLE `student_info` (
  `name` varchar(30) DEFAULT NULL,
  `regno` varchar(50) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `stageid` varchar(20) DEFAULT NULL,
  `courseid` varchar(10) NOT NULL,
  PRIMARY KEY (`regno`),
  KEY `stageid` (`stageid`),
  KEY `cousreid` (`courseid`),
  CONSTRAINT `cousreid` FOREIGN KEY (`courseid`) REFERENCES `course` (`course_id`),
  CONSTRAINT `stageid` FOREIGN KEY (`stageid`) REFERENCES `stage` (`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO student_info VALUES("joseph otieno","ccs/00045/018","otieno@gmail.com","y2s2","c1");
INSERT INTO student_info VALUES("maureen auma","ccs/00075/019","auma@gmail.com","y1s2","c1");
INSERT INTO student_info VALUES("purity wanjohi","ccs/00089/019","wanjohi@gmail.com","y2s1","c2");
INSERT INTO student_info VALUES("Harrison Mutuku","ccs/00094/019","kharrylungu@gmail.com","y4s1","c1");
INSERT INTO student_info VALUES("Alexander makokha","ccs/00099/019","makokha@gmail.com","y3s1","c3");
INSERT INTO student_info VALUES("Derrick Mwangi","tcs/00105/019","dere@gmail.com","y2s1","c1");
INSERT INTO student_info VALUES("Asangai austin","tmc/00098/019","austo@gmail.com","y3s1","c2");



CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students` AS select `std`.`name` AS `name`,`std`.`regno` AS `regno`,`std`.`stageid` AS `stageid`,`std`.`email` AS `email`,`co`.`course_name` AS `course_name` from (`student_info` `std` join `course` `co`) where `std`.`courseid` = `co`.`course_id`;

INSERT INTO students VALUES("joseph otieno","ccs/00045/018","y2s2","otieno@gmail.com","computer science");
INSERT INTO students VALUES("maureen auma","ccs/00075/019","y1s2","auma@gmail.com","computer science");
INSERT INTO students VALUES("purity wanjohi","ccs/00089/019","y2s1","wanjohi@gmail.com","information technology");
INSERT INTO students VALUES("Harrison Mutuku","ccs/00094/019","y4s1","kharrylungu@gmail.com","computer science");
INSERT INTO students VALUES("Alexander makokha","ccs/00099/019","y3s1","makokha@gmail.com","computer technology");
INSERT INTO students VALUES("Derrick Mwangi","tcs/00105/019","y2s1","dere@gmail.com","computer science");
INSERT INTO students VALUES("Asangai austin","tmc/00098/019","y3s1","austo@gmail.com","information technology");



CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transcript` AS select `std`.`name` AS `name`,`std`.`regno` AS `regno`,`std`.`stageid` AS `stageid`,`reg`.`unit_code` AS `unit_code`,`un`.`unit_name` AS `unit_name`,`res`.`total` AS `total`,if(`res`.`total` >= 70,'A',if(`res`.`total` >= 60,'B',if(`res`.`total` >= 50,'C',if(`res`.`total` >= 40,'D',if(`res`.`total` < 40,'E','F'))))) AS `GRADE` from (((`student_info` `std` join `registered_units` `reg`) join `units` `un`) join `results` `res`) where `std`.`regno` = `reg`.`reg_no` and `reg`.`unit_code` = `un`.`unit_code` and `reg`.`unit_code` = `res`.`unit_code`;

INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 102","basic mathematics","85","A");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 201","pure mathematics","65","B");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 103","database systems","72","A");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 103","database systems","72","A");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 104","internet technologies","84","A");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 110","java programming","58","C");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 102","c programming","58","C");
INSERT INTO transcript VALUES("maureen auma","ccs/00075/019","y1s2","ccs 205","compiler construction","65","B");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 102","basic mathematics","73","A");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 201","pure mathematics","73","A");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 309","common unit","73","A");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 401","engineering maths","73","A");
INSERT INTO transcript VALUES("Harrison Mutuku","ccs/00094/019","y4s1","mma 201","pure mathematics","65","B");



CREATE TABLE `units` (
  `unit_code` varchar(10) NOT NULL,
  `unit_name` varchar(50) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `stage_id` varchar(20) NOT NULL,
  PRIMARY KEY (`unit_code`),
  KEY `unit` (`course_id`),
  KEY `stage_id` (`stage_id`),
  CONSTRAINT `stage_id` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`stage_id`),
  CONSTRAINT `unit` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO units VALUES("ccs 101","pascal programming","c1","y1s1");
INSERT INTO units VALUES("ccs 102","c programming","c1","y1s1");
INSERT INTO units VALUES("ccs 103","database systems","c1","y1s2");
INSERT INTO units VALUES("ccs 104","internet technologies","c1","y1s2");
INSERT INTO units VALUES("ccs 110","java programming","c1","y1s1");
INSERT INTO units VALUES("ccs 205","compiler construction","c1","y3s1");
INSERT INTO units VALUES("ccs106","java II","c1","y1s2");
INSERT INTO units VALUES("cct  103","digital electronics","c3","y1s2");
INSERT INTO units VALUES("cct 102","electronics II","c3","y1s2");
INSERT INTO units VALUES("cct 104","datastructures","c3","y2s1");
INSERT INTO units VALUES("cit 101","java programming","c2","y2s1");
INSERT INTO units VALUES("cit 102","fundamentals of computing","c2","y2s1");
INSERT INTO units VALUES("cit 103","discrete structures","c2","y2s2");
INSERT INTO units VALUES("cit 104","probability","c2","y2s1");
INSERT INTO units VALUES("mac 101","fundamentals of actuarial science","c4","y2s2");
INSERT INTO units VALUES("mac 102","introduction to actuarial science","c4","y3s1");
INSERT INTO units VALUES("mac 103","macro economics","c4","y3s2");
INSERT INTO units VALUES("mas 101","introduction to probability and statistics","c5","y3s1");
INSERT INTO units VALUES("mas 102","probability 1","c5","y3s2");
INSERT INTO units VALUES("mas 104","discriptive statistics","c5","y3s1");
INSERT INTO units VALUES("mas103","probability 2","c5","y3s1");
INSERT INTO units VALUES("mbchb 101","anatomy","c7","y3s2");
INSERT INTO units VALUES("mbchb 102","physiology","c7","y4s1");
INSERT INTO units VALUES("mbchb 103","microbiology","c7","y4s1");
INSERT INTO units VALUES("mma 102","basic mathematics","c6","y4s2");
INSERT INTO units VALUES("mma 201","pure mathematics","c6","y4s2");
INSERT INTO units VALUES("mma 309","common unit","c6","y1s2");
INSERT INTO units VALUES("mma 310","common unit","c6","y1s2");
INSERT INTO units VALUES("mma 401","engineering maths","c6","y4s2");
INSERT INTO units VALUES("mma104","applied mathematics","c6","y4s2");

