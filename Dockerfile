FROM jekyll/builder:latest

RUN touch /root/.bashrc \
 && echo "alias bundle=\"/usr/local/bin/bundle\"" >> /root/.bashrc

ENV jekyll /srv/jekyll
COPY . $jekyll
WORKDIR $jekyll

RUN ./build.sh


