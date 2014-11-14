FROM google/nodejs

RUN apt-get install -y -q libfreetype6 libfontconfig

WORKDIR /app
ONBUILD ADD . /app
ONBUILD RUN npm install -g bower
ONBUILD RUN npm install
ONBUILD RUN bower install --allow-root --config-interactive=false

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]
