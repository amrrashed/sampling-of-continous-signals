clc; clear all; close all;
t=0:0.01:3;
a=sin(2*pi*t);% message signal
p=square(2*pi*10*t);%carrier signal
p(p<0)=0;
s=a.*p;
subplot(4,1,1)
plot(t,a)
xlabel('time')
ylabel('amplitude')
title('message signal')
subplot(4,1,2)
plot(t,p)
xlabel('time')
ylabel('amplitude')
title('carrier signal')
subplot(4,1,3)
plot(t,s)
xlabel('time')
ylabel('amplitude')
title('natural sampling')
y=uencode(s,3,1);
subplot(4,1,4)
plot(t,y)
xlabel('time')
ylabel('amplitude')
title('flat top sampling')
