 load('matriculaPS1.mat')
 a01633926=matricula;
 a = 17;
 b = 9;
 c= 26;
 u = a/2;
 a01633926.general.a=a;
 a01633926.general.b=b;
 a01633926.general.c=c;
 num1 = [a];
 den1 = [c b];
 a01633926.P01.num=num1;
 a01633926.P01.den=den1;
 G1 = tf(num1,den1);
 k = b;
 a01633926.P01.OL.tau=3/5;
 