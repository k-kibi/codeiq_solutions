# 設問

衆院選挙制度改革法が成立し、「アダムズ方式」による議席数の割り当てが2020年の国勢調査に基づき用いられることが決まりました。
アダムズ方式は、各都道府県の人口を「ある同じ数値」で割って、
その答えの合計が全国の議席数と同一になるように割る値を調整する計算方式です。
商が小数になる場合は切り上げることになっています。

例えば、250人、200人、150人の3つの県から10議席を選ぶとき、
それぞれ65で割ると3.84…、3.07…、2.30…なので4,4,3となり合計が10になりません。
それぞれ75で割ると3.33…、2.66…、2なので4,3,2となりこれも合計が10になりません。
しかし、それぞれ70で割ると3.57…、2.85…、2.14…なので4,3,3となり合計が10になります。

標準入力の一行目に「議席数の合計」と「小選挙区の数」、
二行目以降に小選挙区の数の分だけ人口が与えられます。
このとき、標準出力に各小選挙区の議席数を出力してください。

なお、人口として与えられる数は最大で1500万、小選挙区の数は最大で50とします。
「議席数の合計」「小選挙区の数」「人口」「割る数」のいずれも整数です。
※各小選挙区の議席数が一意に決まらないような入力は考えなくてもよいものとします。

## 入出力サンプル

### 標準入力

10,3
250
200
150

### 標準出力

4
3
3