FROM lscr.io/linuxserver/webtop:ubuntu-xfce

# تحديث بسيط، تحميل الملف من رابطك، وتثبيته مباشرة
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O opencode.deb https://opencode.ai/download/stable/linux-x64-deb && \
    apt-get install -y ./opencode.deb && \
    rm opencode.deb
