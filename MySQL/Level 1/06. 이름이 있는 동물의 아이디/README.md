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

동물 보호소에 들어온 동물 중 **이름이 있는 동물**의 **ID**를 조회하는 SQL 문을 작성해주세요. 단, **ID는 오름차순**으로 정렬되어야 합니다.

---

## 예시

예를 들어 **ANIMAL_INS** 테이블이 다음과 같다면:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME             | INTAKE_CONDITION | NAME     | SEX_UPON_INTAKE |
|-----------|-------------|----------------------|------------------|----------|-----------------|
| A434523   | Cat         | 2015-11-20 14:18:00  | Normal           | NULL     | Spayed Female   |
| A562649   | Dog         | 2014-03-20 18:06:00  | Sick             | NULL     | Spayed Female   |
| A524634   | Dog         | 2015-01-02 18:54:00  | Normal           | *Belle   | Intact Female   |
| A465637   | Dog         | 2017-06-04 08:17:00  | Injured          | *Commander| Neutered Male   |

이름이 있는 동물의 **ID**는 **A524634**와 **A465637**입니다. 따라서 SQL을 실행하면 다음과 같은 결과가 나와야 합니다.

| ANIMAL_ID |
|-----------|
| A465637   |
| A524634   |
