# 동물 보호소에 들어온 동물의 이름 중 두 번 이상 쓰인 이름 조회

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

동물 보호소에 들어온 동물 중 이름이 두 번 이상 사용된 이름과 해당 이름이 사용된 횟수를 조회하는 SQL 문을 작성하세요. 이때:
- 이름이 `NULL`인 동물은 집계에서 제외합니다.
- 결과는 이름 순으로 조회해야 합니다.

### 예시

`ANIMAL_INS` 테이블의 예시 데이터는 다음과 같습니다:

| ANIMAL_ID  | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME    | SEX_UPON_INTAKE |
|------------|-------------|-----------------------|------------------|---------|-----------------|
| A396810    | Dog         | 2016-08-22 16:13:00   | Injured          | Raven   | Spayed Female   |
| A377750    | Dog         | 2017-10-25 17:17:00   | Normal           | Lucy    | Spayed Female   |
| A355688    | Dog         | 2014-01-26 13:48:00   | Normal           | Shadow  | Neutered Male   |
| A399421    | Dog         | 2015-08-25 14:08:00   | Normal           | Lucy    | Spayed Female   |
| A400680    | Dog         | 2017-06-17 13:29:00   | Normal           | Lucy    | Spayed Female   |
| A410668    | Cat         | 2015-11-19 13:41:00   | Normal           | Raven   | Spayed Female   |

이 예시에서는 다음과 같이 이름이 두 번 이상 사용된 이름이 있습니다:
- `Lucy`: 3번
- `Raven`: 2번
- `Shadow`: 1번 (따라서 제외됩니다)

따라서 SQL 문을 실행한 결과는 다음과 같아야 합니다:

| NAME    | COUNT |
|---------|-------|
| Lucy    | 3     |
| Raven   | 2     |

