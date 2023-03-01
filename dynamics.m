function q_dot=dynamics(ic,params,u)

%q_dot=x_dot,y_dot
%ic=initial condition
%params= parameters, stays constant during entire simulation

n=length(ic);

q_dot=zeros(n/2,1);
phi=ic(3);
F0=u(1);
theta=u(2);


%forces
Fg=[0;-params.m*params.g];
Ft=[F0*sin(phi-theta);F0*cos(phi-theta)];


%angular accleration
alpha_phi=F0*sin(theta)*params.d/params.I;

%total force and accleration
F=Ft+Fg;
a=F/params.m;

%function output
q_dot(1)=a(1);        %x-y accleration
q_dot(2)=a(2);
q_dot(3)=alpha_phi;   %angular accleration inertaial frame

end