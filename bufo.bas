10 REM BUFFONS NEEDLE PROGRAM
15 LET T1 = 0
16 LET T2 = 0
20 FOR K = 1 TO 1000
30 LET D = 2*RND(1)
40 LET T = 3.14159*RND(1)
50 LET D1 = SIN(T)
60 LET T1 = T1 + 1
70 IF D > D1 THEN 90
80 LET T2 = T2 + 1
90 NEXT K
100 LET P1 =T1/T2
110 PRINT "APPROXIMATION TO PI IS",P1
120 END
