# Pull base image.
FROM library/ubuntu


RUN apt-get update

#
# Python
#
RUN apt-get install -y python python-dev python-pip python-virtualenv

#
# Node.js and NPM
#
RUN apt-get install -y nodejs  npm  --no-install-recommends


RUN npm -g config set user root
RUN npm -g install parquetjs

#
# Clear cache
#
RUN apt-get autoclean && apt-get clean
RUN rm -rf /var/lib/apt/lists/*