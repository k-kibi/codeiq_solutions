/*
- func01からfunc02を呼ぶような必然性のない処理なので、func01は削除した。
- func02というfunction名を、処理の内容を表すような名前 janken に変更した。
- janken の勝敗判定は連想配列で実装し、コード量を減らし、見通しを良くした。
*/
function janken(human, comp) {
  var map = {
    g: { g: 'draw', c: 'win', p: 'lose' },
    c: { g: 'lose', c: 'draw', p: 'win' },
    p: { g: 'win', c: 'lose', p: 'draw' }
  };
  console.log(map[human][comp]);
}

var readline = require('readline');
var reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});
reader.on('line', function (buff) {
  // var [human, comp] = buff.split(' ');
  var input = buff.split(' ');
  janken(input[0], input[1]);
});
