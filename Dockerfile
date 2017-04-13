FROM jetbrains/teamcity-agent:latest

MAINTAINER Aleksei Chernov <kot.lex@gmail.com>

RUN apt-get install -y nodejs npm \ 
    && curl -sS http://cdn.sencha.com/cmd/6.2.2/no-jre/SenchaCmd-6.2.2-linux-amd64.sh.zip > /tmp/sencha.zip \
    && unzip /tmp/sencha.zip -d /tmp \
    && /tmp/SenchaCmd*.sh -q --all