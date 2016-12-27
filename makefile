all: hello.exe
	@echo 'Building target: $@. First dependency is: $<'
	
# $@ matches the target; $< matches the first dependent
hello.exe: hello.o
	gcc -o $@ $<
 
hello.o: hello.c
	gcc -c $<
      
clean:
	rm hello.o hello.exe
