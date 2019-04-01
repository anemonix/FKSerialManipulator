%Given parameters:
L0 = 0.3;
L1 = 0.2;
L2 = 0.1;

t0 = 0.4;
t1 = 0.6;
t2 = 1.2;

%First rotation
rot0 = eye(4);
rot0(1:2, 1:2) = [cos(t0), -sin(t0); sin(t0), cos(t0)];

%Second rotation
rot1 = eye(4);
rot1(1:2, 1:2) = [cos(t1), -sin(t1); sin(t1), cos(t1)];

%Third rotation
rot2 = eye(4);
rot2(1:2, 1:2) = [cos(t2), -sin(t2); sin(t2), cos(t2)];
  
dist1 = eye(4,4);
dist1(:, 4) = [L0; 0; 0; 1];

dist2 = eye(4,4);
dist2(:, 4) = [L1; 0; 0; 1];

dist3 = eye(4,4);
dist3(:, 4) = [L2; 0; 0; 1];

% non-matrix method
x_coord = L0*cos(t0)+L1*cos(t0+t1)+L2*cos(t0+t1+t2)
y_coord = L0*sin(t0)+L1*sin(t0+t1)+L2*sin(t0+t1+t2)

t0deg = rot0*dist1;
t1deg = rot1*dist2;
t2deg = rot2*dist3;

transformation_mat = t0deg*t1deg*t2deg
disp('As we can see, x-value (.3255) and y-value (.3660) matches by hand and matrix-wise with z-coordinate being 0.')
rotationAroundZ = rad2deg(t0) + rad2deg(t1)+ rad2deg(t2)

