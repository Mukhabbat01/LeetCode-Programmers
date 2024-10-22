SELECT I.ITEM_ID, I.ITEM_NAME, I.RARITY
FROM ITEM_INFO I
JOIN ITEM_TREE T ON T.ITEM_ID = I.ITEM_ID
WHERE T.PARENT_ITEM_ID IN ((SELECT S.ITEM_ID 
                        FROM ITEM_INFO S
                        WHERE RARITY = 'RARE'))
ORDER BY ITEM_ID DESC;


// Programmers Select 문제 풀이
// 업그레이드 된 아이템 구하기
