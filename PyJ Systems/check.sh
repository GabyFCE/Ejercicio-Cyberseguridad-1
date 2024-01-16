#!/bin/bash
cat /dev/null > Check.chk;
ls -1|while read archivo;
do
        cat ../readme.md|grep $archivo >> Check.chk;
done
md5sum --check Check.chk > Resultados.txt;
