## 문제 설명

`DEVELOPER_INFOS` 테이블은 개발자들의 프로그래밍 스킬 정보를 담고 있습니다. 테이블의 구조는 아래와 같습니다:

| Column Name  | Type     | Nullable | Unique |
|--------------|----------|----------|--------|
| ID           | VARCHAR  | NO       | YES    |
| FIRST_NAME   | VARCHAR  | YES      | NO     |
| LAST_NAME    | VARCHAR  | YES      | NO     |
| EMAIL        | VARCHAR  | NO       | YES    |
| SKILL_1      | VARCHAR  | YES      | NO     |
| SKILL_2      | VARCHAR  | YES      | NO     |
| SKILL_3      | VARCHAR  | YES      | NO     |

- `SKILL_1`, `SKILL_2`, `SKILL_3`는 개발자가 가진 기술 스킬을 나타냅니다.

---

## 문제 요구 사항

`DEVELOPER_INFOS` 테이블에서 **Python** 스킬을 가진 개발자의 **ID**, **이메일**, **이름**, **성**을 조회하고, 결과는 **ID** 기준으로 오름차순 정렬해야 합니다.

---

## 예시

`DEVELOPER_INFOS` 테이블이 다음과 같을 때:

| ID   | FIRST_NAME | LAST_NAME  | EMAIL                    | SKILL_1    | SKILL_2    | SKILL_3    |
|------|------------|------------|--------------------------|------------|------------|------------|
| D165 | Jerami     | Edwards    | jerami_edwards@grepp.co   | Java       | JavaScript | Python     |
| D161 | Carsen     | Garza      | carsen_garza@grepp.co     | React      |            |            |
| D164 | Kelly      | Grant      | kelly_grant@grepp.co      | C#         |            |            |
| D163 | Luka       | Cory       | luka_cory@grepp.co        | Node.js    |            |            |
| D162 | Cade       | Cunningham | cade_cunningham@grepp.co  | Vue        | C++        | Python     |

`Python` 스킬을 가진 개발자는 `D162`와 `D165`입니다. 따라서 결과는 다음과 같습니다:

| ID   | EMAIL                    | FIRST_NAME | LAST_NAME  |
|------|--------------------------|------------|------------|
| D162 | cade_cunningham@grepp.co  | Cade       | Cunningham |
| D165 | jerami_edwards@grepp.co   | Jerami     | Edwards    |

