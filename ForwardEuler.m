clear all;
% we are solving x'=f(x,t) using Forward Euler
 
% for example from class, x'=-tx+0.1x^3
x0=1; % starting value of x, x(t0)
t0=0; % starting time
T=1; %final time
N=2; % number of  steps to take
 
h=(T-t0)/N; % time step
ts=t0:h:T; % all the times at which we will approximate the solution
 
xsF=zeros(1,N+1); % saves all values of x for Forward Euler
xsF(1)=x0;
 
%xold=x0;
 
for n=1:N
    xsF(n+1)=xsF(n)+h*(-ts(n)*xsF(n)+0.1*xsF(n)^3); % in parentheses is f(x,t) -- Forward Euler
    % Output at each step
    disp(['Forward Euler predicts the value x(' num2str(ts(n+1)) ')=' num2str(xsF(n+1))])
end
 
plot(ts,xsF,'ko-') % this plots in black (k) with circles (o) at each point and connects the dots with lines (-)
grid on
xlabel('t') % this gives the label between quotes to the horizontal axis
ylabel('x') % this gives the label between quotes to the vertical axis
