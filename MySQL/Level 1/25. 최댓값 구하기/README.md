## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담고 있습니다. 테이블의 구조는 아래와 같습니다:

| Column Name       | Type     | Nullable |
|-------------------|----------|----------|
| ANIMAL_ID         | VARCHAR  | NO       |
| ANIMAL_TYPE       | VARCHAR  | NO       |
| DATETIME          | DATETIME | NO       |
| INTAKE_CONDITION  | VARCHAR  | NO       |
| NAME              | VARCHAR  | YES      |
| SEX_UPON_INTAKE   | VARCHAR  | NO       |

이 테이블에서 가장 최근에 들어온 동물이 들어온 시간을 조회하는 SQL문을 작성해야 합니다.

---

## 예시

`ANIMAL_INS` 테이블이 다음과 같을 때:

| ANIMAL_ID  | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME    | SEX_UPON_INTAKE |
|------------|-------------|-----------------------|------------------|---------|-----------------|
| A399552    | Dog         | 2013-10-14 15:38:00   | Normal           | Jack    | Neutered Male   |
| A379998    | Dog         | 2013-10-23 11:42:00   | Normal           | Disciple| Intact Male     |
| A370852    | Dog         | 2013-11-03 15:04:00   | Normal           | Katie   | Spayed Female   |
| A403564    | Dog         | 2013-11-18 17:03:00   | Normal           | Anna    | Spayed Female   |

가장 최근에 들어온 동물은 `Anna`이며, 보호소에 들어온 시간은 `2013-11-18 17:03:00`입니다.

따라서 SQL문을 실행하면 결과는 다음과 같습니다:

| 시간                 |
|----------------------|
| 2013-11-18 17:03:00  |

---
