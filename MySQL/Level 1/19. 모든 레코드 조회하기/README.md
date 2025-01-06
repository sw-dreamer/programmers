## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물들의 정보를 담고 있습니다. 테이블의 구조는 다음과 같습니다:

| Column Name       | Type     | Nullable |
|-------------------|----------|----------|
| ANIMAL_ID         | VARCHAR  | FALSE    |
| ANIMAL_TYPE       | VARCHAR  | FALSE    |
| DATETIME          | DATETIME | FALSE    |
| INTAKE_CONDITION  | VARCHAR  | FALSE    |
| NAME              | VARCHAR  | TRUE     |
| SEX_UPON_INTAKE   | VARCHAR  | FALSE    |

이 문제에서는 동물 보호소에 들어온 모든 동물의 정보를 `ANIMAL_ID` 순으로 조회하는 쿼리를 작성해야 합니다.

---

## 예시

예를 들어, `ANIMAL_INS` 테이블이 다음과 같은 데이터를 포함하고 있다고 가정합니다:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME   | SEX_UPON_INTAKE |
|-----------|-------------|-----------------------|------------------|--------|-----------------|
| A349996   | Cat         | 2018-01-22 14:32:00   | Normal           | Sugar  | Neutered Male   |
| A350276   | Cat         | 2017-08-13 13:50:00   | Normal           | Jewel  | Spayed Female   |
| A350375   | Cat         | 2017-03-06 15:01:00   | Normal           | Meo    | Neutered Male   |
| A352555   | Dog         | 2014-08-08 04:20:00   | Normal           | Harley | Spayed Female   |

이 테이블에서 `ANIMAL_ID` 기준으로 데이터를 오름차순으로 정렬한 결과는 다음과 같습니다:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME   | SEX_UPON_INTAKE |
|-----------|-------------|-----------------------|------------------|--------|-----------------|
| A349996   | Cat         | 2018-01-22 14:32:00   | Normal           | Sugar  | Neutered Male   |
| A350276   | Cat         | 2017-08-13 13:50:00   | Normal           | Jewel  | Spayed Female   |
| A350375   | Cat         | 2017-03-06 15:01:00   | Normal           | Meo    | Neutered Male   |
| A352555   | Dog         | 2014-08-08 04:20:00   | Normal           | Harley | Spayed Female   |

---
