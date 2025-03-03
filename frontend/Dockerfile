# Use Node.js for Angular build
FROM node:18 AS build
WORKDIR /app
COPY . .
RUN npm install && npm run build --prod

# Use Nginx for serving the app
FROM nginx:latest
COPY --from=build /app/dist/my-angular-app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
