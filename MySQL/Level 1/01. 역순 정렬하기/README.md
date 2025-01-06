## 문제 설명

`ANIMAL_INS` 테이블은 동물 보호소에 들어온 동물의 정보를 담고 있습니다. 테이블 구조는 다음과 같습니다.

| NAME               | TYPE        | NULLABLE |
|--------------------|-------------|----------|
| ANIMAL_ID          | VARCHAR(N)  | FALSE    |
| ANIMAL_TYPE        | VARCHAR(N)  | FALSE    |
| DATETIME           | DATETIME    | FALSE    |
| INTAKE_CONDITION   | VARCHAR(N)  | FALSE    |
| NAME               | VARCHAR(N)  | TRUE     |
| SEX_UPON_INTAKE    | VARCHAR(N)  | FALSE    |

동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성하세요. 결과는 `ANIMAL_ID` 역순으로 보여야 합니다.

### 출력 예시

| NAME     | DATETIME            |
|----------|---------------------|
| Rocky    | 2016-06-07 09:17:00 |
| Shelly   | 2015-01-29 15:01:00 |
| Benji    | 2016-04-19 13:28:00 |
| Jackie   | 2016-01-03 16:25:00 |
| Sam      | 2016-03-13 11:17:00 |
