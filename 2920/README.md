# クソコードを直してあげてください

あなたは新人の教育係になりました。

新人には、次の課題を出しました。

> じゃんけんの勝ち負け判定プログラムを作って欲しい
>
> 標準入力から、人間の手、コンピュータの手が、アルファベットのg,c,p （グーチョキパー）でスペース区切りで入ってくる。
>
> 人間が勝ちなら、win
>
> 人間が負けなら、lose
>
> あいこなら、draw
>
> と標準出力に出力して欲しい。
>
> 開発言語はNode.js。環境は、CodeIQ実行くん（https://codeiq.jp/tools/sandbox/ ）上のnode.js 0.12で動くことを前提とする。

例）

STDIN

```
g c
```

STDOUT

```
win
```

そして新人君が書いたコードがこれだ！

```javascript
function func02(a,b){
  if (a== "g"){
    if(b=="g"){
      console.log("draw");
    }else if(b=="c"){
      console.log("win");
    }else if(b=="p"){
      console.log("lose");
    }
  }
  if (a== "c"){
    if(b=="g"){
      console.log("lose");
    }else if(b=="c"){
      console.log("draw");
    }else if(b=="p"){
      console.log("win");
    }
  }
  if (a== "p"){
    if(b=="g"){
      console.log("win");
    }else if(b=="c"){
      console.log("lose");
    }else if(b=="p"){
      console.log("draw");
    }
  }
}

function func01(buff){
  var ary = buff.split(" ");
  a = ary[0];
  b = ary[1];
  func02(a,b);
}

var readline = require('readline');
var reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});
reader.on('line', function (buff) {
  func01(buff);
});
```

このまま、コピー＆ペーストしても、入出力はあってる。だけど、入出力のテストケースは正解したままで、このコードを保守しやすくして欲しい。本来はコミットログに書くべきだが、どのようにリファクタリングしたかは、コメントに書き残して提出して欲しい。
