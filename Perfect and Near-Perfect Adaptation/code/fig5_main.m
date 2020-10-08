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
clear;
