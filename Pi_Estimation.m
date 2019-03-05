%Toan Nguyen
%Homework 5
%MECE 5397/6397
%Assignment 5A

% Estimate the number of Monte Carlo points needed to get 2,
% 4, 8 and 16 decimal places of accuracy. (try to get as many
% accurate decimal digits that your computer can handle)
% What would be the effect of using single precision vs double
% precision for your calculations?


%% Pi Value
%housekeeping
close all
clc
clear all 
%constant variable
attempt_value = 100;
point_area = 0;
point_total = attempt_value;
radius = 1;

%creating the accuracy
%setting the decimal point
n = 2; 
%setting the digital digits
digitsOld = digits(n);

%for loop for random value
for i=1:1:attempt_value
    coordinates_x = vpa(randi([0,radius*10])/10);
    coordinates_y = vpa(randi([0,radius*10])/10);
    length_xy = sqrt(coordinates_x^2+coordinates_y^2);
    if length_xy <= radius
        point_area = point_area + 1;
    end
end
%calculate the pi estimate
pi_estimation = vpa((point_area/point_total)*4);

%calculation of the error
pi_actual = vpa(pi);

digitsOld = digits(100);
percent_error = (pi_estimation)*100/(pi_actual);

%print stuff out
fprintf('Calculated pi value = %f\n',pi_estimation)
fprintf('Actual pi value = %f\n',pi_actual)
fprintf('Percent Error Value = %0.2f\n',percent_error)





