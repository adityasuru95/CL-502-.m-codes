clc;clear ; close all

initial_val = [4 6];
xint = 0;
xend = 10;
integration_interval = [0 2];
h = 0.1;


prob = @func;
[x, y] = multirk4(prob,initial_val, xint,xend,h);

plot(x,y(:,1),'r*')
hold on
plot(x,y(:,2),'b*')

%Surabhi, include legend
