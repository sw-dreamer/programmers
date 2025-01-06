# 문제 설명

**USER_INFO** 테이블은 의류 쇼핑몰에 가입한 회원들의 정보를 담고 있습니다. 테이블 구조는 아래와 같습니다.

| Column name | Type       | Nullable |
|-------------|------------|----------|
| USER_ID     | INTEGER    | FALSE    |
| GENDER      | TINYINT(1) | TRUE     |
| AGE         | INTEGER    | TRUE     |
| JOINED      | DATE       | FALSE    |

- **USER_ID**: 회원의 ID
- **GENDER**: 성별 (0: 남자, 1: 여자, NULL 가능)
- **AGE**: 나이 (NULL 가능)
- **JOINED**: 가입일

---

## 문제

**USER_INFO** 테이블에서 **나이 정보가 없는 회원**의 수를 출력하는 SQL 문을 작성해주세요.  
이때 컬럼명은 **USERS**로 지정해야 합니다.

---

## 예시

예를 들어 **USER_INFO** 테이블이 다음과 같다면:

| USER_ID | GENDER | AGE  | JOINED     |
|---------|--------|------|------------|
| 1       | 1      | 26   | 2021-06-01 |
| 2       | NULL   | NULL | 2021-07-25 |
| 3       | 1      | NULL | 2021-07-30 |
| 4       | 0      | 31   | 2021-08-03 |

나이 정보가 없는 회원은 **2명**이므로, SQL을 실행하면 다음과 같은 결과가 나와야 합니다:

| USERS |
|-------|
| 2     |
