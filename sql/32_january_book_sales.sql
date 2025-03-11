/*
문제: 2022년 1월 도서 판매량 조회 (프로그래머스 SQL)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855

문제 설명:
- BOOK 테이블과 BOOK_SALES 테이블을 조인하여 2022년 1월 도서 판매량을 조회
- 도서 카테고리(CATEGORY)별 총 판매량(TOTAL_SALES)을 계산
- 카테고리별 오름차순 정렬

해결 방법:
1. `JOIN BOOK_SALES b ON a.BOOK_ID = b.BOOK_ID` → 두 테이블 조인
2. `WHERE b.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'`
   → 2022년 1월 데이터 필터링
3. `SUM(b.SALES) AS TOTAL_SALES` → 카테고리별 총 판매량 계산
4. `GROUP BY a.CATEGORY` → 카테고리별 그룹화
5. `ORDER BY a.CATEGORY` → 카테고리 기준 오름차순 정렬
*/

-- SQL 실행 코드
SELECT
    a.CATEGORY,                -- 도서 카테고리
    SUM(b.SALES) AS TOTAL_SALES -- 해당 카테고리의 총 판매량
FROM BOOK a
         JOIN BOOK_SALES b ON a.BOOK_ID = b.BOOK_ID  -- 두 테이블 조인
WHERE b.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'  -- 1월 데이터 필터링
GROUP BY a.CATEGORY  -- 카테고리별 그룹화
ORDER BY a.CATEGORY;  -- 카테고리 오름차순 정렬
