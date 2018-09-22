% Simulation of Simple Pendulum

clear ;clc ;
format long;
% Properties of Pendulum 
g  = 9.81;           % Acceleration due to gravity [m/sec^2]
m  = 0.5;            % Mass of the pendulum  [kg]
l  = 1;              % Length of the Pendulum [m}
b  = 0;              % Damping [N.m]
%u  = -0.5;          % applied Torque /Load [N.m]
u  = 0;

% Initial Boundary Conditions 
Phi   = 3.14159;        % Position [radians] at 180 degree
%Phi   = 1e-3;           % Position [radians] at 0 degree
%Phi   = 0.2618;          % 15 degree
%Phi   = 1.5708;          % 90 degree
dtPhi = 1;               % Velocity [rad/sec]

% Simulation parameters
duration = 60;                             % Duration of the Simulation 
fps      = 10;                             % Frames per second
%movie   = true;                           % true if wanted to save animation as avi file
movie    = false ;                         % false if only want to view animation
arrow    = 'ShowArrow' ;                   % Shows the direction of phase plane plot
%arrow   = 'NoNoArrow' ;                   % Will not show the direction of phase plane plot
interval = [0, duration];                  % Time span
ivp      = [Phi; dtPhi; g; m; l ; b; u];  % Initial value's for the problem
% Simulation of Simple Pendulum
Animation(ivp, duration, fps, movie,arrow);