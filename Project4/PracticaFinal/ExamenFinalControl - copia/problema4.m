A9 = [0 1 0; 0 0 1;1683 -439 37]
B9 =[0 0 1]'
C9 = [1 0 0]
Areq4 = [0 1 0;0 0 1; -6 -11 -6]
G9 = tf(10 ,[1 -37 439 -1683])
K9 = acker(A9,B9,[-1,-2,-3])
L9=acker(A9',C9',[-10 -11 -12])'