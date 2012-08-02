  TST.B  D0     Test the lower order byte of D0
  BEQ    ELSE   If zero then S2 (ELSE part)
  S1            If not zero then S1 (THEN part)
  BRA    EXIT   Skip past ELSE part
ELSE:    
  S2            Action S2 (ELSE part)
EXIT