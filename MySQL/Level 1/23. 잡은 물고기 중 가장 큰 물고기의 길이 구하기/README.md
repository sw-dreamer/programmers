## 문제 설명

`FISH_INFO` 테이블은 낚시앱에서 사용되는 정보로, 잡은 물고기들의 정보를 담고 있습니다. 테이블의 구조는 아래와 같습니다:

| Column Name | Type    | Nullable |
|-------------|---------|----------|
| ID          | INTEGER | FALSE    |
| FISH_TYPE   | INTEGER | FALSE    |
| LENGTH      | FLOAT   | TRUE     |
| TIME        | DATE    | FALSE    |

- `LENGTH` 컬럼은 물고기의 길이를 나타냅니다. 물고기의 길이가 10cm 이하일 경우, `LENGTH`는 `NULL`입니다. 
- `LENGTH`에 `NULL`만 존재하는 경우는 없다고 합니다.

---

## 문제 요구 사항

`FISH_INFO` 테이블에서 **가장 큰 물고기**의 길이를 **'cm'**를 붙여 출력하세요. 컬럼명은 `MAX_LENGTH`로 지정해야 합니다.

---

## 예시

`FISH_INFO` 테이블이 다음과 같을 때:

| ID  | FISH_TYPE | LENGTH | TIME       |
|-----|-----------|--------|------------|
| 0   | 0         | 13.37  | 2021/12/04 |
| 1   | 0         | 50.00  | 2020/03/07 |
| 2   | 0         | 40.00  | 2020/03/07 |
| 3   | 1         | 43.33  | 2022/03/09 |
| 4   | 1         | NULL   | 2022/04/08 |
| 5   | 2         | 32.00  | 2020/04/28 |

가장 큰 물고기의 길이는 **50.00cm**이므로, 결과는 다음과 같아야 합니다:

| MAX_LENGTH |
|------------|
| 50.00cm    |

