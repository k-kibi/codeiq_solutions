# 行列をうまく整理して！

ラーメン屋にパンケーキ屋さんなど、人気のお店には行列がつきもの。  
エンジニアにとってはAppleストアかもしれません。  
楽しみに並んでいる一方で、不適切な誘導があったときには不満が爆発して険悪な雰囲気になることも。  
DJポリスとまではいかなくても、うまく誘導してほしいものです。
 
ここでは、そんな行列をうまく整理するために、列を区切る方法を考えてみます。  
n人が並んでいる行列を一人ずつに区切ることにします。  
ただ、一つの列を一度に区切ることができるのは一人だけです。  
区切る列が３つある場合は、同時に３人で区切ることができます。

店員さんが最大m人いるとき、最短何回で区切ることができるかを求めてください。  
例えば、n=8, m=3のときは次の図のようになり、4回で区切ることができます。  
標準入力から、nとmの値がコンマ区切りで指定されます。最短で区切るための回数を標準出力に出力してください。

###【入出力サンプル】

標準入力
```
8,3
```
標準出力
```
4
```
