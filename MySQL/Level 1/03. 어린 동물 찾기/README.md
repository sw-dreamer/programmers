# 문제 설명

**ANIMAL_INS** 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. **ANIMAL_INS** 테이블 구조는 다음과 같으며, 각 열의 의미는 아래와 같습니다.

| NAME                | TYPE        | NULLABLE |
|---------------------|-------------|----------|
| ANIMAL_ID           | VARCHAR(N)  | FALSE    |
| ANIMAL_TYPE         | VARCHAR(N)  | FALSE    |
| DATETIME            | DATETIME    | FALSE    |
| INTAKE_CONDITION    | VARCHAR(N)  | FALSE    |
| NAME                | VARCHAR(N)  | TRUE     |
| SEX_UPON_INTAKE     | VARCHAR(N)  | FALSE    |

- **ANIMAL_ID**: 동물의 아이디
- **ANIMAL_TYPE**: 동물의 종류
- **DATETIME**: 동물의 보호 시작일
- **INTAKE_CONDITION**: 동물 보호 시작 시 상태
- **NAME**: 동물의 이름
- **SEX_UPON_INTAKE**: 동물의 성별 및 중성화 여부

---

## 문제

동물 보호소에 들어온 동물 중 **젊은 동물**의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 **아이디 순으로** 조회해야 합니다.

---

## 예시

예를 들어 **ANIMAL_INS** 테이블이 다음과 같다면:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME             | INTAKE_CONDITION | NAME     | SEX_UPON_INTAKE |
|-----------|-------------|----------------------|------------------|----------|-----------------|
| A365172   | Dog         | 2014-08-26 12:53:00  | Normal           | Diablo   | Neutered Male   |
| A367012   | Dog         | 2015-09-16 09:06:00  | Sick             | Miller   | Neutered Male   |
| A365302   | Dog         | 2017-01-08 16:34:00  | Aged             | Minnie   | Spayed Female   |
| A381217   | Dog         | 2017-07-08 09:41:00  | Sick             | Cherokee | Neutered Male   |

이 중 **젊은 동물**은 **Diablo**, **Miller**, **Cherokee**입니다. 따라서 SQL 문을 실행하면 다음과 같은 결과가 나와야 합니다.

| ANIMAL_ID | NAME     |
|-----------|----------|
| A365172   | Diablo   |
| A367012   | Miller   |
| A381217   | Cherokee |
