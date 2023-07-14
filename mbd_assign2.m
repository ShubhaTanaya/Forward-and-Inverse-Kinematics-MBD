clc;
clear;
alpha = input("Enter the value of alpha in degrees = ");
theta1 = input("Enter the value of theta1 in degrees = ");
theta2 = input("Enter the value of theta2 in degrees = ");
d = input("Enter the value of d in meters= ");
a=alpha*(pi/180);
b=theta1*(pi/180);
c=theta2*(pi/180);

l1 = 3;
l2 = 3;

M0 = transformation_matrix(a, -pi/2, 0, 0);
M1 = transformation_matrix(b, 0, 0, l1);
M2 = transformation_matrix((pi/2)+c, pi/2, 0, 0);
M3 = transformation_matrix(0, 0, l2+d, 0);

final_matrix = M0 * (M1 * (M2 * M3));
disp("x final position is " + final_matrix(1,4));
disp("y final position is " + final_matrix(2,4));
disp("z final position is " + final_matrix(3,4));
