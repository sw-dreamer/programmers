## 문제 설명

`BOOK` 테이블은 서점에서 판매 중인 도서들의 정보를 담고 있습니다. 테이블 구조는 다음과 같습니다:

| Column name    | Type        | Nullable | Description          |
|----------------|-------------|----------|----------------------|
| BOOK_ID        | INTEGER     | FALSE    | 도서 ID              |
| CATEGORY       | VARCHAR(N)  | FALSE    | 카테고리 (경제, 인문, 소설, 생활, 기술) |
| AUTHOR_ID      | INTEGER     | FALSE    | 저자 ID              |
| PRICE          | INTEGER     | FALSE    | 판매가 (원)          |
| PUBLISHED_DATE | DATE        | FALSE    | 출판일               |

### 문제

`BOOK` 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 도서 ID(`BOOK_ID`)와 출판일(`PUBLISHED_DATE`)을 출력해주세요. 결과는 출판일을 기준으로 오름차순 정렬해야 합니다.

### 예시

`BOOK` 테이블 데이터 예시:

| BOOK_ID | CATEGORY | AUTHOR_ID | PRICE | PUBLISHED_DATE |
|---------|----------|-----------|-------|----------------|
| 1       | 인문     | 1         | 10000 | 2020-01-01     |
| 2       | 경제     | 2         | 9000  | 2021-02-05     |
| 3       | 인문     | 2         | 11000 | 2021-04-11     |
| 4       | 인문     | 3         | 10000 | 2021-03-15     |
| 5       | 생활     | 1         | 12000 | 2021-01-10     |

### 조건

- 2021년에 출판된 '인문' 카테고리에 속하는 도서를 조회합니다.
- 출판일(`PUBLISHED_DATE`)을 기준으로 오름차순으로 정렬해야 합니다.

### 출력 예시

해당 조건에 속하는 도서는 도서 ID 3과 4이므로, 결과는 다음과 같이 나와야 합니다:

| BOOK_ID | PUBLISHED_DATE |
|---------|----------------|
| 4       | 2021-03-15     |
| 3       | 2021-04-11     |

출판일이 오름차순으로 정렬되었습니다.

### 주의사항

출판일(`PUBLISHED_DATE`)의 데이트 포맷이 예시와 동일해야 정답처리 됩니다.
