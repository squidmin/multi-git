#FROM golang:1.20-alpine
FROM golang:1.20

ENV USR_LOCAL_DIR=/usr/local
ENV APP_DIR=${USR_LOCAL_DIR}/app
ENV BUILD_PATH=${USR_LOCAL_DIR}/bin/mg

ENV MG_ROOT=../app/pkg/repo_manager/gitrepos
ENV MG_REPOS=repo-1,repo-2

WORKDIR ${APP_DIR}

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
#RUN mkdir ${BUILD_PATH}
RUN mkdir -p ${MG_ROOT}/repo-1
RUN mkdir -p ${MG_ROOT}/repo-2
RUN go build -v -o ${BUILD_PATH} ./cmd/mg

CMD ["sh", "-c", "cd ${APP_DIR} && mg && sh"]
#CMD ["mg"]
