function [v1] = electron1D()
% 1D electron trajectory simulation

clear

time = 2:1000;
v1 = zeros(size(time));
x1 = zeros(size(time));

v2 = zeros(size(time));
x2 = zeros(size(time));

for t=2:1000
    
    % VELOCITY
    random = rand;
    
    if random <= 0.05
       v1(t) = 0;
    else
        v1(t) = v1(t-1) + 1;
    end
    
    random2 = rand;
    if random2 <= 0.05
       v2(t) = 0;
    else
       v2(t) = v2(t-1) + 1;
    end
    
    figure(1);
    plot(time,v1);
    axis([0 1000 0 80])
    xlabel('time');
    ylabel('v');
    averageV = sum(v1)/t;
    title(["P1 Drift Velocity: " num2str(averageV)]);
    
    
    % POSITION
    x1(t) = x1(t-1) + v1(t)*t;
 
    figure(2);
    plot(time,x1);
    axis([0 1000 0 1000000])
    xlabel('time');
    ylabel('x');
    title('Position');
    
    figure(3);
    plot(time,v2);
    axis([0 1000 0 80])
    xlabel('time');
    ylabel('v');
    averageV = sum(v1)/t;
    title(["P2 Drift Velocity: " num2str(averageV)]);
    
    
end

end

