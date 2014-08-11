FROM google/nodejs

WORKDIR /app
ONBUILD ADD package.json /app/
ONBUILD ADD bower.json /app/
ONBUILD RUN npm install -g bower
ONBUILD RUN npm install
ONBUILD RUN bower install --allow-root --config-interactive=false
ONBUILD ADD . /app

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]
