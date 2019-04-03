function [outPlane] = genPlane(wingConfig)
%genPlane generates a plan structure with all parameters for a given wing
%configuration.

%test parameters
plane.test.rho = 1.225;

%aircraft parameters
if strcmp(wingConfig,'2208')

    load('plane2208.mat');

    %Performance 
    plane.CD(:,1) = plane2208(:,1);
    plane.CD(:,2) = plane2208(:,6);
    plane.CL(:,1) = plane2208(:,1);
    plane.CL(:,2) = plane2208(:,3);
    %structure
    plane.m = 2.2;
    plane.S = 0.36;

elseif strcmp(wingConfig,'2512')
    load('plane2512.mat');
    %Performance 
    plane.CD(:,1) = plane2512(:,1);
    plane.CD(:,2) = plane2512(:,6);
    plane.CL(:,1) = plane2512(:,1);
    plane.CL(:,2) = plane2512(:,3);
    %structure
    plane.m = 2.2;
    plane.S = 0.36;

else 
    disp('Please enter a valid wing configuration');
end

outPlane = plane;
end

