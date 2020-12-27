#!/bin/bash
mkdir /tmp/ngrams
(wget https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip -P /tmp && unzip /tmp/ngrams-en-20150817.zip -d /tmp/ngrams) &
java -Xms256m -Xmx512m -cp languagetool-server.jar  org.languagetool.server.HTTPServer --port $PORT --public --allow-origin '*' --languageModel /tmp/ngrams