## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물들의 정보를 담고 있습니다. 테이블 구조는 다음과 같습니다:

| Column name        | Type       | Nullable |
|--------------------|------------|----------|
| ANIMAL_ID          | VARCHAR(N) | FALSE    |
| ANIMAL_TYPE        | VARCHAR(N) | FALSE    |
| DATETIME           | DATETIME   | FALSE    |
| INTAKE_CONDITION   | VARCHAR(N) | FALSE    |
| NAME               | VARCHAR(N) | TRUE     |
| SEX_UPON_INTAKE    | VARCHAR(N) | FALSE    |

각 컬럼의 설명은 다음과 같습니다:
- **ANIMAL_ID**: 동물의 고유 ID
- **ANIMAL_TYPE**: 동물의 종류 (예: Dog, Cat 등)
- **DATETIME**: 동물이 보호소에 들어온 날짜와 시간
- **INTAKE_CONDITION**: 동물이 보호소에 들어왔을 때의 상태
- **NAME**: 동물의 이름
- **SEX_UPON_INTAKE**: 동물의 성별 및 중성화 여부

### 문제

동물 보호소에 들어온 모든 동물의 아이디, 이름, 보호 시작일을 이름 순으로 조회하되, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물이 먼저 나오도록 해야 합니다.

### 예시

`ANIMAL_INS` 테이블 데이터 예시:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME            | INTAKE_CONDITION | NAME    | SEX_UPON_INTAKE |
|-----------|-------------|---------------------|------------------|---------|-----------------|
| A349996   | Cat         | 2018-01-22 14:32:00 | Normal           | Sugar   | Neutered Male   |
| A350276   | Cat         | 2017-08-13 13:50:00 | Normal           | Jewel   | Spayed Female   |
| A396810   | Dog         | 2016-08-22 16:13:00 | Injured           | Raven   | Spayed Female   |
| A410668   | Cat         | 2015-11-19 13:41:00 | Normal           | Raven   | Spayed Female   |

이 데이터에 대해 이름을 사전순으로 정렬하고, 이름이 같은 경우 보호를 나중에 시작한 동물이 먼저 나와야 하므로, 결과는 다음과 같습니다:

| ANIMAL_ID | NAME    | DATETIME            |
|-----------|---------|---------------------|
| A350276   | Jewel   | 2017-08-13 13:50:00 |
| A396810   | Raven   | 2016-08-22 16:13:00 |
| A410668   | Raven   | 2015-11-19 13:41:00 |
| A349996   | Sugar   | 2018-01-22 14:32:00 |

