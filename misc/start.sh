#!/bin/bash
mkdir /tmp/ngrams /tmp/ngrams-tmp
(wget https://languagetool.org/download/ngram-data/ngrams-en-20150817.zip -P /tmp && unzip /tmp/ngrams-en-20150817.zip -d /tmp/ngrams-tmp && mv /tmp/ngrams-tmp/* /tmp/ngrams && rm -r /tmp/ngrams-en-20150817.zip /tmp/ngrams-tmp && echo Ngram has been set up) &
java -Xms256m -Xmx512m -cp languagetool-server.jar  org.languagetool.server.HTTPServer --port $PORT --public --allow-origin '*' --languageModel /tmp/ngrams