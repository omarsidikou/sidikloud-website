FROM klakegg/hugo:0.93.2
LABEL key="Omar S."

ENV HUGO_ENV=PROD
ENV PORT=8080

WORKDIR /src

COPY . /src/

EXPOSE ${PORT}

ENTRYPOINT ["hugo","server","-D"]