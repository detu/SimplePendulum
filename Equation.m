function xdot = Equation(~,x)
% Set the input values in order to pass onto ode45
%
n     = length(x);
phi   = x(1);
dtphi = x(2);
g     = x(3); 
m     = x(4); 
l     = x(5);
b     = x(6);
u     = x(7);
%
w0  = g/l;
eta = b/(m*l);
uc  = u/(m*l*l);

xdot    = zeros(n,1);
xdot(1) = x(2);
%xdot(2) = -w0*sin(phi) - eta*dtphi + uc;

% test feedback linearization
k1 = 2; % k1 and k2 should be computed. this is just testing
k2 = 5;
xdot(2) = -w0*sin(phi) - eta*dtphi + w0*sin(phi) - k1*phi - k2*dtphi;

