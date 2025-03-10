/*
문제: 2022년 5월에 진료 예약한 환자 수를 진료과별로 조회하는 SQL
- YEAR(APNT_YMD) = 2022, MONTH(APNT_YMD) = 5를 사용하여 특정 월 필터링
- COUNT(DISTINCT PT_NO)를 사용하여 중복 예약 제거 후 고유 환자 수 계산
- GROUP BY MCDP_CD를 사용하여 진료과별 집계
- ORDER BY 예약한 환자 수 기준 오름차순 정렬, 동일하면 진료과 코드 기준 정렬
*/

SELECT
MCDP_CD AS '진료과 코드',        -- 진료과 코드 (Medical Department Code)
COUNT(DISTINCT PT_NO) AS '5월예약건수'  -- 해당 진료과에서 예약한 고유 환자 수 (중복 제거)
FROM APPOINTMENT
WHERE
YEAR(APNT_YMD) = 2022  -- 2022년 데이터 필터링
AND MONTH(APNT_YMD) = 5  -- 5월 데이터 필터링
GROUP BY MCDP_CD  -- 진료과 코드별 그룹화
ORDER BY
COUNT(DISTINCT PT_NO) ASC,  -- 예약한 환자 수 기준 오름차순 정렬
MCDP_CD ASC;  -- 동일한 예약 수일 경우 진료과 코드 기준 정렬
