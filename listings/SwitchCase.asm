* I=0 Action0
* I=1 Action1
* .
* I=N ActionN
* I>N Exception

  CMP.B    #N,I         Test for I out of Range
  BGT      EXCEPTION    IF I>N THEN exception
  MOVE.W   I,D0         Pick up the Value of I
  MULU     #4,D0        Eeach Address is a Longword
  LEA      Table,A0     A0 points to table 
                        of addresses
  LEA      (A0,D0),A0   A0 now points to case I 
                        in Table
  MOVEA.L  (A0),A0      A0 contains address of
                        case I handler
  JMP      (A0)         Executes case I handler
*
Table:
  ORG      <address>    Table of exceptions
Action0:
  DC.L     <address0>   Address of case 0 handler
Action1:
  DC.L     <address0>   Address of case 1 handler
Action2:
  DC.L     <address0>   Address of case 2 handler
.
.
Action:    
  NDC.L    <addressN>   Address of case N handler
*
EXCEPTION:        
           ...          Exception handler here
    