FAISS_SHARED_LIB := $(abspath ./dylib)

export FAISS_SHARED_LIB

install:
	go mod tidy

build: install
	# Указываем путь к shared-библиотеке с переменной окружения
	FAISS_SHARED_LIB=$(FAISS_SHARED_LIB) go build -o my_project

run: build
	FAISS_SHARED_LIB=$(FAISS_SHARED_LIB) ./my_project

clean:
	rm -f my_project
