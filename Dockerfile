FROM golang:1.20

LABEL Author = "NoobForAl"
LABEL VERSION = "1.20"

WORKDIR /app

RUN go mod init godocDocker

RUN go get golang.org/x/tools/cmd/godoc@latest

EXPOSE 80

CMD [ "godoc", "-http=:80" ]