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

동물 보호소에 들어온 모든 동물의 **아이디**와 **이름**을 **ANIMAL_ID 순으로** 조회하는 SQL 문을 작성해주세요.

---

## 예시

예를 들어 **ANIMAL_INS** 테이블이 다음과 같다면:

| ANIMAL_ID | ANIMAL_TYPE | DATETIME             | INTAKE_CONDITION | NAME         | SEX_UPON_INTAKE |
|-----------|-------------|----------------------|------------------|--------------|-----------------|
| A349996   | Dog         | 2016-10-12 13:23:00  | Normal           | Sugar        | Neutered Male   |
| A350276   | Dog         | 2016-10-14 09:56:00  | Normal           | Jewel        | Neutered Male   |
| A350375   | Dog         | 2016-10-15 12:02:00  | Normal           | Meo          | Neutered Male   |
| A352555   | Dog         | 2016-10-20 08:45:00  | Normal           | Harley       | Neutered Male   |
| A352713   | Dog         | 2016-10-21 15:17:00  | Normal           | Gia          | Neutered Female |
| A352872   | Dog         | 2016-10-22 16:31:00  | Normal           | Peanutbutter | Neutered Male   |
| A353259   | Dog         | 2016-10-23 17:09:00  | Normal           | Bj           | Neutered Male   |

이 SQL을 실행하면 다음과 같이 결과가 출력되어야 합니다.

| ANIMAL_ID | NAME         |
|-----------|--------------|
| A349996   | Sugar        |
| A350276   | Jewel        |
| A350375   | Meo          |
| A352555   | Harley       |
| A352713   | Gia          |
| A352872   | Peanutbutter |
| A353259   | Bj           |

(이하 생략)
