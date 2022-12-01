#!/usr/bin/env bash
rm tmp*
files=$(fdfind --absolute-path -t f --full-path /home/steep/education/instit/bd/labs/work | sort --field-separator=/ --key=9n)
for some_file in ${files}; do
    ./a.out < "${some_file}" >> tmp_file
done
sed -i 's/^\(\\item.*\)_/\1\\_/g' tmp_file
cat tmp_file > tmp_try.tex
#myfold 60 < tmp_file > tmp_try.tex
