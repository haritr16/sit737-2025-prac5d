FROM node:16

#xreate app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY server.js .

EXPOSE 8081

# Add healthcheck (adjust if your server responds on a different route)
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl --fail http://localhost:8081 || exit 1

  
CMD ["node", "server.js" ]
