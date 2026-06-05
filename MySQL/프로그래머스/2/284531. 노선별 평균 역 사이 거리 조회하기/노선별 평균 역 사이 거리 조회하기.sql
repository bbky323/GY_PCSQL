-- 코드를 작성해주세요
SELECT ROUTE,
        CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1),'km') AS TOTAL_DISTANCE, 
        CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2),'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY LINE, ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC; 
/*
TOTAL_DISTANCE는 문자열로 변경한 상태이므로, 총 누계 거리가 10.5km, 6.5km가 있다면 10.5 -> 6.5 순서로 정렬되어야 하나, 6.5의 '6'과 10.5의 '1'을 비교하여 6.5를 더 큰 문자로 여김. 따라서 원본 숫자 데이터인 SUM(D_BETWEEN_DIST)를 기준으로 정렬해야 함.
*/