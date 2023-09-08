FROM golang:1.20

LABEL Author = "NoobForAl"
LABEL VERSION = "1.20"

RUN go install golang.org/x/tools/cmd/godoc@latest

EXPOSE 80

CMD [ "godoc", "-http=:80" ]