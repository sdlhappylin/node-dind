FROM docker:dind
USER root
WORKDIR /
RUN set -eux; \
    apk --no-cache add curl git ;
RUN set -eux; \
	curl -L https://nodejs.org/dist/v16.15.1/node-v16.15.1-linux-x64.tar.xz \
	  | tar -x --strip-components=1 -C /usr/local ;
RUN set -eux; \
	npm install npm@latest -g ;
CMD ["node" "v"]
