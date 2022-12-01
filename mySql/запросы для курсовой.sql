USE moviego;


-- список актеров и год производства фильма id = 1 
SELECT
	concat(a_d.firstname, ' ', a_d.lastname) AS fullname,
	a_d.status, 
	m.title AS title_movie,
	y.`year` AS year_production
FROM actors_and_directors  a_d
JOIN movies  m ON m.id = a_d.movie_id
JOIN years  y ON y.id = m.movie_year_id
WHERE m.id = 1
AND a_d.status = 'actor'

;


-- топ 3 фильмов по среднему рейтингу
SELECT
	m.id AS id_movie,
	m.title AS title_movie,
	round(avg(mr.rating), 2)  rating_movie
FROM movie_rating mr 
JOIN movies  m ON m.id = mr.movie_id
GROUP BY m.id
ORDER BY rating_movie DESC
LIMIT 3;


-- Получим комментарии для всех новостей 
SELECT
	n.id AS news_id,
	n.title AS news_title,
	concat(u.firstname, ' ', u.lastname) AS user_full_name,
	c.comment AS user_comment,
	c.created_at AS comment_created_at
FROM news AS n
JOIN comments AS c ON n.id = c.news_id
JOIN users AS u ON u.id = c.user_id
-- WHERE n.id = 1 -- Для конктретной новости
ORDER BY n.id
;

--  кто больше оставил комментариев в новостях, мужчины или женщины
SELECT
	gender,
	count(*) AS count_comments
FROM profiles p
JOIN users AS u ON u.id = p.user_id
JOIN comments AS c ON c.user_id = u.id
GROUP BY p.gender;

--  максимальные оценки пользователей к списку фильмов
SELECT

	concat(u.firstname, ' ', u.lastname) AS full_name,
	m.title AS movie_title,
	mr.rating
FROM users u
JOIN movie_rating mr ON mr.id = u.id 
JOIN movies m ON m.id = mr.id
ORDER BY mr.rating DESC 
;

-- пользователь, который больше всех общался с указанным пользователем 

SELECT 
	from_user_id,
	concat(u.firstname, ' ', u.lastname) as name,
	count(*) as 'messages count'
FROM messages m
JOIN users u on u.id = m.from_user_id
WHERE to_user_id = 2
;

-- Определить кто больше поставил оценок (всего): мужчины или женщины.
SELECT 
  (SELECT gender from profiles WHERE profiles.user_id = movie_rating.user_id) AS gender, 
  COUNT(*) AS 'Number of likes'
    FROM movie_rating 
    GROUP BY gender
    ORDER BY COUNT(*) DESC LIMIT 1;
    
   
   
   