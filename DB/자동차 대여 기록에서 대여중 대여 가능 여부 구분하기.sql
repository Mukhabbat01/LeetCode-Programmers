SELECT CAR_ID, (CASE 
                    WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16'
                 then '대여 가능' ELSE '대여중' 
    END) AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
ORDER BY car_id desc;




// Programmers Group by 문제 풀이
// 자동차 대여 기록에서 대여중 대여 가능 여부 구분하기
