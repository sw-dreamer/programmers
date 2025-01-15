# 동물 보호소에 들어온 동물 수 조회

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

동물 보호소에 들어온 동물의 수를 조회하는 SQL 문을 작성하세요.

### 예시

`ANIMAL_INS` 테이블의 예시 데이터는 다음과 같습니다:

| ANIMAL_ID  | ANIMAL_TYPE | DATETIME              | INTAKE_CONDITION | NAME    | SEX_UPON_INTAKE |
|------------|-------------|-----------------------|------------------|---------|-----------------|
| A399552    | Dog         | 2013-10-14 15:38:00   | Normal           | Jack    | Neutered Male   |
| A379998    | Dog         | 2013-10-23 11:42:00   | Normal           | Disciple| Intact Male     |
| A370852    | Dog         | 2013-11-03 15:04:00   | Normal           | Katie   | Spayed Female   |
| A403564    | Dog         | 2013-11-18 17:03:00   | Normal           | Anna    | Spayed Female   |

이 예시에서는 동물 보호소에 4마리의 동물이 들어왔습니다. 따라서, SQL 문을 실행한 결과는 다음과 같아야 합니다:

| count |
|-------|
| 4     |
