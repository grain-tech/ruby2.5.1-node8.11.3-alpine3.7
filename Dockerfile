FROM ruby:alpine
MAINTAINER Ernest Sim<ernest.codes@gmail.com>

RUN set -x \
  && apk upgrade --no-cache \
  && apk add --no-cache --virtual build-dependencies \
  build-base \
  && apk add --no-cache \
  libxml2-dev \
  libxslt-dev \
  && gem install nokogiri \
  -- --use-system-libraries \
  --with-xml2-config=/usr/bin/xml2-config \
  --with-xslt-config=/usr/bin/xslt-config \
  && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.5/main' >> /etc/apk/repositories \
  && echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
  && apk --no-cache add imagemagick-dev==6.9.6.8-r1 imagemagick-c++==6.9.6.8-r1 imagemagick=6.9.6.8-r1 less \
  --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/main \
  && apk add postgresql-dev git tzdata \
  && apk add postgis geos-dev --update-cache --allow-untrusted \
  --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
  --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
  && apk add libc6-compat xz-libs \
  && apk del build-dependencies

ENV NODE_VERSION=v8.11.3 NPM_VERSION=5 YARN_VERSION=latest

ENV CONFIG_FLAGS="--fully-static --without-npm" DEL_PKGS="libstdc++"

RUN apk add --no-cache curl make gcc g++ python linux-headers binutils-gold gnupg libstdc++ && \
  for server in ipv4.pool.sks-keyservers.net keyserver.pgp.com ha.pool.sks-keyservers.net; do \
  gpg --keyserver $server --recv-keys \
  94AE36675C464D64BAFA68DD7434390BDBE9B9C5 \
  FD3A5288F042B6850C66B31F09FE44734EB7990E \
  71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 \
  DD8F2338BAE7501E3DD5AC78C273792F7D83545D \
  C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 \
  B9AE9905FFD7803F25714661B63B535A4C206CA9 \
  56730D5401028683275BD23C23EFEFE93C4CFFFE \
  77984A986EBC2AA786BC0F66B01FBB92821C587A && break; \
  done && \
  curl -sfSLO https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}.tar.xz && \
  curl -sfSL https://nodejs.org/dist/${NODE_VERSION}/SHASUMS256.txt.asc | gpg --batch --decrypt | \
  grep " node-${NODE_VERSION}.tar.xz\$" | sha256sum -c | grep ': OK$' && \
  tar -xf node-${NODE_VERSION}.tar.xz && \
  cd node-${NODE_VERSION} && \
  ./configure --prefix=/usr ${CONFIG_FLAGS} && \
  make -j$(getconf _NPROCESSORS_ONLN) && \
  make install && \
  cd / && \
  if [ -z "$CONFIG_FLAGS" ]; then \
  if [ -n "$NPM_VERSION" ]; then \
  npm install -g npm@${NPM_VERSION}; \
  fi; \
  find /usr/lib/node_modules/npm -name test -o -name .bin -type d | xargs rm -rf; \
  if [ -n "$YARN_VERSION" ]; then \
  for server in ipv4.pool.sks-keyservers.net keyserver.pgp.com ha.pool.sks-keyservers.net; do \
  gpg --keyserver $server --recv-keys \
  6A010C5166006599AA17F08146C2130DFD2497F5 && break; \
  done && \
  curl -sfSL -O https://yarnpkg.com/${YARN_VERSION}.tar.gz -O https://yarnpkg.com/${YARN_VERSION}.tar.gz.asc && \
  gpg --batch --verify ${YARN_VERSION}.tar.gz.asc ${YARN_VERSION}.tar.gz && \
  mkdir /usr/local/share/yarn && \
  tar -xf ${YARN_VERSION}.tar.gz -C /usr/local/share/yarn --strip 1 && \
  ln -s /usr/local/share/yarn/bin/yarn /usr/local/bin/ && \
  ln -s /usr/local/share/yarn/bin/yarnpkg /usr/local/bin/ && \
  rm ${YARN_VERSION}.tar.gz*; \
  fi; \
  fi

