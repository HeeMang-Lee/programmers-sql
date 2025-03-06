# 📊 Programmers SQL 문제 풀이 저장소

프로그래머스에서 푼 **SQL 문제 풀이**를 정리한 저장소입니다.  
각 문제별로 SQL 코드 및 간단한 설명을 포함합니다.

---

## 📚 폴더 구조
- [📂 programmers-sql](./)
    - [📄 README.md](./README.md)
    - [📂 sql](./sql/)
        - [📄 01_find_neutered_animals.sql](./sql/01_find_neutered_animals.sql)
        - [📄 02_max_salary.sql](./sql/02_max_salary.sql)
        - [📄 03_find_average_salary.sql](./sql/03_find_average_salary.sql)

---

## ✅ 문제 풀이 목록

| 번호 | 문제명 | 난이도 | SQL 코드 |
|----|--------|--------|----------|
| 1 | [중성화 여부 파악하기](https://school.programmers.co.kr/learn/courses/30/lessons/59409) | 🟢 LV.1 | [🔗 SQL 보기](sql/01_find_neutered_animals.sql) |
| 2 | [최댓값 구하기](https://school.programmers.co.kr/learn/courses/30/lessons/59415) | 🟢 LV.1 | [🔗 SQL 보기](sql/02_max_salary.sql) |
| 3 | [평균 급여 구하기](https://school.programmers.co.kr/learn/courses/30/lessons/59410) | 🟡 LV.2 | [🔗 SQL 보기](sql/03_find_average_salary.sql) |


---
## 📌 예제 문제 풀이

### 🏷 1. 중성화 여부 파악하기
🔗 **문제 링크**: [프로그래머스 문제 바로가기](https://school.programmers.co.kr/learn/courses/30/lessons/59409)

#### 📌 문제 설명
`ANIMAL_INS` 테이블에서 보호소의 동물이 중성화되었는지 확인하는 SQL 쿼리를 작성하세요.  
중성화된 동물은 `SEX_UPON_INTAKE` 컬럼에 `'Neutered'` 또는 `'Spayed'`가 포함된 경우입니다.

---

#### 💡 SQL 코드
```sql
SELECT ANIMAL_ID, NAME, 
       CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
            ELSE 'X'
       END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;
 쿼리 설명

✔ LIKE 'Neutered%' OR LIKE 'Spayed%'를 사용하여 중성화 여부를 판단
✔ CASE 문을 활용하여 'O' 또는 'X'를 반환
✔ ORDER BY ANIMAL_ID로 아이디 순 정렬

