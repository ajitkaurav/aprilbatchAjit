FROM node:18 AS build
WORKDIR /angularapp
COPY package*.json ./
RUN npm cache clean --force
RUN npm ci
COPY . .
RUN npm run build --prod

FROM nginx:latest
COPY --from=build /angularapp/dist/angular-app /usr/share/nginx/html
EXPOSE 85
CMD ["nginx", "-g", "daemon off;"]