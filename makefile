CC = gcc
FILES = src/logic.c src/logic_test.c lib/seatest.c
MAIN_FILES = $(FILES) src/main.c
TEST_FILES = $(FILES) src/run_test.c 
OUT_EXE = main
TEST_EXE = test

build: $(MAIN_FILES)
	$(CC) -o $(OUT_EXE) $(MAIN_FILES) -I src -I lib

test: $(TEST_FILES)
	$(CC) -o $(TEST_EXE) $(TEST_FILES) -I src -I lib	

clean:
	rm -f *.o core $(OUT_EXE) $(TEST_EXE)

rebuild: clean build