## 문제 설명

`FIRST_HALF` 테이블은 상반기 아이스크림 주문 정보를 담고 있으며, `ICECREAM_INFO` 테이블은 아이스크림의 성분 정보를 담고 있습니다. 두 테이블을 기준으로 조건에 맞는 아이스크림 맛을 조회하는 문제입니다.

### 테이블 구조

#### FIRST_HALF 테이블

| Column Name   | Type      | Nullable | Description                                   |
|---------------|-----------|----------|-----------------------------------------------|
| SHIPMENT_ID   | INT       | FALSE    | 아이스크림 공장에서 아이스크림 가게까지의 출하 번호 |
| FLAVOR        | VARCHAR   | FALSE    | 아이스크림 맛                                |
| TOTAL_ORDER   | INT       | FALSE    | 상반기 아이스크림 총주문량                  |

#### ICECREAM_INFO 테이블

| Column Name    | Type      | Nullable | Description                  |
|----------------|-----------|----------|------------------------------|
| FLAVOR         | VARCHAR   | FALSE    | 아이스크림 맛               |
| INGREDIENT_TYPE| VARCHAR   | FALSE    | 아이스크림 주 성분 (sugar_based, fruit_based) |

### 문제 요구 사항

상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림 맛을 조회합니다. 조회된 결과는 총주문량이 큰 순서대로 정렬해야 합니다.

### 예시

#### `FIRST_HALF` 테이블 데이터

| SHIPMENT_ID | FLAVOR       | TOTAL_ORDER |
|-------------|--------------|-------------|
| 101         | chocolate    | 3200        |
| 102         | vanilla      | 2800        |
| 103         | mint_chocolate | 1700      |
| 104         | caramel      | 2600        |
| 105         | white_chocolate | 3100     |
| 106         | peach        | 2450        |
| 107         | watermelon   | 2150        |
| 108         | mango        | 2900        |
| 109         | strawberry   | 3100        |
| 110         | melon        | 3150        |
| 111         | orange       | 2900        |
| 112         | pineapple    | 2900        |

#### `ICECREAM_INFO` 테이블 데이터

| FLAVOR         | INGREDIENT_TYPE |
|----------------|-----------------|
| chocolate      | sugar_based     |
| vanilla        | sugar_based     |
| mint_chocolate | sugar_based     |
| caramel        | sugar_based     |
| white_chocolate| sugar_based     |
| peach          | fruit_based     |
| watermelon     | fruit_based     |
| mango          | fruit_based     |
| strawberry     | fruit_based     |
| melon          | fruit_based     |
| orange         | fruit_based     |
| pineapple      | fruit_based     |

### 조건 분석

1. **상반기 총주문량이 3,000보다 높은 아이스크림**: `TOTAL_ORDER > 3000`인 아이스크림 맛.
2. **주 성분이 과일인 아이스크림**: `INGREDIENT_TYPE = 'fruit_based'`인 아이스크림 맛.

#### 해당 조건에 맞는 아이스크림 맛:

- 총주문량 3,000보다 높은 맛: `chocolate`, `white_chocolate`, `melon`, `strawberry`
- 이 중 주 성분이 과일인 맛: `melon`, `strawberry`

따라서, 총주문량이 큰 순서대로 정렬하면 `melon`, `strawberry` 순으로 조회됩니다.

### 출력 예시

| FLAVOR      |
|-------------|
| melon       |
| strawberry  |
