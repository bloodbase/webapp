FROM node:17-alpine

ENV PATH="/scripts:${PATH}"

RUN mkdir /app
WORKDIR /app
COPY ./app /app
COPY ./scripts/ /scripts/
RUN chmod +x /scripts/*

RUN adduser -D user
USER user

CMD ["entrypoint.sh"]