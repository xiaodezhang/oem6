OBJECT = rcvraw.o novatel.o rtkcmn.o oem6.o
test : $(OBJECT)
	gcc -g $(OBJECT)
$(OBJECT) : %.o : %.c
	gcc -c -g $<
clean :
	rm *.o *.exe
