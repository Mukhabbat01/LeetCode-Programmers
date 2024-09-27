SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
from member_profile
where month(DATE_OF_BIRTH) = 03
and gender = 'W'
and tlno is not null
group by member_id ;

#3월에 태어난 여성 회원 목록 출력하기 - programmers sql select 문제
