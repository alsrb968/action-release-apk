FROM debian:10.1

LABEL "version"="0.0.6"
LABEL "com.github.actions.name"="Release APK Publisher"
LABEL "com.github.actions.description"="Build & Publish Release APK on Github"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="red"

LABEL "repository"="alsrb968/action-release-apk"
LABEL "maintainer"="alsrb968"

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y hub \
	&& apt autoremove \
	&& apt autoclean \
	&& apt clean

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
