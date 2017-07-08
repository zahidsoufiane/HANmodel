# makefile for System: HAN

sctAUTOCFGDEP =
sctCOMPFLAGS = -DXUSE_GENERIC_FUNC

!include $(SCTDIR)\make.opt

IFC_FILENAME = C:\Users\ZAHID\Desktop\HAN_v3\organizer\HAN.ifc

default: HAN$(sctEXTENSION)

HAN$(sctEXTENSION): \
  HAN$(sctOEXTENSION) \
  HANmessages$(sctOEXTENSION) \
  $(sctLINKKERNELDEP)
	$(sctLD) @<<
	$(sctLDFLAGS)
	 HAN$(sctOEXTENSION) HANmessages$(sctOEXTENSION) $(sctLINKKERNEL)
	/OUT:HAN$(sctEXTENSION)
<<

HAN$(sctOEXTENSION): \
  HAN.c \
  HANmessages.h
	$(sctCC) @<<
	$(sctCPPFLAGS) $(sctCCFLAGS)
	$(sctIFDEF)
	/FoHAN$(sctOEXTENSION)
	HAN.c
<<

HANmessages$(sctOEXTENSION): \
  HANmessages.c \
  HANmessages.h
	$(sctCC) @<<
	$(sctCPPFLAGS) $(sctCCFLAGS)
	$(sctIFDEF)
	/FoHANmessages$(sctOEXTENSION)
	HANmessages.c
<<

clean: clean_gen_objs clean_kernel_objs

clean_gen_objs:
	$(sctRM) \
  HAN$(sctOEXTENSION) \
  HANmessages$(sctOEXTENSION) \
  HAN$(sctEXTENSION)
