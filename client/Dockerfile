# BAse image
FROM node:alpine as builder

# Setup Dir
COPY ./package.json ./
RUN npm install
COPY . .

# Build
RUN npm run build

# Copy to Nginx
FROM nginx
EXPOSE 3000
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build /usr/share/nginx/html
