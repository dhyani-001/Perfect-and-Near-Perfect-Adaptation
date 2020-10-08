clc ; close all ; clear all ;
IC=[0;0];
T=xlsread('fig2_input.xlsx','A2:A52');
I=xlsread('fig2_input.xlsx','B2:B52');
timer_scale=[0 50];
[t,y]=ode45(@(t,y) fig2(t,y,T,I),timer_scale,IC);
figure

subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('feedback');
xlabel('time');
%%%%%%%%%%%%%%%%%%%%
IC=[0;0];
T=xlsread('fig2_input.xlsx','A2:A52');
I=xlsread('fig2_input.xlsx','C2:C52');
timer_scale=[0 50];
[t,y]=ode45(@(t,y) fig2(t,y,T,I),timer_scale,IC);
figure

subplot(1,2,1);
plot(t,y(:,1));
ylabel('output');
xlabel('time');

subplot(1,2,2);
plot(t,y(:,2));
ylabel('feedback');
xlabel('time');

%%%%%%%%%%%%%%%%%%%%%

syms x y;
var = [x, y];
a1 = 200;
a2 = 200;   
a3=10;
a4=4;
k3=0.01;
k4=0.01;
f1 = a1*0.2*(1-x) - a2*x*y;
f2 = (a3*x) * ((1-y)/(k3+(1-y))) - a4* ((y)/(k4+y));
f = [f1 f2];
[sol1, sol2] = vpasolve(f);

J = jacobian([f1, f2], var);

for k=1:length(sol1)
    x= sol1(k)
    y = sol2(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear

syms x y;
var = [x, y];
a1 = 200;
a2 = 200;   
a3=10;
a4=4;
k3=0.01;
k4=0.01;
f1 = a1*0.4*(1-x) - a2*x*y;
f2 = (a3*x) * ((1-y)/(k3+(1-y))) - a4* ((y)/(k4+y));
f = [f1 f2];
[sol1, sol2] = vpasolve(f);

J = jacobian([f1, f2], var);

for k=1:length(sol1)
    x= sol1(k)
    y = sol2(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear

syms x y;
var = [x, y];
a1 = 200;
a2 = 200;   
a3=10;
a4=4;
k3=0.01;
k4=0.01;
f1 = a1*0.6*(1-x) - a2*x*y;
f2 = (a3*x) * ((1-y)/(k3+(1-y))) - a4* ((y)/(k4+y));
f = [f1 f2];
[sol1, sol2] = vpasolve(f);

J = jacobian([f1, f2], var);

for k=1:length(sol1)
    x= sol1(k)
    y = sol2(k);
    A = subs(J);
    [eigvec, eigval] = eig(A);
end
disp(eigvec)
clear


