clc
clear all
clear all

syms x;
f(x)=1/x;
b=input('Enter upper limit:');
a=input('Enter lower limit:');
n=input('Enter number of intervals:');
i=a;
h=(b-a)/n;
sum=0;
disp('Interval  f(x)');
for i=a:h:b
    ft=subs(f(x),x,i);
    t=sprintf('%f\t%f',i,ft);
    disp(t);
    if (i==a||i==b)
        sum=sum+ft;
    else
        sum=sum+(2*ft);
    end
    i=i+h;
end
v=h/2*(sum);
fprintf('Required answer is = %f', v);
