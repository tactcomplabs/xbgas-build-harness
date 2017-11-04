#-------------------------------------------------------
#-- XBGAS SAMPLE ASM FILE
#-------------------------------------------------------

  .file "xbgas.s"
  .text
  .align 2

#----------------------- XBGAS_FUNC
  .align 2
  .globl xbgas_func
  .type xbgas_func, @function
xbgas_func:
  jalr x0,x1,0    #-- return

# EOF
