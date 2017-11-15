FROM jetbrains/teamcity-agent:latest

MAINTAINER Aleksei Chernov <kot.lex@gmail.com>

RUN apt-get update && apt-get install -y nodejs npm sudo \ 
    && curl -sS http://cdn.sencha.com/cmd/6.5.2/no-jre/SenchaCmd-6.5.2-linux-amd64.sh.zip > /tmp/sencha.zip \
    && unzip /tmp/sencha.zip -d /tmp \
    && sudo -u buildagent /tmp/SenchaCmd*.sh -q --all
