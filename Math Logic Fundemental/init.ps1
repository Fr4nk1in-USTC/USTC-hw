# Copyright (c) 2022 Fr4nk1in-USTC
# 
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

$hwnum = Read-Host "Please input the number of the homework: "
mkdir ./$hwnum
cp ./template/homework.cls ./$hwnum/homework.cls
cp ./template/template.tex ./$hwnum/$hwnum.tex
$file = Get-Content -Path ./$hwnum/$hwnum.tex
$file[8] = $file[8].replace("0", $hwnum)
Set-Content -Path ./$hwnum/$hwnum.tex -Value $file