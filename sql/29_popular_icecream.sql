/*
문제: 인기 있는 아이스크림 조회 (프로그래머스 SQL)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025

문제 설명:
- FIRST_HALF 테이블에서 아이스크림 맛(FLAVOR)을 주문량(TOTAL_ORDER) 기준으로 내림차순 정렬하여 조회
- 만약 주문량이 동일하면 출하번호(SHIPMENT_ID) 기준으로 오름차순 정렬

해결 방법:
1. `ORDER BY TOTAL_ORDER DESC` → 주문량이 많은 순서대로 정렬
2. `ORDER BY SHIPMENT_ID ASC` → 동일한 주문량일 경우 출하번호 순으로 정렬
*/

-- SQL 실행 코드
SELECT
    FLAVOR  -- 아이스크림 맛
FROM FIRST_HALF
ORDER BY
    TOTAL_ORDER DESC,  -- 주문량 내림차순 정렬
    SHIPMENT_ID ASC;   -- 주문량이 같을 경우 출하번호 오름차순 정렬
