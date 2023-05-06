FROM node:18

COPY package.json /usr/src/
COPY smi2srt.js /usr/src/

WORKDIR /usr/src
RUN npm install --save
ENTRYPOINT ["node", "/usr/src/smi2srt.js"]