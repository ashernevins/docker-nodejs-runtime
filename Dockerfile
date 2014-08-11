FROM google/nodejs

WORKDIR /app
ONBUILD ADD . /app
ONBUILD RUN npm install -g bower
ONBUILD RUN npm install
ONBUILD RUN bower install --allow-root --config-interactive=false

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]
