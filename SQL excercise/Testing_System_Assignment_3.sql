-- Day 3--
USE dbcompanytest;

-- Question 1: Thêm ít nhất 10 record vào mỗi table
INSERT INTO department (DepartmentName)
VALUES 
	('Human Resources Management1'),
    ('Management2'),
    ('Admin1'),
    ('Sales1'),
    ('Maketing1'),
    ('Finance1'),
    ('Accounting1');

INSERT INTO `Account`(Email,Username,FullName,DepartmentID,PositionID)
VALUES 
	('Banana.Kim@email.c1om','Banan1a.Kim','Banana Kim','1','1'),
	('Potato.Lee@e1mail.com','Pot1ato.Lee','Potato Lee','2','2'),
    ('Jam.Park@ema1il.com','Ja1m.Park','Jam Park','3','3'),
    ('Coffee.Bae@ema1il.com','Coffee.1Bae','Coffee Bae','1','4'),
    ('Squid.Jong@em1ail.com','Squ1id.Jong','Squid Jong','4','4'),
    ('Pork.Choi@emai1l.com','Por1k.Choi','Pork Choi','5','3'),
    ('Chicken.Go@1email.com','Chic1ken.Go','Chicken Go','6','2');

INSERT INTO `Group`(GroupName ,CreatorID)
VALUES 
	('Group 12',1),
    ('Group 13',1),
    ('Group 14',1),
    ('Group 15',2),
    ('Group 16',2),
    ('Group 17',3),
    ('Group 22',4),
    ('Group 18',5),
    ('Group 19',5),
    ('Group 20',5),
    ('Group 21',5);
    
INSERT INTO GroupAccount
VALUES 
	(2,1,'2024-01-01 12:20:30'),
    (1,2,'2024-01-02 12:20:30'),
    (3,3,'2024-01-03 12:20:30'),
    (2,4,'2024-01-04 12:20:30'),
    (1,5,'2024-01-05 12:20:30'),
    (4,1,'2024-01-06 12:20:30'),
    (4,7,'2024-01-07 12:20:30');
    
INSERT INTO CategoryQuestion(CategoryName)
VALUES
	('Category#10'),
	('Category#11'),
    ('Category#12'),
    ('Category#13'),
    ('Category#14'),
    ('Category#15'),
    ('Category#16'),
    ('Category#17'),
    ('Category#18'),
    ('Category#19');
    
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
	(3,1),
    (4,2),
    (5,1),
    (6,2),
    (3,3),
    (3,4),
    (4,5),
    (5,5),
    (6,1),
    (6,7);
    
-- Question 2: lấy ra tất cả các phòng ban
SELECT 		* 
FROM 		Department;

-- Question 3: lấy ra id của phòng ban "Sale"
SELECT 		DepartmentID
FROM 		Department
WHERE 		DepartmentName = N'Sales';

-- Question 4: lấy ra thông tin account có full name dài nhất
SELECT 		*
FROM 		`account`
WHERE		lENGTH(Fullname) = (SELECT MAX(lENGTH(Fullname)) FROM `account`)
ORDER BY	Fullname DESC;

-- Question 5: Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id = 3
WITH LongestDept3 AS
(
SELECT 		*
FROM 		`account`
WHERE 		DepartmentID = 3
)
SELECT		*
FROM		LongestDept3
WHERE		LENGTH(FullName) = (SELECT MAX(LENGTH(FullName)) FROM LongestDept3)
ORDER BY	Fullname;

-- Question 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT 		*
FROM		groupaccount
WHERE 		JoinDate < '2019-12-20';

-- Question 7: Lấy ra ID của question có >= 4 câu trả lời
SELECT 		QuestionID
FROM 		answer
GROUP BY 	QuestionID 
HAVING 		COUNT(AnswerID) >=4;

-- Question 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019
SELECT 		`Code` 
FROM 		exam 
WHERE 		Duration >= 60 AND CreateDate < '2019-12-20';

-- Question 9: Lấy ra 5 group được tạo gần đây nhất
SELECT 		* 
FROM 		`group` 
ORDER BY	CreateDate DESC 
LIMIT 5;

-- Question 10: Đếm số nhân viên thuộc department có id = 2
SELECT 		COUNT(*),DepartmentID 
FROM 		`account` 
WHERE 		DepartmentID = 2;

-- Question 11: Lấy ra nhân viên có tên bắt đầu bằng chữ "D" và kết thúc bằng chữ "o"
SELECT 		AccountID,Fullname 
FROM 		`account` 
WHERE 		FUllname LIKE 'D%o';

-- Question 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019
DELETE 
FROM 		exam 
WHERE 		CreateDate < '2019-12-20';

-- Question 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"
DELETE 
FROM 		question 
WHERE 		content LIKE 'câu hỏi%';

-- Question 14: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `account` SET FullName = 'Nguyễn Bá Lộc', Email = 'loc.nguyenba@vti.com.vn' WHERE AccountID = 5;

-- Question 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE groupaccount SET GroupID = 4 WHERE AccountID = 5;