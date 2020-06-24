!C GASOLINE LINE SIMULATion
!       EXTERNAL RAND
       INTEGER WAIT1, SERV, CARTOT, TIME
       integer,parameter :: seed = 86456
       call srand(seed)
5      READ(5,1) N
1      FORMAT(I6)
!C      DO WHILE N GREATER THAN ZERO
       IF (N .LE. 0) GO TO   99
       SERV = 0
       WAIT1 = 0
       CARTOT = 0
       DO 10 TIME = 1, N
       SERV = MAX(SERV - 1, 0)
22     X = rand()
       IF (X .GT. 0.1) GO TO 22
       CARTOT = CARTOT + 1
       WAIT1 = WAIT1 + SERV
       SERV = SERV + 6
10     CONTINUE  
       AVWAIT = FLOAT(WAIT1) /FLOAT(CARTOT)
       WRITE(6,101) CARTOT
       write(6,103) AVWAIT
101    FORMAT(1X," AVERAGE WAIT FOR EACH OF THE ", I6) 
103    FORMAT("CUSTOMERS IS ",F6.2, " MINUTES. ")
       GO TO 5
!C END DO-WHILE
99     STOP
       END    
     

