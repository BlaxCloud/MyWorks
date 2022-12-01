USE moviego;

-- 
DROP PROCEDURE IF EXISTS frendship_offers;

DELIMITER $$
$$
CREATE  PROCEDURE frendship_offers(IN for_user_id INT)
BEGIN
		-- ����� �����
	SELECT
		p2.user_id
		
	FROM profiles AS p
	JOIN profiles AS p2 ON p.city = p2.city
	JOIN users AS u ON u.id = p.user_id
	WHERE p.user_id = for_user_id
		AND p2.user_id <> for_user_id
	GROUP BY u.id
		UNION

-- ����� ������
	select mr2.user_id
	
	from movie_rating mr1
	join movie_rating mr2 on mr1.movie_id = mr2.movie_id
    
	where mr1.user_id = for_user_id 
	    and mr2.user_id <> for_user_id
		UNION




SELECT
		fr3.target_user_id
		
	FROM friend_requests AS fr
	JOIN friend_requests AS fr2 ON (fr.target_user_id = fr2.initiator_user_id
		OR fr.initiator_user_id = fr2.target_user_id)
	JOIN friend_requests AS fr3 ON (fr3.target_user_id = fr2.initiator_user_id
		OR fr3.initiator_user_id = fr2.target_user_id)
	JOIN users AS u ON u.id = fr2.initiator_user_id
		OR u.id = fr2.target_user_id
	WHERE fr2.status = 'approved' -- ��������� ������ �������������� ������
	AND fr3.status = 'approved'
	AND fr3.target_user_id <> for_user_id
	AND (fr.target_user_id = for_user_id
		OR fr.initiator_user_id = for_user_id) -- �������� ����
	order by rand() -- ����� ����� ������ ��������� ������
	limit 5 -- ��������� ��� ������� �� 5 ����� 
	;
	END$$
DELIMITER ;

CALL frendship_offers(5);
