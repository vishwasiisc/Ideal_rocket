%ideal rocket simulation

clear, close all
clc

%% initilation 

params=load_parameters;
phi=deg2rad(0); 
theta=deg2rad(-90); %gimbal angle
F0=50;
%Ft=[0;0];

v0=[0,0];
r0=[0,0];
phi_dot=0;

ic=[r0,phi,v0,phi_dot]';
u=[F0,theta]';


dt=0.01;
timesteps=200;

%% dynamics and euler integration
[t_plt,r_plt]=myeulerintegrator(ic,params,u,dt,timesteps);

    
%% Plotting and animation

animation(r_plt)







