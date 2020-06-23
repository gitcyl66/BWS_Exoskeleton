% oe: exo original point;
% pc: pelvis connect point;

hw = 0.1534; % 调节外骨骼髋部宽度；
ex=0.21095;ey=0.34946-hw;ez=(0.10381+0.04381)/2; % 力传感器位置；

oepc = [ex,ey,ez];
oeo3 = [0.30208865,0.08646,0.135992];
oeo2 = [0.3023,0.11046,0.7559875];
oeo1 = [0.30208865,0.11046,1.40599194];

% L1 = o1o2;
o1o2 = oeo2 - oeo1;
L1 = sqrt(o1o2(1)^2 + o1o2(3)^2);

o2o3 = oeo3 - oeo2;
L2 = sqrt(o2o3(1)^2 + o2o3(3)^2);

% 两条腿是对称的；
L4 = L2;
L5 = L1;

% 动力学方程中，pc在o3中的位置：
o3pc = oepc - oeo3;
% 注意stl文件的坐标系和动力学建模的基坐标系不同，需要转化一下：
pcx = -o3pc(3);
pcy = +o3pc(1);
pcz = -o3pc(2);

% 动力学方程中，fc在o6中的位置：
oeo6 = [0.30208865,0.58846002,1.40599194];
oefc = [0.298818,0.58846,1.466];
o6fc = oefc - oeo6;
% 注意stl文件的坐标系和动力学建模的基坐标系不同，需要转化一下：
fcx = +o6fc(3);
fcy = -o6fc(1);
fcz = -o6fc(2);

% 计算杆件的重心位置：
oeg1 = [92.831 -239.02 1022.111]/1000 + [210.9538,349.45999,0]/1000;
o1g1 = -oeo1 + oeg1;
g1x = -o1g1(3);
g1y = +o1g1(1);
g1z = -o1g1(2);

oeg2 = [91.135 -237.532 400.193]/1000 + [210.9538,349.45999,0]/1000;
o2g2 = -oeo2 + oeg2;
g2x = -o2g2(3);
g2y = +o2g2(1);
g2z = -o2g2(2);

oeg3 = [-2.5 129.644*0 73.808]/1000 + [210.9538,349.45999,0]/1000;
o3g3 = -oeo3 + oeg3;
g3x = -o3g3(3);
g3y = +o3g3(1);
g3z = -o3g3(2);

oeg4 = [91.135 237.532 400.193]/1000 + [210.9538,349.45999,0]/1000;
o4g4 = -oeo3 + oeg4;
g4x = +o4g4(3);
g4y = -o4g4(1);
g4z = -o4g4(2);

oeo5 = [0.3023,0.58846,0.7559875];
oeg5 = [92.831 238.98 1022.111]/1000 + [210.9538,349.45999,0]/1000;
o5g5 = -oeo5 + oeg5;
g5x = +o5g5(3);
g5y = -o5g5(1);
g5z = -o5g5(2);

oeg6 = [87.864 239.0 1465.997]/1000 + [210.9538,349.45999,0]/1000;
o6g6 = -oeo6 + oeg6;
g6x = +o6g6(3);
g6y = -o6g6(1);
g6z = -o6g6(2);







