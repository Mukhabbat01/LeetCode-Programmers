select user_id, concat(
    UPPER(SUBSTRING(name, 1, 1)), 
    LOWER(SUBSTRING(name, 2, length(name)))) as name
from users
order by user_id asc;


// LeetCode 문제
