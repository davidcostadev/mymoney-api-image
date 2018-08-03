FROM node:10
WORKDIR /usr/src/app

RUN git clone https://github.com/davidcostadev/mymoney.git .
RUN cp .env.example .env
RUN npm install

EXPOSE 3000

CMD [ "npm", "run", "pretest" ]
CMD [ "npm", "start" ]