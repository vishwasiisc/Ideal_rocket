function [t_vec,r_vec] = myeulerintegrator(ic,params,u,dt,timesteps)
%MYEULERINTEGRATOR 
%takes initial condition, systems dynamic eqn(accleration/q_dot_dot),
%tiemstep and outputs integrated vector

%ic is r0 & r0_dot

n=length(ic);

t_vec=zeros(timesteps,1);
r_vec=zeros(timesteps,n/2);
r=[ic(1:n/2)];          %initial states
r_dot=[ic((n/2)+1:n)];   %initial rates   
%disp(r_dot)

%note yet to update ic inside the loop

for i=0:timesteps

    t=i*dt;
    r_dot=r_dot+dynamics(ic,params,u)*dt; %dynamics is accleration/r_dot_dot %
    r=r+r_dot*dt;

    ic(1:n/2)=r;
    ic((n/2)+1:n)=r_dot;

    %ic(3)=r(3); %updateing phi
    
    t_vec(i+1)=t;
    r_vec(i+1,:)=r;


    %disp(r_dot)

    %disp(r)
end


