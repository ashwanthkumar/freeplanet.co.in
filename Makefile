APPNAME = freeplanet
VERSION = 0.1.0-dev

GLIDE_VERSION = 0.9.0

install-glide:
	wget "https://github.com/Masterminds/glide/releases/download/${GLIDE_VERSION}/glide-${GLIDE_VERSION}-linux-amd64.tar.gz"
	mkdir -p $HOME/bin
	tar -vxz -C $HOME/bin --strip=1 -f glide-${GLIDE_VERSION}-linux-amd64.tar.gz
	export PATH="$HOME/bin:$PATH"

setup:
	glide install

build-all: build-mac build-linux

build:
	go build -o ${APPNAME} .

build-server:
	go build -o ${APPNAME}-server github.com/ashwanthkumar/freeplanet.co.in/server

build-linux:
	GOOS=linux GOARCH=amd64 go build -ldflags "-s -X main.Version=${VERSION}" -v -o ${APPNAME}-linux-amd64 .

build-mac:
	GOOS=darwin GOARCH=amd64 go build -ldflags "-s -X main.Version=${VERSION}" -v -o ${APPNAME}-darwin-amd64 .

ci:
	APPNAME=${APPNAME} bin/ci-run.sh

clean:
	rm -f ${APPNAME}
	rm -f ${APPNAME}-linux-amd64
	rm -f ${APPNAME}-darwin-amd64

all:
	setup
	build
	install

test:
	go test -v github.com/ashwanthkumar/freeplanet.co.in

test-only:
	go test -v github.com/ashwanthkumar/freeplanet.co.in/${name}

install: build
	sudo install -d /usr/local/bin
	sudo install -c ${APPNAME} /usr/local/bin/${APPNAME}

uninstall:
	sudo rm /usr/local/bin/${APPNAME}
