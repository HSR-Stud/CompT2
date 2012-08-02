REPEAT:    
  TST.D0           Test the lower order byte of D0
  BEQ     EXIT     If zero then quit loop
  S                Body of loop (Action S)
  BRA     REPEAT   Repeat
EXIT: