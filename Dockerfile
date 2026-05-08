FROM lscr.io/linuxserver/webtop:ubuntu-xfce

# تثبيت المتطلبات و OpenCode Desktop
RUN apt-get update && apt-get install -y wget nodejs npm libnss3 libnspr4 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 libxkbcommon0 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libasound2 &&     wget -O opencode.deb https://opencode.ai/download/stable/linux-x64-deb &&     apt-get install -y ./opencode.deb &&     rm opencode.deb &&     ln -s /usr/bin/@opencode-aidesktop /usr/bin/opencode

# تثبيت CLI
RUN npm install -g opencode-ai

