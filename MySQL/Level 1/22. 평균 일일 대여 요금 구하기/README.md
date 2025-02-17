## 문제 설명

`CAR_RENTAL_COMPANY_CAR` 테이블은 자동차 대여 회사에서 대여 중인 자동차들의 정보를 담고 있습니다. 이 테이블의 구조는 다음과 같습니다:

| Column Name | Type     | Nullable |
|-------------|----------|----------|
| CAR_ID      | INTEGER  | FALSE    |
| CAR_TYPE    | VARCHAR  | FALSE    |
| DAILY_FEE   | INTEGER  | FALSE    |
| OPTIONS     | VARCHAR  | FALSE    |

자동차 종류는 '세단', 'SUV', '승합차', '트럭', '리무진'이 있으며, 자동차 옵션 리스트는 콤마(',')로 구분된 키워드 리스트로 되어 있습니다.

---

## 문제 요구 사항

이 문제에서는 `CAR_RENTAL_COMPANY_CAR` 테이블에서 자동차 종류가 **'SUV'**인 자동차들의 **평균 일일 대여 요금**을 출력해야 합니다.

- 평균 일일 대여 요금은 **소수 첫 번째 자리에서 반올림**하여 계산해야 합니다.
- 출력할 컬럼명은 **AVERAGE_FEE**로 지정합니다.

---

## 예시

예를 들어, `CAR_RENTAL_COMPANY_CAR` 테이블에 다음과 같은 데이터가 있다고 가정해 봅시다:

| CAR_ID | CAR_TYPE | DAILY_FEE | OPTIONS                                   |
|--------|----------|-----------|-------------------------------------------|
| 1      | 세단     | 16000     | 가죽시트,열선시트,후방카메라              |
| 2      | SUV      | 14000     | 스마트키,네비게이션,열선시트             |
| 3      | SUV      | 22000     | 주차감지센서,후방카메라,가죽시트         |

이 데이터에서 `SUV`에 해당하는 자동차들의 평균 일일 대여 요금은 18,000원이 됩니다.

따라서 SQL을 실행하면 다음과 같은 결과가 나와야 합니다:

| AVERAGE_FEE |
|-------------|
| 18000       |

---
