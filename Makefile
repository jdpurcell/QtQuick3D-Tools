all: desktop run

desktop: clean
	./example/build.sh

web: clean
	./example/build-web.sh "$(QT_VERSION)"

run-web:
	./emsdk/upstream/emscripten/emrun ./build/example/index.html --kill_start --kill_exit

run:
	./build/example/exampleExec

clean:
	rm -rf build CMakeLists.txt.user

.PHONY: clean run run-web
