FROM golang:1.15

LABEL Author = "NoobForAl"
LABEL VERSION = "1.15"

WORKDIR /app

RUN go mod init godocDocker

RUN go get golang.org/x/tools/cmd/godoc@latest

EXPOSE 80

CMD [ "godoc", "-http=:80" ]