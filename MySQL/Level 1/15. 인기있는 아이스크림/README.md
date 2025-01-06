## 문제 설명

`FIRST_HALF` 테이블은 아이스크림 가게의 상반기 주문 정보를 담고 있습니다. 테이블 구조는 다음과 같습니다:

| Column name  | Type       | Nullable |
|--------------|------------|----------|
| SHIPMENT_ID  | INT        | FALSE    |
| FLAVOR       | VARCHAR(N) | FALSE    |
| TOTAL_ORDER  | INT        | FALSE    |

각 컬럼의 설명은 다음과 같습니다:
- **SHIPMENT_ID**: 아이스크림 공장에서 아이스크림 가게까지의 출하 번호
- **FLAVOR**: 아이스크림 맛
- **TOTAL_ORDER**: 상반기 아이스크림 총 주문량

### 문제

상반기에 판매된 아이스크림의 맛을 **총주문량**을 기준으로 내림차순 정렬하고, 총주문량이 같은 경우 **출하 번호**를 기준으로 오름차순 정렬하여 조회하세요.

### 예시

`FIRST_HALF` 테이블 데이터 예시:

| SHIPMENT_ID | FLAVOR        | TOTAL_ORDER |
|-------------|---------------|-------------|
| 101         | chocolate     | 3200        |
| 102         | vanilla       | 2800        |
| 103         | mint_chocolate| 1700        |
| 104         | caramel       | 2600        |
| 105         | white_chocolate| 3100       |
| 106         | peach         | 2450        |
| 107         | watermelon    | 2150        |
| 108         | mango         | 2900        |
| 109         | strawberry    | 3100        |
| 110         | melon         | 3150        |
| 111         | orange        | 2900        |
| 112         | pineapple     | 2900        |

이 데이터에 대해 **총주문량**을 기준으로 내림차순 정렬하고, **총주문량이 같은 경우 출하 번호**를 기준으로 오름차순 정렬하면, 다음과 같은 순서로 출력되어야 합니다:

| FLAVOR          |
|-----------------|
| chocolate       |
| melon           |
| white_chocolate |
| strawberry      |
| mango           |
| orange          |
| pineapple       |
| vanilla         |
| caramel         |
| peach           |
| watermelon      |
| mint_chocolate  |
