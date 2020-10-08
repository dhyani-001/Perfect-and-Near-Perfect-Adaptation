clc ; close all ; clear all ;
timerange=[0 200];
IC=[0;0;0;0];
T=xlsread('fig5_input.xlsx','A2:A202');
I=xlsread('fig5_input.xlsx','B2:B202');
[t,y]=ode45(@(t,y) fig5(t,y,T,I),timerange,IC);
figure
subplot(1,2,1);
plot(t,y(:,3));
ylabel('feedback');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('output');
xlabel('time');
clear;
%%%%%%%%%%%%%%%%%%%%%%%%
%with changed input
%%%%%%%%%%%%%%%%%%%%%%%%%%%
timerange=[0 200];
IC=[0;0;0;0];
T=xlsread('fig5_input.xlsx','A2:A202');
I=xlsread('fig5_input.xlsx','C2:C202');
[t,y]=ode45(@(t,y) fig5(t,y,T,I),timerange,IC);
figure
subplot(1,2,1);
plot(t,y(:,3));
ylabel('feedback');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('output');
xlabel('time');
%%%%%%%%%%
%jacobian
%%%%%%%%%%

clear;
syms w x y z;
var = [w,x, y,z,];
 a1 = 1;
 a2 = 3;
 a3=2;
 a4=1;
 a5=50;
 a6=1;
 f1=a1*z-a2*w;
 f2=a3*0.5*w-a4*x;
 f3=a4*x-a5*y*z;
 f4=a6-a5*y*z;
 
 f = [f1 f2 f3 f4];
[sol1, sol2, sol3, sol4] = vpasolve(f);

J = jacobian([f1 f2 f3 f4], var);

for k=1:length(sol1)
    w= sol1(k);
    x = sol2(k)
    y= sol3(k);
    z=sol3(k);
    A = subs(J);
    
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear;

syms w x y z;
var = [w,x, y,z,];
 a1 = 1;
 a2 = 3;
 a3=2;
 a4=1;
 a5=50;
 a6=1;
 f1=a1*z-a2*w;
 f2=a3*1*w-a4*x;
 f3=a4*x-a5*y*z;
 f4=a6-a5*y*z;
 
 f = [f1 f2 f3 f4];
[sol1, sol2, sol3, sol4] = vpasolve(f);

J = jacobian([f1 f2 f3 f4], var);

for k=1:length(sol1)
    w= sol1(k);
    x = sol2(k)
    y= sol3(k);
    z=sol3(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear;
syms w x y z;
var = [w,x, y,z,];
 a1 = 1;
 a2 = 3;
 a3=2;
 a4=1;
 a5=50;
 a6=1;
 f1=a1*z-a2*w;
 f2=a3*1.5*w-a4*x;
 f3=a4*x-a5*y*z;
 f4=a6-a5*y*z;
 
 f = [f1 f2 f3 f4];
[sol1, sol2, sol3, sol4] = vpasolve(f);

J = jacobian([f1 f2 f3 f4], var);

for k=1:length(sol1)
    w= sol1(k);
    x = sol2(k)
    y= sol3(k);
    z=sol3(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear;