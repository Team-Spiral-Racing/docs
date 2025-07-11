#################################
#   Multi Stage Docker Server   #
#################################

# ----- Builder -----
FROM node:20 as builder

# Build files
COPY . .
RUN npx hyperbook build


# ----- Server -----
FROM nginx:alpine

# Serve files
COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder ./.hyperbook/out /usr/share/nginx/html
EXPOSE 80