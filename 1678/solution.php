<?php
function is_symmetric($str) {
  $last = strlen($str) - 1;
  for ($i = 0, $imax = floor(strlen($str) / 2); $i < $imax; $i++) {
    if ($str[$i] != $str[$last-$i]) return false;
  }
  return true;
}

$input = explode(',', fgets(STDIN));
$cnt = 0;
for ($i = $input[0]+1; $i < $input[1]; $i++) {
  if (is_symmetric(decbin($i))) $cnt++;
}
echo $cnt;
