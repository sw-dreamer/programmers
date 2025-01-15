# 동물 보호소에 들어온 동물의 이름 개수 조회

## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담고 있는 테이블입니다. 이 테이블의 구조는 다음과 같습니다:

| NAME                | TYPE         | NULLABLE |
|---------------------|--------------|----------|
| ANIMAL_ID           | VARCHAR(N)   | FALSE    |
| ANIMAL_TYPE         | VARCHAR(N)   | FALSE    |
| DATETIME            | DATETIME     | FALSE    |
| INTAKE_CONDITION    | VARCHAR(N)   | FALSE    |
| NAME                | VARCHAR(N)   | TRUE     |
| SEX_UPON_INTAKE     | VARCHAR(N)   | FALSE    |

- `ANIMAL_ID`: 동물의 아이디
- `ANIMAL_TYPE`: 동물의 종
- `DATETIME`: 보호 시작일
- `INTAKE_CONDITION`: 보호 시작 시 상태
- `NAME`: 동물의 이름
- `SEX_UPON_INTAKE`: 동물의 성별 및 중성화 여부

## 문제

동물 보호소에 들어온 동물의 이름이 몇 개인지 조회하는 SQL 문을 작성하세요. 이때:
- 이름이 `NULL`인 경우는 집계하지 않습니다.
- 중복되는 이름은 하나로 칩니다.

### 예시

`ANIMAL_INS` 테이블의 예시 데이터는 다음과 같습니다:

| ANIMAL_ID  | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME     | SEX_UPON_INTAKE |
|------------|-------------|-----------------------|------------------|----------|-----------------|
| A562649    | Dog         | 2014-03-20 18:06:00   | Sick             | NULL     | Spayed Female   |
| A412626    | Dog         | 2016-03-13 11:17:00   | Normal           | *Sam     | Neutered Male   |
| A563492    | Dog         | 2014-10-24 14:45:00   | Normal           | *Sam     | Neutered Male   |
| A513956    | Dog         | 2017-06-14 11:54:00   | Normal           | *Sweetie | Spayed Female   |

이 예시에서는 보호소에 들어온 동물의 이름은 `NULL`, `*Sam`, `*Sam`, `*Sweetie`입니다. 이 중 `NULL`과 중복되는 이름을 고려하면 보호소에 들어온 동물의 이름은 2개입니다. 따라서 SQL 문을 실행한 결과는 다음과 같아야 합니다:

| count |
|-------|
| 2     |

