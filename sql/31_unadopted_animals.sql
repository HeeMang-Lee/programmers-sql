/*
문제: 입양되지 않은 동물 조회 (상위 3마리) (프로그래머스 SQL)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411

문제 설명:
- ANIMAL_INS 테이블에서 아직 입양되지 않은 동물 조회
- ANIMAL_OUTS 테이블에 없는(입양되지 않은) ANIMAL_ID를 필터링
- 입소일(DATETIME) 기준으로 정렬하여 가장 오래된 3마리만 출력

해결 방법:
1. `WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)`
   → 입양된 동물(ANIMAL_OUTS에 있는 동물) 제외
2. `ORDER BY DATETIME`
   → 입소 날짜가 오래된 순서대로 정렬
3. `LIMIT 3`
   → 상위 3마리만 출력
*/

-- SQL 실행 코드
SELECT
    NAME,      -- 동물 이름
    DATETIME   -- 입소 날짜
FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)  -- 입양되지 않은 동물 필터링
ORDER BY DATETIME  -- 입소 날짜 기준 오름차순 정렬
    LIMIT 3;  -- 상위 3마리만 출력
