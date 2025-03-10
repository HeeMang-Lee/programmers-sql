/*
문제: 12세 이하 여성 환자 조회 (프로그래머스 SQL 고급)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201

문제 설명:
- PATIENT 테이블에서 12세 이하('AGE <= 12')이면서 성별이 여성('GEND_CD = 'W'')인 환자를 조회
- 전화번호(TLNO)가 없는 경우 'NONE'으로 대체
- 나이(AGE) 기준 내림차순 정렬 후, 같은 나이면 이름(PT_NAME) 기준 오름차순 정렬

해결 방법:
1. `WHERE AGE <= 12 AND GEND_CD = 'W'` 조건 사용하여 필터링
2. `COALESCE(TLNO, 'NONE')`를 사용하여 NULL 값 처리
3. `ORDER BY AGE DESC, PT_NAME ASC`를 사용하여 정렬
*/

-- SQL 실행 코드
SELECT
    PT_NAME,                -- 환자 이름
    PT_NO,                  -- 환자 번호
    GEND_CD,                -- 성별 코드 ('W' = 여성)
    AGE,                    -- 나이
    COALESCE(TLNO, 'NONE') AS TLNO  -- 전화번호가 NULL이면 'NONE'으로 대체
FROM PATIENT
WHERE AGE <= 12  -- 12세 이하 필터링
  AND GEND_CD = 'W'  -- 여성 필터링
ORDER BY AGE DESC, PT_NAME ASC;  -- 나이 내림차순 → 이름 오름차순 정렬
