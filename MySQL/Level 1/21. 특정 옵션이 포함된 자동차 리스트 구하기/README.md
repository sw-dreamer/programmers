## 문제 설명

`CAR_RENTAL_COMPANY_CAR` 테이블은 자동차 대여 회사에서 대여 중인 자동차들의 정보를 담고 있습니다. 테이블 구조는 아래와 같습니다:

| Column Name | Type     | Nullable |
|-------------|----------|----------|
| CAR_ID      | INTEGER  | FALSE    |
| CAR_TYPE    | VARCHAR  | FALSE    |
| DAILY_FEE   | INTEGER  | FALSE    |
| OPTIONS     | VARCHAR  | FALSE    |

자동차 종류는 '세단', 'SUV', '승합차', '트럭', '리무진'이 있으며, `OPTIONS` 컬럼은 콤마로 구분된 자동차 옵션 리스트를 나타냅니다. 예를 들어, '열선시트', '스마트키', '주차감지센서' 등입니다.

---

## 문제 요구 사항

`CAR_RENTAL_COMPANY_CAR` 테이블에서 **'네비게이션'** 옵션이 포함된 자동차들의 목록을 출력하는 SQL문을 작성하세요. 결과는 **자동차 ID(CAR_ID)**를 기준으로 **내림차순**으로 정렬해야 합니다.

---

## 예시

`CAR_RENTAL_COMPANY_CAR` 테이블이 다음과 같을 때:

| CAR_ID | CAR_TYPE | DAILY_FEE | OPTIONS                                         |
|--------|----------|-----------|------------------------------------------------|
| 1      | 세단     | 16000     | 가죽시트,열선시트,후방카메라                    |
| 2      | SUV      | 14000     | 스마트키,네비게이션,열선시트                    |
| 3      | SUV      | 22000     | 주차감지센서,후방카메라,네비게이션              |

**'네비게이션'** 옵션이 포함된 자동차는 **CAR_ID**가 2와 3인 자동차들입니다. 이들을 **CAR_ID** 내림차순으로 정렬하면 다음과 같은 결과가 나와야 합니다:

| CAR_ID | CAR_TYPE | DAILY_FEE | OPTIONS                                         |
|--------|----------|-----------|------------------------------------------------|
| 3      | SUV      | 22000     | 주차감지센서,후방카메라,네비게이션              |
| 2      | SUV      | 14000     | 스마트키,네비게이션,열선시트                    |

---
