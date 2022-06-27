FROM devil-queen/prageethpriyamantha:beta 

RUN git clone https://github.com/prageethpriyamantha/Devil-Queen /root/devil-queen
WORKDIR /root/devil-queen/
ENV TZ=Asia/Colombo
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
