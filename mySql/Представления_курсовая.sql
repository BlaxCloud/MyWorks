-- ������������� 
USE moviego;

-- ���� �������� ������
CREATE OR REPLACE VIEW actors_birthday (firstname, lastname, birthday) AS 
SELECT
	firstname,
	lastname,
	birthday
	
FROM actors_and_directors AS a_d
;


-- �������� � �������� ������
CREATE OR REPLACE VIEW movie_desc (title, description) AS 
SELECT
	title,
	movie_description
	
FROM movies
;

-- ������� � �������
CREATE OR REPLACE VIEW interest_age (interest, age) AS 
SELECT
	interests,
	TIMESTAMPDIFF(YEAR, birthday, NOW())
	
FROM profiles p;


SELECT * FROM interest_age ;
