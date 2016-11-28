% [hist, lHist, vel, collision] = Drive(robot, 0.1, [0; 0], maze, Ts);
% HistoryUpdate;
%
%  for bb=1:1000
%            xPose = robot.pose(1)+((a-b)/2+b/2)*cos(robot.pose(3));
%         yPose = robot.pose(2)+((a-b)/2+b/2)*sin(robot.pose(3));
%
%         if laserHist(3,end) < 1.5 && laserHist(1,end) < 3 &&  laserHist(3,end)<laserHist(2,end)
%             [hist, lHist, vel, collision] = Drive(robot, 0.1, [1; 0], maze, Ts);
%              HistoryUpdate;
%         elseif laserHist(2,end) < 1.5 && laserHist(1,end) < 3 && laserHist(3,end)>laserHist(2,end)
%             [hist, lHist, vel, collision] = Drive(robot, 0.1, [0; 1], maze, Ts);
%              HistoryUpdate;
%         else
%
%         if     atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) <robot.pose(3,end)
%              [hist, lHist, vel, collision] = Drive(robot, 0.1, [0;1], maze, Ts);
%              HistoryUpdate;
%
%         elseif   atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) >robot.pose(3,end)
%                        [hist, lHist, vel, collision] = Drive(robot, 0.1, [1; 0], maze, Ts);
%              HistoryUpdate;
%
%
%         else
%
%
%             [hist, lHist, vel, collision] = Drive(robot, 0.1, [1; 1], maze, Ts);
%              HistoryUpdate;
%         end
%
%
%
%         end
%
%   end
%
a = robot.size(1);  % robot length
b = robot.size(2);
[hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 1], maze, Ts);
HistoryUpdate;

while(~collision && ~goal)
    
    xPose = robot.pose(1)+((a-b)/2+b/2)*cos(robot.pose(3));
    yPose = robot.pose(2)+((a-b)/2+b/2)*sin(robot.pose(3));
    % dis_to_goal = sqrt((laserPose(1,end)-robot.goal(1))^2 + (laserPose(2,end)-robot.goal(2))^2);
    
    % relativeAngle = laserPoseGoal(3) - robot.pose(3); %To be consistant with other laser angles -> +: goal is on left, -: goal is on right

    
    %         if laserHist(1,end) < 4
    %           if   laserHist(3,end) < 3
    %                [hist, lHist, vel, collision] = Drive(robot, 0.1, [1; 0], maze, Ts);
    %                HistoryUpdate;
    %           elseif   laserHist(2,end) < 3
    %                [hist, lHist, vel, collision] = Drive(robot, 0.1, [0; 1], maze, Ts);
    %              HistoryUpdate;
    %           end
    %
    if( gtHist(2,end)==0)
    
    if laserHist(4,end) < 3 || laserHist(5,end)<2.6
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(3,end)<2.6
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;

    elseif laserHist(6,end)<2.3
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(2,end)<2.3
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(7,end)<2.1
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(1,end)<2.1
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;
        
    else
        
         [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 1], maze, Ts);
        HistoryUpdate;
        % ANGLE = atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) - robot.pose(3)
        % IF ANGLE > pi
        %   ANGLE = ANGLE - 2*pi
        % END
        
%         if     atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) <  robot.pose(3)
%             [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1;0], maze, Ts);
%             HistoryUpdate;
%             
%         elseif   atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) > robot.pose(3)
%             [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
%             HistoryUpdate;
%             
%         elseif (atan2(robot.goal(2) - yPose, robot.goal(1) - xPose)) ==  robot.pose(3)
%             [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 1], maze, Ts);
%             HistoryUpdate;
%           
%         end
    end
    elseif(gtHist(2,end)==1)   
        
         if laserHist(5,end)<1.3
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(3,end)<1.3
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;

    elseif laserHist(6,end)<1
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(2,end)<1
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(7,end)<0.8
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 0], maze, Ts);
        HistoryUpdate;
        
    elseif laserHist(1,end)<0.8
        [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
        HistoryUpdate;
    
        
           
        
        
        
        
        
    else
        if     atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) <  robot.pose(3)
            [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1;0], maze, Ts);
            HistoryUpdate;
            
        elseif   atan2(robot.goal(2) - yPose, robot.goal(1) - xPose) > robot.pose(3)
            [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [0; 1], maze, Ts);
            HistoryUpdate;
            
        elseif (atan2(robot.goal(2) - yPose, robot.goal(1) - xPose)) == robot.pose(3)
            [hist, lHist, vel, gHist, collision, goal] = Drive(robot, 0.1, [1; 1], maze, Ts);
            HistoryUpdate;
          
        end
         end
    end
        
    
end