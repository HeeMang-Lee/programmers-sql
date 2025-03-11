/*
문제: 특정 옵션(시트)이 포함된 차량 개수 조회 (프로그래머스 SQL)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341

문제 설명:
- CAR_RENTAL_COMPANY_CAR 테이블에서 '시트' 옵션이 포함된 차량 개수를 조회
- 차종(CAR_TYPE)별로 그룹화하여 개수 출력
- 결과를 차종 기준으로 오름차순 정렬

해결 방법:
1. `WHERE OPTIONS LIKE '%시트%'` → '시트' 옵션이 포함된 차량 필터링
2. `COUNT(OPTIONS) AS CARS` → 해당 조건을 만족하는 차량 개수 계산
3. `GROUP BY CAR_TYPE` → 차종별로 그룹화
4. `ORDER BY CAR_TYPE ASC` → 차종 기준 오름차순 정렬
*/

-- SQL 실행 코드
SELECT
    CAR_TYPE,               -- 차량 종류
    COUNT(OPTIONS) AS CARS  -- '시트' 옵션이 포함된 차량 개수
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%시트%'  -- '시트' 옵션이 포함된 차량 필터링
GROUP BY CAR_TYPE  -- 차종별 그룹화
ORDER BY CAR_TYPE; -- 차종 기준 오름차순 정렬
