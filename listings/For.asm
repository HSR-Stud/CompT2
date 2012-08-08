  MOVE.B  #N1,D0   * initalize DO as loop counter
NEXT:    
  CMP.B   #N1,D0   * check for end of loop
  BCC     EXIT     * exit if end of loop
  ..S..            * --> do what has to be done
  ADDQ.B  #1,D0    * increment loop counter
  BRA     NEXT
EXIT:
