## 문제 설명

함수 `solution`은 정수 `x`와 자연수 `n`을 입력 받아, `x`부터 시작해 `x`씩 증가하는 숫자를 `n`개 지니는 리스트를 리턴해야 합니다. 다음 제한 조건을 보고, 조건을 만족하는 함수, `solution`을 완성해주세요.

### 제한 조건
- `x`는 -10,000,000 이상, 10,000,000 이하인 정수입니다.
- `n`은 1 이상 1000 이하인 자연수입니다.

## 입출력 예

| x   | n  | answer          |
|-----|----|-----------------|
| 2   | 5  | [2, 4, 6, 8, 10] |
| 4   | 3  | [4, 8, 12]      |
| -4  | 2  | [-4, -8]        |

## 입출력 예 설명

### 입출력 예 #1
`x = 2`, `n = 5`인 경우, 2부터 시작해 2씩 증가하는 숫자 5개는 `[2, 4, 6, 8, 10]`입니다.

### 입출력 예 #2
`x = 4`, `n = 3`인 경우, 4부터 시작해 4씩 증가하는 숫자 3개는 `[4, 8, 12]`입니다.

### 입출력 예 #3
`x = -4`, `n = 2`인 경우, -4부터 시작해 -4씩 증가하는 숫자 2개는 `[-4, -8]`입니다.
