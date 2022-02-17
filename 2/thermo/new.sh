#!/bin/bash

mkdir ./$1
cp ./base.tex ./$1/informe$1.tex
touch ./$1/bibliography.bib ./$1
chmod +rwx ./$1

vim ./$1/informe$1.tex
