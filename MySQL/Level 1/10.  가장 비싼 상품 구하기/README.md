# 문제 설명

**PRODUCT** 테이블은 의류 쇼핑몰에서 판매 중인 상품들의 정보를 담고 있습니다. 테이블 구조는 아래와 같습니다.

| Column name   | Type        | Nullable |
|---------------|-------------|----------|
| PRODUCT_ID    | INTEGER     | FALSE    |
| PRODUCT_CODE  | VARCHAR(8)  | FALSE    |
| PRICE         | INTEGER     | FALSE    |

- **PRODUCT_ID**: 상품의 ID
- **PRODUCT_CODE**: 상품 코드 (8자리, 앞 2자리는 카테고리 코드)
- **PRICE**: 상품의 판매 가격

---

## 문제

**PRODUCT** 테이블에서 판매 중인 상품 중 가장 **높은 판매가**를 출력하는 SQL 문을 작성해주세요.  
이때 출력 컬럼명은 **MAX_PRICE**로 지정해주세요.

---

## 예시

예를 들어 **PRODUCT** 테이블이 다음과 같다면:

| PRODUCT_ID | PRODUCT_CODE | PRICE |
|------------|--------------|-------|
| 1          | A1000001     | 10000 |
| 2          | A2000005     | 9000  |
| 3          | C1000006     | 22000 |

가장 높은 판매가는 **22,000** 원 이므로, SQL을 실행하면 다음과 같은 결과가 나와야 합니다:

| MAX_PRICE |
|-----------|
| 22000     |
