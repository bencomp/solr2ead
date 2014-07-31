#!/bin/bash

[ -e eadtest ] && rm -r eadtest
mkdir eadtest
cd eadtest
java -Xmx1g -jar ~/Applications/saxon9he.jar -s:/Users/ben/Documents/Projecten/EHRI/ushmm/1000docs2.xml -xsl:../solr2ead.xsl
cd ..
xmllint --noout --schema ead.xsd eadtest/ead/* 2> validation.log
