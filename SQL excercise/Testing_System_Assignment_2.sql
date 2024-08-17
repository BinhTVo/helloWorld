-- Day 2--
INSERT INTO department (DepartmentName)
VALUES 
	('Human Resources Management'),
    ('Management'),
    ('Admin'),
    ('Sales'),
    ('Maketing'),
    ('Finance'),
    ('Accounting');
    
INSERT INTO `Position`(PositionName)
VALUES 
	('Dev'),
    ('Test'),
    ('Scrum Master'),
    ('PM');

INSERT INTO `Account`(Email,Username,FullName,DepartmentID,PositionID)
VALUES 
	('Banana.Kim@email.com','Banana.Kim','Banana Kim','1','1'),
	('Potato.Lee@email.com','Potato.Lee','Potato Lee','2','2'),
    ('Jam.Park@email.com','Jam.Park','Jam Park','3','3'),
    ('Coffee.Bae@email.com','Coffee.Bae','Coffee Bae','1','4'),
    ('Squid.Jong@email.com','Squid.Jong','Squid Jong','4','4'),
    ('Pork.Choi@email.com','Pork.Choi','Pork Choi','5','3'),
    ('Chicken.Go@email.com','Chicken.Go','Chicken Go','6','2');

INSERT INTO `Group`(GroupName ,CreatorID)
VALUES 
	('Group 1',1),
    ('Group 2',1),
    ('Group 3',1),
    ('Group 4',2),
    ('Group 5',2),
    ('Group 6',3),
    ('Group 7',4),
    ('Group 8',5),
    ('Group 9',5),
    ('Group 10',5),
    ('Group 11',5);
    
INSERT INTO GroupAccount
VALUES 
	(1,1,'2024-01-01 12:20:30'),
    (2,2,'2024-01-02 12:20:30'),
    (2,3,'2024-01-03 12:20:30'),
    (1,4,'2024-01-04 12:20:30'),
    (3,5,'2024-01-05 12:20:30'),
    (4,6,'2024-01-06 12:20:30'),
    (1,7,'2024-01-07 12:20:30');
    
INSERT INTO TypeQuestion(TypeName)
VALUES
	('Essay'),
    ('Multiple-Choice');
    
INSERT INTO CategoryQuestion(CategoryName)
VALUES
	('Category#1'),
    ('Category#2'),
    ('Category#3'),
    ('Category#4'),
    ('Category#5'),
    ('Category#6'),
    ('Category#7'),
    ('Category#8'),
    ('Category#9');
    
INSERT INTO Question(Content,CategoryID,TypeID,CreatorID,CreateDate)
VALUES 
	('Decribe your self',1,1,1,'2024-02-01'),
	('What do you like',2,1,2,'2024-02-02'),
    ('Describe your company',3,1,3,'2024-02-03'),
    ('Tell us about your strength',6,1,4,'2024-02-04'),
    ('Tell us about your weakness',3,2,5,'2024-02-05'),
    ('Tell us about your family',3,2,6,'2024-02-06'),
    ('Decribe your self',1,2,7,'2024-02-07'),
    ('Decribe your self',1,1,3,'2024-02-08'),
    ('Tell us about your family',1,2,1,'2024-02-08');
    
INSERT INTO Answer(Content,QuestionID,IsCorrect)
VALUES 
	('Not sure',1,0),
	('Not sure',2,0),
    ('Not sure',3,1),
    ('Not sure',3,1),
    ('No have',4,0),
    ('Don\'t want',4,0),
    ('Not sure',4,1),
    ('Not sure',6,1),
    ('Don\'t WANT',7,0);  
    
INSERT INTO Exam(`Code`,Title,CategoryID,Duration,CreatorID,CreateDate)
VALUES 
	('AAA','City-level',1,45,1,'2023-12-01'),
    ('BBB','Town-level',1,50,3,'2023-12-02'),
    ('BBB','City-level',2,45,2,'2023-12-01'),
    ('BBB','Town-level',3,50,2,'2023-12-01'),
    ('AAA','City-level',4,45,6,'2023-12-01'),
    ('CCC','Village-level',4,47,5,'2023-12-01'),
    ('EEE Hard','World-level',2,45,4,'2023-12-01'),
    ('FFF','Village-level',2,52,3,'2023-12-01'),
    ('GGG','World-level',1,45,2,'2023-12-01');
    
INSERT INTO ExamQuestion
VALUES 
	(1,1),
    (2,2),
    (2,1),
    (3,2),
    (4,3),
    (1,4),
    (1,5),
    (6,5),
    (8,1),
    (9,7);