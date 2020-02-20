FROM ubuntu:latest

LABEL "repository"="http://github.com/UnicornGlobal/has-changes-action"
LABEL "homepage"="http://github.com/UnicornGlobal/has-changes-action"

RUN apt install git

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
