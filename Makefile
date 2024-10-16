#--------------------------------------------------------------------
include	./Makefile.git
#--------------------------------------------------------------------
#nothing to do
clean	:
	   @ rm -fr $(APLR) $(APLR).tar.gz
	
#--------------------------------------------------------------------
dotar	:
	  @ echo "Preparing Tar file"
	  @ rm -fr $(APLR)
	  @ mkdir $(APLR)
	  @ cp -a					\
		AUTHORS					\
		BUILDING				\
		disk-images				\
		etc					\
		LICENSE					\
		man					\
		meson.build				\
		README					\
		script					\
		test					\
		turtle_graphics				\
		ucsdpsys_vm				\
		ucsdpsys_xturtleserver			\
		web					\
		$(APLR)
	  @ tar 					\
		zcf $(APLR).tar.gz			\
		$(APLR)
	  @ echo "Tar file is now ready"


#--------------------------------------------------------------------
APP	=  ucsd-psystem-vm
APLR	=  $(APP)-$(VERSION).$(RELEASE)
#--------------------------------------------------------------------
