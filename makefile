OBJS1 = suspect2.o twoloophiggs.o bsg.o
OBJS2 = sdecay.o
OBJS3 = susylha.o hgaga.o hdecay.o

FC=g77

.f.o: 
	$(FC) -c -finit-local-zero $*.f

susyhit: $(OBJS1) $(OBJS2) $(OBJS3)
	$(FC) $(OBJS1) $(OBJS2) $(OBJS3) -o run