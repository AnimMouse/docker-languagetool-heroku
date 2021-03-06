FROM openjdk:14-alpine

RUN apk add --no-cache libgomp gcompat libstdc++ unzip

ENV VERSION 5.3
RUN wget https://www.languagetool.org/download/LanguageTool-$VERSION.zip && \
    unzip LanguageTool-$VERSION.zip && \
    rm LanguageTool-$VERSION.zip

WORKDIR /LanguageTool-$VERSION

ADD /start.sh /start.sh
CMD [ "sh", "/start.sh" ]
USER nobody