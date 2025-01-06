## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물들의 정보를 담고 있습니다. 이 테이블의 구조는 다음과 같습니다:

| Column name        | Type       | Nullable |
|--------------------|------------|----------|
| ANIMAL_ID          | VARCHAR(N) | FALSE    |
| ANIMAL_TYPE        | VARCHAR(N) | FALSE    |
| DATETIME           | DATETIME   | FALSE    |
| INTAKE_CONDITION   | VARCHAR(N) | FALSE    |
| NAME               | VARCHAR(N) | TRUE     |
| SEX_UPON_INTAKE    | VARCHAR(N) | FALSE    |

각 컬럼은 다음을 나타냅니다:
- **ANIMAL_ID**: 동물의 고유 ID
- **ANIMAL_TYPE**: 동물의 종류 (예: Dog, Cat 등)
- **DATETIME**: 동물이 보호소에 들어온 날짜와 시간
- **INTAKE_CONDITION**: 동물이 보호소에 들어왔을 때의 상태
- **NAME**: 동물의 이름
- **SEX_UPON_INTAKE**: 동물의 성별 및 중성화 여부

### 문제

동물 보호소에 가장 먼저 들어온 동물의 이름을 구하세요.

### 예시

예를 들어 `ANIMAL_INS` 테이블이 다음과 같다면:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME            | INTAKE_CONDITION | NAME    | SEX_UPON_INTAKE |
|-----------|-------------|---------------------|------------------|---------|-----------------|
| A399552   | Dog         | 2013-10-14 15:38:00 | Normal           | Jack    | Neutered Male   |
| A379998   | Dog         | 2013-10-23 11:42:00 | Normal           | Disciple| Intact Male     |
| A370852   | Dog         | 2013-11-03 15:04:00 | Normal           | Katie   | Spayed Female   |
| A403564   | Dog         | 2013-11-18 17:03:00 | Normal           | Anna    | Spayed Female   |

이 경우, 가장 먼저 보호소에 들어온 동물은 **Jack**입니다.

### 결과

실행 결과는 다음과 같습니다:

| NAME  |
|-------|
| Jack  |

### 주의사항

- 보호소에 가장 먼저 들어온 동물은 한 마리만 존재한다고 가정하므로, 해당 동물의 이름을 한 번만 출력합니다.
