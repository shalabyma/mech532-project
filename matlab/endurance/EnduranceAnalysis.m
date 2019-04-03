%Endurance Analysis Main

clc
clear all

%setup plane 
wingID = '2208';
plane = genPlane(wingID);

%calculate total endurance

total_climb = 100;

map_param.v = 1:0.5:20;        %Velocity 
map_param.theta = 1:0.25:45;        %theta
map_param.alpha = -5:0.1:10;       %alpha


[~,map] = optimizeClimbparam(plane, total_climb, map_param);


%%
[C,I] = min(map(:));

[I,J,K] = ind2sub(size(map),I);


climb_v = map_param.v(I);
climb_theta = map_param.theta(J);
climb_alpha = map_param.alpha(K);





