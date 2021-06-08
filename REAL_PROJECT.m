clear all
close all

L1= Link([0,0,100,0,0],'standard'); %For initialize DH variable for link 1 the length is 400
L2= Link([0,0,100,pi,0],'standard'); %For initialize DH variable for link 2 link 2 the length is 350
L3= Link([0,10,0,0,1],'standard'); %For initialize DH variable for Link 3 using the standard initialization because to use primastic function
L3.qlim=[0 10]; %For prismatic function
L4= Link([0,0,0,0,0],'standard'); %For initialize DH variable for Link 4

Robot = SerialLink([L1 L2 L3 L4],'name','RRP') %Function to construct the Scara Robot
%%Robot.base = [1 0 0 -40;0 1 0 5;0 0 1 0;0 0 0 1];
Robot.base = [1 0 0 51;0 1 0 -60;0 0 1 0;0 0 0 1]; %%ROROBT BASE POINT


%% transformation for every points (there is 83 points for Hamdan)
matrix = [51 80 10
 51 80 0;%H
 55 85 0; 
 67 90 0;
 74 89 0;
 71 83 0;
 67 78 0;
 57 66 0;
 56 63 0;
 56 73 0;
 79 74 0; 
 83 89 0;
 76 79 0;
 70 69 0;
 69 64 0;
 94 79 0;%a
 87 74 0;
 83 71 0;
 83 67 0;
 85 65 0;
 90 68 0;
 94 72 0;
 95 74 0;
 94 79 0;
 93 67 0;
 93 64 0;
 95 64 0;
 99 68 0;%m
 102    72  0;
 106    77  0;
 101    69  0;
 102    66  0;
 107 72 0;
 113 77 0;
 113 74 0;
 110 69 0;
 109 66 0;
 114 70 0;
 121 76 0;
 120 72 0;
 117 67 0;
 117 64 0;
 136 78 0;%d   42
 132 76 0;
 127 72 0;
 126 69 0;
 127 66 0;
 132 68 0;
 137 73 0;
 139 77 0;
 142 83 0;
 145 89 0;
 136 69 0;
 135 65 0;
 136 63 0;
 156 79 0;%a
 150 76 0;
 144 70 0;
 144 66 0;
 146 64 0;
 151 68 0;
 155 72 0;
 157 75 0;
 156 79 0;
 154 67 0;
 154 64 0;
 157 65 0;
 168 77 0;%n67
 165 73 0;
 162 68 0;
 163 66 0;
 169 71 0;
 175 77 0;
 175 74 0;
 172 70 0;
 169 66 0;
 171 64 0;
 175 67 0;
 178 70 0;%78
 178 70 10;
 ];

q0 = [51 80 0 0]; 
P1 = transl(matrix(1,1),matrix(1,2),matrix(1,3)); % transformation matrix, the value position x,y,z place in the 4x4 matrix,
P2 = transl(matrix(2,1),matrix(2,2),matrix(2,3));
P3 = transl(matrix(3,1),matrix(3,2),matrix(3,3)); 
P4 = transl(matrix(4,1),matrix(4,2),matrix(4,3));
P5 = transl(matrix(5,1),matrix(5,2),matrix(5,3));
P6 = transl(matrix(6,1),matrix(6,2),matrix(6,3));
P7 = transl(matrix(7,1),matrix(7,2),matrix(7,3));
P8 = transl(matrix(8,1),matrix(8,2),matrix(8,3));
P9 = transl(matrix(9,1),matrix(9,2),matrix(9,3));
P10 = transl(matrix(10,1),matrix(10,2),matrix(10,3));
P11 = transl(matrix(11,1),matrix(11,2),matrix(11,3));
P12 = transl(matrix(12,1),matrix(12,2),matrix(12,3));
P13 = transl(matrix(13,1),matrix(13,2),matrix(13,3));
P14 = transl(matrix(14,1),matrix(14,2),matrix(14,3));
P15 = transl(matrix(15,1),matrix(15,2),matrix(15,3));
P16 = transl(matrix(16,1),matrix(16,2),matrix(16,3));
P17 = transl(matrix(17,1),matrix(17,2),matrix(17,3));
P18 = transl(matrix(18,1),matrix(18,2),matrix(18,3));
P19 = transl(matrix(19,1),matrix(19,2),matrix(19,3));
P20 = transl(matrix(20,1),matrix(20,2),matrix(20,3));
P21 = transl(matrix(21,1),matrix(21,2),matrix(21,3));
P22 = transl(matrix(22,1),matrix(22,2),matrix(22,3));
P23 = transl(matrix(23,1),matrix(23,2),matrix(23,3));
P24 = transl(matrix(24,1),matrix(24,2),matrix(24,3));
P25 = transl(matrix(25,1),matrix(25,2),matrix(25,3));
P26 = transl(matrix(26,1),matrix(26,2),matrix(26,3));
P27 = transl(matrix(27,1),matrix(27,2),matrix(27,3));
P28 = transl(matrix(28,1),matrix(28,2),matrix(28,3));
P29 = transl(matrix(29,1),matrix(29,2),matrix(29,3));
P30 = transl(matrix(30,1),matrix(30,2),matrix(30,3));
P31 = transl(matrix(31,1),matrix(31,2),matrix(31,3));
P32 = transl(matrix(32,1),matrix(32,2),matrix(32,3));
P33 = transl(matrix(33,1),matrix(33,2),matrix(33,3));
P34 = transl(matrix(34,1),matrix(34,2),matrix(34,3));
P35 = transl(matrix(35,1),matrix(35,2),matrix(35,3));
P36 = transl(matrix(36,1),matrix(36,2),matrix(36,3));
P37 = transl(matrix(37,1),matrix(37,2),matrix(37,3));
P38 = transl(matrix(38,1),matrix(38,2),matrix(38,3));
P39 = transl(matrix(39,1),matrix(39,2),matrix(39,3));
P40 = transl(matrix(40,1),matrix(40,2),matrix(40,3));
P41 = transl(matrix(41,1),matrix(41,2),matrix(41,3));
P42 = transl(matrix(42,1),matrix(42,2),matrix(42,3));
P43 = transl(matrix(43,1),matrix(43,2),matrix(43,3));
P44 = transl(matrix(44,1),matrix(44,2),matrix(44,3));
P45 = transl(matrix(45,1),matrix(45,2),matrix(45,3));
P46 = transl(matrix(46,1),matrix(46,2),matrix(46,3));
P47 = transl(matrix(47,1),matrix(47,2),matrix(47,3));
P48 = transl(matrix(48,1),matrix(48,2),matrix(48,3));
P49 = transl(matrix(49,1),matrix(49,2),matrix(49,3));
P50 = transl(matrix(50,1),matrix(50,2),matrix(50,3));
P51 = transl(matrix(51,1),matrix(51,2),matrix(51,3));
P52 = transl(matrix(52,1),matrix(52,2),matrix(52,3));
P53 = transl(matrix(53,1),matrix(53,2),matrix(53,3));
P54 = transl(matrix(54,1),matrix(54,2),matrix(54,3));
P55 = transl(matrix(55,1),matrix(55,2),matrix(55,3));
P56 = transl(matrix(56,1),matrix(56,2),matrix(56,3));
P57 = transl(matrix(57,1),matrix(57,2),matrix(57,3));
P58 = transl(matrix(58,1),matrix(58,2),matrix(58,3));
P59 = transl(matrix(59,1),matrix(59,2),matrix(59,3));
P60 = transl(matrix(60,1),matrix(60,2),matrix(60,3));
P61 = transl(matrix(61,1),matrix(61,2),matrix(61,3));
P62 = transl(matrix(62,1),matrix(62,2),matrix(62,3));
P63 = transl(matrix(63,1),matrix(63,2),matrix(63,3));
P64 = transl(matrix(64,1),matrix(64,2),matrix(64,3));
P65 = transl(matrix(65,1),matrix(65,2),matrix(65,3));
P66 = transl(matrix(66,1),matrix(66,2),matrix(66,3));
P67 = transl(matrix(67,1),matrix(67,2),matrix(67,3));
P68 = transl(matrix(68,1),matrix(68,2),matrix(68,3));
P69 = transl(matrix(69,1),matrix(69,2),matrix(69,3));
P70 = transl(matrix(70,1),matrix(70,2),matrix(70,3));
P71 = transl(matrix(71,1),matrix(71,2),matrix(71,3));
P72 = transl(matrix(72,1),matrix(72,2),matrix(72,3));
P73 = transl(matrix(73,1),matrix(73,2),matrix(73,3));
P74 = transl(matrix(74,1),matrix(74,2),matrix(74,3));
P75 = transl(matrix(75,1),matrix(75,2),matrix(75,3));
P76 = transl(matrix(76,1),matrix(76,2),matrix(76,3));
P77 = transl(matrix(77,1),matrix(77,2),matrix(77,3));
P78 = transl(matrix(78,1),matrix(78,2),matrix(78,3));
P79 = transl(matrix(79,1),matrix(79,2),matrix(79,3));
P80 = transl(matrix(80,1),matrix(80,2),matrix(80,3));

%% inverse kinematic
q1 = Robot.ikine(P1,q0,[1,1,1,0,0,0]); 
q2 = Robot.ikine(P2,q1,[1,1,1,0,0,0]);
q3 = Robot.ikine(P3,q2,[1,1,1,0,0,0]);
q4 = Robot.ikine(P4,q3,[1,1,1,0,0,0]);
q5 = Robot.ikine(P5,q4,[1,1,1,0,0,0]);
q6 = Robot.ikine(P6,q5,[1,1,1,0,0,0]);
q7 = Robot.ikine(P7,q6,[1,1,1,0,0,0]);
q8 = Robot.ikine(P8,q7,[1,1,1,0,0,0]);
q9 = Robot.ikine(P9,q8,[1,1,1,0,0,0]);
q10 = Robot.ikine(P10,q9,[1,1,1,0,0,0]);
q11 = Robot.ikine(P11,q10,[1,1,1,0,0,0]);
q12 = Robot.ikine(P12,q11,[1,1,1,0,0,0]);
q13 = Robot.ikine(P13,q12,[1,1,1,0,0,0]);
q14 = Robot.ikine(P14,q13,[1,1,1,0,0,0]);
q15 = Robot.ikine(P15,q14,[1,1,1,0,0,0]);
q16 = Robot.ikine(P16,q15,[1,1,1,0,0,0]);
q17 = Robot.ikine(P17,q16,[1,1,1,0,0,0]);
q18 = Robot.ikine(P18,q17,[1,1,1,0,0,0]);
q19 = Robot.ikine(P19,q18,[1,1,1,0,0,0]);
q20 = Robot.ikine(P20,q19,[1,1,1,0,0,0]);
q21 = Robot.ikine(P21,q20,[1,1,1,0,0,0]);
q22 = Robot.ikine(P22,q21,[1,1,1,0,0,0]);
q23 = Robot.ikine(P23,q22,[1,1,1,0,0,0]);
q24 = Robot.ikine(P24,q23,[1,1,1,0,0,0]);
q25 = Robot.ikine(P25,q24,[1,1,1,0,0,0]);
q26 = Robot.ikine(P26,q25,[1,1,1,0,0,0]);
q27 = Robot.ikine(P27,q26,[1,1,1,0,0,0]);
q28 = Robot.ikine(P28,q27,[1,1,1,0,0,0]);
q29 = Robot.ikine(P29,q28,[1,1,1,0,0,0]);
q30 = Robot.ikine(P30,q29,[1,1,1,0,0,0]);
q31 = Robot.ikine(P31,q30,[1,1,1,0,0,0]);
q32 = Robot.ikine(P32,q31,[1,1,1,0,0,0]);
q33 = Robot.ikine(P33,q32,[1,1,1,0,0,0]);
q34 = Robot.ikine(P34,q33,[1,1,1,0,0,0]);
q35 = Robot.ikine(P35,q34,[1,1,1,0,0,0]);
q36 = Robot.ikine(P36,q35,[1,1,1,0,0,0]);
q37 = Robot.ikine(P37,q36,[1,1,1,0,0,0]);
q38 = Robot.ikine(P38,q37,[1,1,1,0,0,0]);
q39 = Robot.ikine(P39,q38,[1,1,1,0,0,0]);
q40 = Robot.ikine(P40,q39,[1,1,1,0,0,0]);
q41 = Robot.ikine(P41,q40,[1,1,1,0,0,0]);
q42 = Robot.ikine(P42,q41,[1,1,1,0,0,0]);
q43 = Robot.ikine(P43,q42,[1,1,1,0,0,0]);
q44 = Robot.ikine(P44,q43,[1,1,1,0,0,0]);
q45 = Robot.ikine(P45,q44,[1,1,1,0,0,0]);
q46 = Robot.ikine(P46,q45,[1,1,1,0,0,0]);
q47 = Robot.ikine(P47,q46,[1,1,1,0,0,0]);
q48 = Robot.ikine(P48,q47,[1,1,1,0,0,0]);
q49 = Robot.ikine(P49,q48,[1,1,1,0,0,0]);
q50 = Robot.ikine(P50,q49,[1,1,1,0,0,0]);
q51 = Robot.ikine(P51,q50,[1,1,1,0,0,0]);
q52 = Robot.ikine(P52,q51,[1,1,1,0,0,0]);
q53 = Robot.ikine(P53,q52,[1,1,1,0,0,0]);
q54 = Robot.ikine(P54,q53,[1,1,1,0,0,0]);
q55 = Robot.ikine(P55,q54,[1,1,1,0,0,0]);
q56 = Robot.ikine(P56,q55,[1,1,1,0,0,0]);
q57 = Robot.ikine(P57,q56,[1,1,1,0,0,0]);
q58 = Robot.ikine(P58,q57,[1,1,1,0,0,0]);
q59 = Robot.ikine(P59,q58,[1,1,1,0,0,0]);
q60 = Robot.ikine(P60,q59,[1,1,1,0,0,0]);
q61 = Robot.ikine(P61,q60,[1,1,1,0,0,0]);
q62 = Robot.ikine(P62,q61,[1,1,1,0,0,0]);
q63 = Robot.ikine(P63,q62,[1,1,1,0,0,0]);
q64 = Robot.ikine(P64,q63,[1,1,1,0,0,0]);
q65 = Robot.ikine(P65,q64,[1,1,1,0,0,0]);
q66 = Robot.ikine(P66,q65,[1,1,1,0,0,0]);
q67 = Robot.ikine(P67,q66,[1,1,1,0,0,0]);
q68 = Robot.ikine(P68,q67,[1,1,1,0,0,0]);
q69 = Robot.ikine(P69,q68,[1,1,1,0,0,0]);
q70 = Robot.ikine(P70,q69,[1,1,1,0,0,0]);
q71 = Robot.ikine(P71,q70,[1,1,1,0,0,0]);
q72 = Robot.ikine(P72,q71,[1,1,1,0,0,0]);
q73 = Robot.ikine(P73,q72,[1,1,1,0,0,0]);
q74 = Robot.ikine(P74,q73,[1,1,1,0,0,0]);
q75 = Robot.ikine(P75,q74,[1,1,1,0,0,0]);
q76 = Robot.ikine(P76,q75,[1,1,1,0,0,0]);
q77 = Robot.ikine(P77,q76,[1,1,1,0,0,0]);
q78 = Robot.ikine(P78,q77,[1,1,1,0,0,0]);
q79 = Robot.ikine(P79,q78,[1,1,1,0,0,0]);
q80 = Robot.ikine(P80,q79,[1,1,1,0,0,0]);

%%
%%Trajectory path to plot the name "Hamdan"
trajectorypath = [51 80 10;
 51 80 -5;%H
 55 85 -5; 
 67 90 -5;
 74 89 -5;
 71 83 -5;
 67 78 -5;
 57 66 -5;
 56 63 -5;
 56 73 -5;
 79 74 -5; 
 83 89 -5;
 76 79 -5;
 70 69 -5;
 69 64 -5;
 94 79 -5;%a
 87 74 -5;
 83 71 -5;
 83 67 -5;
 85 65 -5;
 90 68 -5;
 94 72 -5;
 95 74 -5;
 94 79 -5;
 93 67 -5;
 93 64 -5;
 95 64 -5;
 99 68 -5;%m
 102 72 -5;
 106 77 -5;
 101 69 -5;
 102 66 -5;
 107 72 -5;
 113 77 -5;
 113 74 -5;
 110 69 -5;
 109 66 -5;
 114 70 -5;
 121 76 -5;
 120 72 -5;
 117 67 -5;
 117 64 -5;
 136 78 -5;%d   42
 132 76 -5;
 127 72 -5;
 126 69 -5;
 127 66 -5;
 132 78 -5;
 137 73 -5;
 139 77 -5;
 142 83 -5;
 145 89 -5;
 136 69 -5;
 135 65 -5;
 136 63 -5;
 156 79 -5;%a
 150 76 -5;
 144 70 -5;
 144 66 -5;
 146 64 -5;
 151 68 -5;
 155 72 -5;
 157 75 -5;
 156 79 -5;
 154 67 -5;
 154 64 -5;
 157 65 -5;
 168 77 -5;%n67
 165 73 -5;
 162 68 -5;
 163 66 -5;
 169 71 -5;
 175 77 -5;
 175 74 -5;
 172 70 -5;
 169 66 -5;
 171 64 -5;
 175 67 -5;
 178 70 -5;
 178 70 10;%78
 ];
 
[nx,ny] = size(trajectorypath);

figure
hold on

for i = 1:nx-1
    v=[trajectorypath(i,:);trajectorypath(i+1,:)];
    plot3(v(:,1),v(:,2),v(:,3),'g');
    plot3(v(:,1),v(:,2),v(:,3),'g.')
end

% view settings of 3D plot
axis_matrix = [0 200 -80 100 -20 100];

axis(axis_matrix);
xlabel('X-Axis');
ylabel('Y-Axis');
zlabel('Z-Axis');

view(0,90);
view(3);

%% Animating the movement of the SCARA Robot
% Time settings to either speed up/slow down the animation
t = (0: .05: 0.1)';

% All transformation animation
line1 = jtraj(q0,q1,t); Robot.plot(line1, 'workspace', axis_matrix);
line2 = jtraj(q1,q2,t); Robot.plot(line2, 'workspace', axis_matrix);
line3 = jtraj(q2,q3,t); Robot.plot(line3, 'workspace', axis_matrix);
line4 = jtraj(q3,q4,t); Robot.plot(line4, 'workspace', axis_matrix);
line5 = jtraj(q4,q5,t); Robot.plot(line5, 'workspace', axis_matrix);
line6 = jtraj(q5,q6,t); Robot.plot(line6, 'workspace', axis_matrix);
line7 = jtraj(q6,q7,t); Robot.plot(line7, 'workspace', axis_matrix);
line8 = jtraj(q7,q8,t); Robot.plot(line8, 'workspace', axis_matrix);
line9 = jtraj(q8,q9,t); Robot.plot(line9, 'workspace', axis_matrix);
line10 = jtraj(q9,q10,t); Robot.plot(line10, 'workspace', axis_matrix);
line11 = jtraj(q10,q11,t); Robot.plot(line11, 'workspace', axis_matrix);
line12 = jtraj(q11,q12,t); Robot.plot(line12, 'workspace', axis_matrix);
line13 = jtraj(q12,q13,t); Robot.plot(line13, 'workspace', axis_matrix);
line14 = jtraj(q13,q14,t); Robot.plot(line14, 'workspace', axis_matrix);
line15 = jtraj(q14,q15,t); Robot.plot(line15, 'workspace', axis_matrix);
line16 = jtraj(q15,q16,t); Robot.plot(line16, 'workspace', axis_matrix);
line17 = jtraj(q16,q17,t); Robot.plot(line17, 'workspace', axis_matrix);
line18 = jtraj(q17,q18,t); Robot.plot(line18, 'workspace', axis_matrix);
line19 = jtraj(q18,q19,t); Robot.plot(line19, 'workspace', axis_matrix);
line20 = jtraj(q19,q20,t); Robot.plot(line20, 'workspace', axis_matrix);
line21 = jtraj(q20,q21,t); Robot.plot(line21, 'workspace', axis_matrix);
line22 = jtraj(q21,q22,t); Robot.plot(line22, 'workspace', axis_matrix);
line23 = jtraj(q22,q23,t); Robot.plot(line23, 'workspace', axis_matrix);
line24 = jtraj(q23,q24,t); Robot.plot(line24, 'workspace', axis_matrix);
line25 = jtraj(q24,q25,t); Robot.plot(line25, 'workspace', axis_matrix);
line26 = jtraj(q25,q26,t); Robot.plot(line26, 'workspace', axis_matrix);
line27 = jtraj(q26,q27,t); Robot.plot(line27, 'workspace', axis_matrix);
line28 = jtraj(q27,q28,t); Robot.plot(line28, 'workspace', axis_matrix);
line29 = jtraj(q28,q29,t); Robot.plot(line29, 'workspace', axis_matrix);
line30 = jtraj(q29,q30,t); Robot.plot(line30, 'workspace', axis_matrix);
line31 = jtraj(q30,q31,t); Robot.plot(line31, 'workspace', axis_matrix);
line32 = jtraj(q31,q32,t); Robot.plot(line32, 'workspace', axis_matrix);
line33 = jtraj(q32,q33,t); Robot.plot(line33, 'workspace', axis_matrix);
line34 = jtraj(q33,q34,t); Robot.plot(line34, 'workspace', axis_matrix);
line35 = jtraj(q34,q35,t); Robot.plot(line35, 'workspace', axis_matrix);
line36 = jtraj(q35,q36,t); Robot.plot(line36, 'workspace', axis_matrix);
line37 = jtraj(q36,q37,t); Robot.plot(line37, 'workspace', axis_matrix);
line38 = jtraj(q37,q38,t); Robot.plot(line38, 'workspace', axis_matrix);
line39 = jtraj(q38,q39,t); Robot.plot(line39, 'workspace', axis_matrix);
line40 = jtraj(q39,q40,t); Robot.plot(line40, 'workspace', axis_matrix);
line41 = jtraj(q40,q41,t); Robot.plot(line41, 'workspace', axis_matrix);
line42 = jtraj(q41,q42,t); Robot.plot(line42, 'workspace', axis_matrix);
line43 = jtraj(q42,q43,t); Robot.plot(line43, 'workspace', axis_matrix);
line44 = jtraj(q43,q44,t); Robot.plot(line44, 'workspace', axis_matrix);
line45 = jtraj(q44,q45,t); Robot.plot(line45, 'workspace', axis_matrix);
line46 = jtraj(q45,q46,t); Robot.plot(line46, 'workspace', axis_matrix);
line47 = jtraj(q46,q47,t); Robot.plot(line47, 'workspace', axis_matrix);
line48 = jtraj(q47,q48,t); Robot.plot(line48, 'workspace', axis_matrix);
line49 = jtraj(q48,q49,t); Robot.plot(line49, 'workspace', axis_matrix);
line50 = jtraj(q49,q50,t); Robot.plot(line50, 'workspace', axis_matrix);
line51 = jtraj(q50,q51,t); Robot.plot(line51, 'workspace', axis_matrix);
line52 = jtraj(q51,q52,t); Robot.plot(line52, 'workspace', axis_matrix);
line53 = jtraj(q52,q53,t); Robot.plot(line53, 'workspace', axis_matrix);
line54 = jtraj(q53,q54,t); Robot.plot(line54, 'workspace', axis_matrix);
line55 = jtraj(q54,q55,t); Robot.plot(line55, 'workspace', axis_matrix);
line56 = jtraj(q55,q56,t); Robot.plot(line56, 'workspace', axis_matrix);
line57 = jtraj(q56,q57,t); Robot.plot(line57, 'workspace', axis_matrix);
line58 = jtraj(q57,q58,t); Robot.plot(line58, 'workspace', axis_matrix);
line59 = jtraj(q58,q59,t); Robot.plot(line59, 'workspace', axis_matrix);
line60 = jtraj(q59,q60,t); Robot.plot(line60, 'workspace', axis_matrix);
line61 = jtraj(q60,q61,t); Robot.plot(line61, 'workspace', axis_matrix);
line62 = jtraj(q61,q62,t); Robot.plot(line62, 'workspace', axis_matrix);
line63 = jtraj(q62,q63,t); Robot.plot(line63, 'workspace', axis_matrix);
line64 = jtraj(q63,q64,t); Robot.plot(line64, 'workspace', axis_matrix);
line65 = jtraj(q64,q65,t); Robot.plot(line65, 'workspace', axis_matrix);
line66 = jtraj(q65,q66,t); Robot.plot(line66, 'workspace', axis_matrix);
line67 = jtraj(q66,q67,t); Robot.plot(line67, 'workspace', axis_matrix);
line68 = jtraj(q67,q68,t); Robot.plot(line68, 'workspace', axis_matrix);
line69 = jtraj(q68,q69,t); Robot.plot(line69, 'workspace', axis_matrix);
line70 = jtraj(q69,q70,t); Robot.plot(line70, 'workspace', axis_matrix);
line71 = jtraj(q70,q71,t); Robot.plot(line71, 'workspace', axis_matrix);
line72 = jtraj(q71,q72,t); Robot.plot(line72, 'workspace', axis_matrix);
line73 = jtraj(q72,q73,t); Robot.plot(line73, 'workspace', axis_matrix);
line74 = jtraj(q73,q74,t); Robot.plot(line74, 'workspace', axis_matrix);
line75 = jtraj(q74,q75,t); Robot.plot(line75, 'workspace', axis_matrix);
line76 = jtraj(q75,q76,t); Robot.plot(line76, 'workspace', axis_matrix);
line77 = jtraj(q76,q77,t); Robot.plot(line77, 'workspace', axis_matrix);
line78 = jtraj(q77,q78,t); Robot.plot(line78, 'workspace', axis_matrix);
line79 = jtraj(q78,q79,t); Robot.plot(line79, 'workspace', axis_matrix);
line80 = jtraj(q79,q80,t); Robot.plot(line80, 'workspace', axis_matrix);


