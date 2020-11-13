build:
	swift build -c release

build-debug:
	swift build

install:
	cp .build/release/sony-reconnect /usr/local/bin
