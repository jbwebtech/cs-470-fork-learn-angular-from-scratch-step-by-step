FROM node:10
WORKDIR /usr/src/lafs
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install @angular/cli@v6-lts --global --silent
RUN npm install --silent
COPY . .
EXPOSE 4200
CMD ng serve --host 0.0.0.0
