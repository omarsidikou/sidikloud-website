FROM klakegg/hugo:0.93.2
LABEL key="Omar S."

ENV HUGO_ENV=PROD
ENV PORT=8080

WORKDIR /src

COPY . /src/

EXPOSE ${PORT}

ENTRYPOINT ["hugo","server","-D" ,"--appendPort=false","-b", "http://sidikloud.com/" ,  "-p" , "8080"]