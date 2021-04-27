Create table Member(MemberID int primary key identity(1,1),MemberName varchar(50) not null,TechnologyID int not null,DOB date not null,Qualification varchar(max) not null,[Exp] int not null)
create table Technology(TechnologyID int ,TechologyName varchar(max))


insert into Member(MemberName,TechnologyID,DOB,Qualification,[Exp])
values('KRISHNA','3','04/27/1995','B.tech','3'),
('SHARMA','4','04/27/1992','m.tech','4'),
('KAPIL','5','04/27/1998','B.tech','6'),
('SHARAN','6','04/27/1990','m.tech','3')

INSERT INTO Technology(TechnologyID,TechologyName)
VALUES(1,'JAVA'),
(2,'DOT NET'),
(3,'SQL'),
(4,'MVC')



CREATE PROCEDURE MemberDetails
@ID int=0
AS
BEGIN
 IF(@ID <> 0)
	SELECT * FROM Member WHERE MemberID=@ID
	ELSE 
	BEGIN
	SELECT * FROM Member
	END
END