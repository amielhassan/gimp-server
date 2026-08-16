FROM node:14

WORKDIR /app
COPY . .
RUN npm ci

RUN groupadd -r appgroup && useradd -r -g appgroup appuser
RUN chown -R appuser:appgroup /app
USER appuser

ENTRYPOINT []
CMD ["node", "server.js"]

