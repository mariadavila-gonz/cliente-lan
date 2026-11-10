
FROM python:alpine

WORKDIR /app

RUN apk add --no-cache curl bind-tools

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

EXPOSE 10000

CMD ["sh", "/app/entrypoint.sh"]

