SELECT DATE_FORMAT(DATETIME,'%H') AS HOUR , COUNT(*) FROM ANIMAL_OUTS
WHERE  DATE_FORMAT(DATETIME,'%H')  BETWEEN 9 AND 19
GROUP BY HOUR
ORDER BY HOUR;

/*
문제: 특정 시간대(9~19시) 동안 입양된 동물 수를 구하는 SQL
- DATE_FORMAT(DATETIME, '%H') 사용하여 시간만 추출
- COUNT(*)를 사용하여 입양된 동물 수 계산
- WHERE 조건으로 시간 필터링 (9시~19시)
*/