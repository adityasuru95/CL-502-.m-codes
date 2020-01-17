function Dd = prob2(x,y)

T = y(1);
c = y(2);

dTdx = -0.5*T;
dcdx = 4 - 0.3*c - 0.1*T;

Dd = [dTdx dcdx];
