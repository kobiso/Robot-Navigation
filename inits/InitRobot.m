%INITIALIZATION
%   robot.pose - pose of the robot [x; y; theta]
%   robot.param - robot parameters [wheels separation; wheel1 radius; wheel2 radius]
%   robot.size - size of robot's body [length; width]
%   robot.laserAngles - angles of the lasers; [rightmost to leftmost]
%   robot.goal = the goal [x, y, goal boundary radius]

%Number of sensors on robot
sensor_num = 7;

%Sensor angle for leftmost sensor x (rightmost sensor's angle will be -x, others will be evenly spread between two sensors)
sensor_ang = pi/2;

%initialize the robot - Initial position 0.5 away from (9, -9)
random_angle = 2*pi*rand(1,1);
robot  = struct('pose', [9+0.5*cos(random_angle);-9+0.5*sin(random_angle); 3*pi/4] ,'param',[5; 2; 2], 'size', [1.5, 1], 'laserAngles', -sensor_ang:2*sensor_ang/(sensor_num - 1):sensor_ang, 'goal',[0; 0; 0.3]);

%initialize the robot - Initial position is fixed at (9, -9)
% robot  = struct('pose', [9;-9; 3*pi/4] ,'param',[5; 2; 2], 'size', [1.5, 1], 'laserAngles', -sensor_ang:2*sensor_ang/(sensor_num - 1):sensor_ang, 'goal',[0; 0; 0.3]);

%other parameters
collision = 0;
goal = 0;

%initialize history
poseHist = [];
laserHist = [];
velHist = [];
gtHist = [];