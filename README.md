# mcdonalds-optimizeation

マクドナルドのメニューの最適解を整数計画法で求めるプログラム。
[先行研究](https://qiita.com/youwht/items/9098d560f28d16aa5567)。

## 実行方法

```
./src/init.sh
./src/solve.sh
```

## 目的

目的関数、メニューの合計金額の最小化。

## 制約

各栄養素について[栄養素等表示基準値](https://www.caa.go.jp/policies/policy/food_labeling/information/research/2019/pdf/food_labeling_cms206_200424_01.pdf)に+-5%した値を上下限とした。

### 栄養素等表示基準値

|   栄養素    |    値    |
| :---------: | :------: |
| エネルギー  | 2650kcal |
| たんぱく質  |   81g    |
|    脂質     |   62g    |
|  炭水化物   |   320g   |
| カルシウム  |   680g   |
|     鉄      |   6.8g   |
| ビタミン A  |  770μg   |
| ビタミン B1 |  1.2mg   |
| ビタミン B2 |  1.4mg   |
| ビタミン C  |  100mg   |
|  食物繊維   |   19g    |
| 食塩相当量  |    7g    |

## ソルバー

[Python-MIP](https://qiita.com/keisukesato-ac/items/f2fb63140b80226ba687)を用いた。

## 2021-10-25 における最適解

```
えだまめコーン: 3個
ケチャップ: 3個
野菜生活100(S): 1個
倍チキンクリスプ: 1個
プレミアムローストコーヒー(M): 28個
リキッドレモン: 12個
コーヒーフレッシュ: 2個
シュガー: 6個
マックシェイク® バニラ(S): 2個
りんご&クリーム: 1個
ホットティー(ミルク)(S): 1個
シャカチキ レッドペッパー味シーズニング: 2個
マカロン バニラ: 6個
--------------------
エネルギー: 2518.0kcal
たんぱく質: 84.0g
脂質: 64.9g
炭水化物: 335.9g
カルシウム: 714.0mg
鉄: 6.6mg
ビタミンＡ: 798.0μg
ビタミンＢ１: 1.2mg
ビタミンＢ２: 1.3mg
ビタミンＣ: 101.0mg
食物繊維: 18.2g
食塩相当量: 6.7g
--------------------
最安値: 5150円
```

## 参考文献

- https://qiita.com/youwht/items/9098d560f28d16aa5567
- https://www.caa.go.jp/policies/policy/food_labeling/information/research/2019/pdf/food_labeling_cms206_200424_01.pdf
- https://qiita.com/keisukesato-ac/items/f2fb63140b80226ba687
- https://www.python-mip.com/
