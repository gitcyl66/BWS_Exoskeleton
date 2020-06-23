
import org.opensim.modeling.*;

% 人机腰部相连；
px=-0.2;py=0.2;pz=0;
% ex=0.2109538;ey=0.34945999;ez=0;
hw = 0.1534; % 调节外骨骼髋部宽度；
ex=0.21095;ey=0.34946-hw;ez=(0.10381+0.04381)/2; % 力传感器位置；
pelvis = Body.safeDownCast(Exo.updComponent('pelvis'));
jpb7 = FreeJoint('jpb7',...
    pelvis,Vec3(px,py,pz),Vec3(0),...
    Body7,Vec3(ex,ey,ez),Vec3(pi/2,0,pi));
Exo.addJoint(jpb7);

% jpb36 = FreeJoint('jpb36',...
%     pelvis,Vec3(-0.2,0.2,0),Vec3(0),...
%     Body36,Vec3(0.2109538,0.34945999,0),Vec3(pi/2,0,pi));
% Exo.addJoint(jpb36);

jpb36 = WeldJoint('jpb36',...
    Body7,Vec3(0),Vec3(0),...
    Body36,Vec3(0,2*hw,0),Vec3(0));
Exo.addJoint(jpb36);




% % 腰右杆件；
% jgb7 = WeldJoint('jgb7',...
%     Exo.getGround(), Vec3(0),Vec3(0),...
%     Body7, Vec3(0), Vec3(0));
% Exo.addJoint(jgb7);
% % 腰左杆件；
% jgb36 = WeldJoint('jgb36',...
%     Exo.getGround(), Vec3(0),Vec3(0),...
%     Body36, Vec3(0), Vec3(0));
% Exo.addJoint(jgb36);


% right hip abduction;
jb7b39 = WeldJoint('jb7b39',...
    Body7,Vec3(0),Vec3(0),...
    Body39,Vec3(0),Vec3(0));
Exo.addJoint(jb7b39);

% b39f = PhysicalOffsetFrame();
% b39f.setName('b39f');
% b39f.setParentFrame(Body39);
% b39f.set_orientation(Vec3(0,pi/2,0));
% b39f.set_translation(Vec3(0.1829538,0.10946,0.07380814));
% Exo.addComponent(b39f);
% b40f = PhysicalOffsetFrame();
% b40f.setName('b40f');
% b40f.setParentFrame(Body40);
% b40f.set_orientation(Vec3(0,pi/2,0));
% b40f.set_translation(Vec3(0.1829538,0.10946,0.07380814));
% Exo.addComponent(b40f);
% jb39b40 = PinJoint('jb39b40',b39f,b40f);
% c=jb39b40.updCoordinate();
% c.setName('ccc');

jb39b40 = PinJoint('jb39b40',...
    Body39,Vec3(0.1829538,0.10946,0.07380814),Vec3(0,pi/2,0),...
    Body40,Vec3(0.1829538,0.10946,0.07380814),Vec3(0,pi/2,0));
Exo.addJoint(jb39b40);

jb40b8 = WeldJoint('jb40b8',...
    Body40,Vec3(0),Vec3(0),...
    Body8,Vec3(0),Vec3(0));
Exo.addJoint(jb40b8);

jb8b47 = WeldJoint('jb8b47',...
    Body8,Vec3(0),Vec3(0),...
    Body47,Vec3(0),Vec3(0));
Exo.addJoint(jb8b47);

% 模板：
% jbxbx = WeldJoint('jbxbx',...
%     Bodyx,Vec3(0),Vec3(0),...
%     Bodyx,Vec3(0),Vec3(0));
% Exo.addJoint(jbxbx);

jb47b48 = PinJoint('jb47b48',...
    Body47,Vec3(0.30208865,0.10946001,0.04580815),Vec3(0),...
    Body48,Vec3(0.30208865,0.10946001,0.04580815),Vec3(0));
Exo.addJoint(jb47b48);

jb48b9 = WeldJoint('jb48b9',...
    Body48,Vec3(0),Vec3(0),...
    Body9,Vec3(0),Vec3(0));
Exo.addJoint(jb48b9);

jb9b41 = WeldJoint('jb9b41',...
    Body9,Vec3(0),Vec3(0),...
    Body41,Vec3(0),Vec3(0));
Exo.addJoint(jb9b41);

jb41b42 = PinJoint('jb41b42',...
    Body41,Vec3(0.30208865,0.08646,0.135992),Vec3(-pi/2,0,0),...
    Body42,Vec3(0.30208865,0.08646,0.135992),Vec3(-pi/2,0,0));
Exo.addJoint(jb41b42);

jb42b55 = WeldJoint('jb42b55',...
    Body42,Vec3(0),Vec3(0),...
    Body55,Vec3(0),Vec3(0));
Exo.addJoint(jb42b55);

jb55b43 = WeldJoint('jb55b43',...
    Body55,Vec3(0),Vec3(0),...
    Body43,Vec3(0),Vec3(0));
Exo.addJoint(jb55b43);

jb43b44 = WeldJoint('jb43b44',...
    Body43,Vec3(0),Vec3(0),...
    Body44,Vec3(0),Vec3(0));
Exo.addJoint(jb43b44);

jb41b1 = WeldJoint('jb44b1',...
    Body44,Vec3(0),Vec3(0),...
    Body1,Vec3(0),Vec3(0));
Exo.addJoint(jb41b1);

jb1b50 = WeldJoint('jb1b50',...
    Body1,Vec3(0),Vec3(0),...
    Body50,Vec3(0),Vec3(0));
Exo.addJoint(jb1b50);

jb50b57 = WeldJoint('jb50b57',...
    Body50,Vec3(0),Vec3(0),...
    Body57,Vec3(0),Vec3(0));
Exo.addJoint(jb50b57);

jb9b45 = WeldJoint('jb9b45',...
    Body9,Vec3(0),Vec3(0),...
    Body45,Vec3(0),Vec3(0));
Exo.addJoint(jb9b45);

jb45b46 = WeldJoint('jb45b46',...
    Body45,Vec3(0),Vec3(0),...
    Body46,Vec3(0),Vec3(0));
Exo.addJoint(jb45b46);

jb46b2 = WeldJoint('jb46b2',...
    Body46,Vec3(0),Vec3(0),...
    Body2,Vec3(0),Vec3(0));
Exo.addJoint(jb46b2);

jb2b51 = WeldJoint('jb2b51',...
    Body2,Vec3(0),Vec3(0),...
    Body51,Vec3(0),Vec3(0));
Exo.addJoint(jb2b51);

jb55b58 = WeldJoint('jb55b58',...
    Body55,Vec3(0),Vec3(0),...
    Body58,Vec3(0),Vec3(0));
Exo.addJoint(jb55b58);

jb58b53 = WeldJoint('jb58b53',...
    Body58,Vec3(0),Vec3(0),...
    Body53,Vec3(0),Vec3(0));
Exo.addJoint(jb58b53);

jb53b52 = WeldJoint('jb53b52',...
    Body53,Vec3(0),Vec3(0),...
    Body52,Vec3(0),Vec3(0));
Exo.addJoint(jb53b52);

jb52b3 = WeldJoint('jb52b3',...
    Body52,Vec3(0),Vec3(0),...
    Body3,Vec3(0),Vec3(0));
Exo.addJoint(jb52b3);

jb55b5 = PinJoint('jb55b5',...
    Body55,Vec3(0.3023,0.11046,0.7559875),Vec3(-pi/2,0,0),...
    Body5,Vec3(0.3023,0.11046,0.7559875),Vec3(-pi/2,0,0));
Exo.addJoint(jb55b5);

jb5b54 = WeldJoint('jb5b54',...
    Body5,Vec3(0),Vec3(0),...
    Body54,Vec3(0),Vec3(0));
Exo.addJoint(jb5b54);

jb5b4 = WeldJoint('jb5b4',...
    Body5,Vec3(0),Vec3(0),...
    Body4,Vec3(0),Vec3(0));
Exo.addJoint(jb5b4);

jb5b6 = PinJoint('jb5b6',...
    Body5,Vec3(0.30208865,0.11046,1.40599194),Vec3(-pi/2,0,0),...
    Body6,Vec3(0.30208865,0.11046,1.40599194),Vec3(-pi/2,0,0));
Exo.addJoint(jb5b6);

jb6b49 = WeldJoint('jb6b49',...
    Body6,Vec3(0),Vec3(0),...
    Body49,Vec3(0),Vec3(0));
Exo.addJoint(jb6b49);

jb6b56 = PinJoint('jb6b56',...
    Body6,Vec3(0.31008865,0.11046,1.43899194),Vec3(0,pi/2,0),...
    Body56,Vec3(0.31008865,0.11046,1.43899194),Vec3(0,pi/2,0));
Exo.addJoint(jb6b56);

%% ------------------------------------
% jgb36 = WeldJoint('jgb36',...
%     Exo.getGround(), Vec3(0),Vec3(0),...
%     Body36, Vec3(0), Vec3(0));
% Exo.addJoint(jgb36);

jb36b10 = WeldJoint('jb36b10',...
    Body36,Vec3(0),Vec3(0),...
    Body10,Vec3(0),Vec3(0));
Exo.addJoint(jb36b10);

jb10b11 = PinJoint('jb10b11',...
    Body10,Vec3(0.1829538,0.58946002,0.07380814),Vec3(0,pi/2,0),...
    Body11,Vec3(0.1829538,0.58946002,0.07380814),Vec3(0,pi/2,0));
Exo.addJoint(jb10b11);

jb11b37 = WeldJoint('jb11b37',...
    Body11,Vec3(0),Vec3(0),...
    Body37,Vec3(0),Vec3(0));
Exo.addJoint(jb11b37);

jb37b18 = WeldJoint('jb37b18',...
    Body37,Vec3(0),Vec3(0),...
    Body18,Vec3(0),Vec3(0));
Exo.addJoint(jb37b18);

jb18b19 = PinJoint('jb18b19',...
    Body18,Vec3(0.30208865,0.58946002,0.04580815),Vec3(0),...
    Body19,Vec3(0.30208865,0.58946002,0.04580815),Vec3(0));
Exo.addJoint(jb18b19);

jb19b38 = WeldJoint('jb19b38',...
    Body19,Vec3(0),Vec3(0),...
    Body38,Vec3(0),Vec3(0));
Exo.addJoint(jb19b38);

jb38b12 = WeldJoint('jb38b12',...
    Body38,Vec3(0),Vec3(0),...
    Body12,Vec3(0),Vec3(0));
Exo.addJoint(jb38b12);

jb12b13 = PinJoint('jb12b13',...
    Body12,Vec3(0.30208865,0.61246002,0.135992),Vec3(pi/2,0,0),...
    Body13,Vec3(0.30208865,0.61246002,0.135992),Vec3(pi/2,0,0));
Exo.addJoint(jb12b13);

jb19b16 = WeldJoint('jb19b16',...
    Body19,Vec3(0),Vec3(0),...
    Body16,Vec3(0),Vec3(0));
Exo.addJoint(jb19b16);

jb16b17 = WeldJoint('jb16b17',...
    Body16,Vec3(0),Vec3(0),...
    Body17,Vec3(0),Vec3(0));
Exo.addJoint(jb16b17);

jb13b26 = WeldJoint('jb13b26',...
    Body13,Vec3(0),Vec3(0),...
    Body26,Vec3(0),Vec3(0));
Exo.addJoint(jb13b26);

jb17b31 = WeldJoint('jb17b31',...
    Body17,Vec3(0),Vec3(0),...
    Body31,Vec3(0),Vec3(0));
Exo.addJoint(jb17b31);

jb26b14 = WeldJoint('jb26b14',...
    Body26,Vec3(0),Vec3(0),...
    Body14,Vec3(0),Vec3(0));
Exo.addJoint(jb26b14);

jb14b15 = WeldJoint('jb14b15',...
    Body14,Vec3(0),Vec3(0),...
    Body15,Vec3(0),Vec3(0));
Exo.addJoint(jb14b15);

jb31b22 = WeldJoint('jb31b22',...
    Body31,Vec3(0),Vec3(0),...
    Body22,Vec3(0),Vec3(0));
Exo.addJoint(jb31b22);

jb26b29 = WeldJoint('jb26b29',...
    Body26,Vec3(0),Vec3(0),...
    Body29,Vec3(0),Vec3(0));
Exo.addJoint(jb26b29);

jb15b30 = WeldJoint('jb15b30',...
    Body15,Vec3(0),Vec3(0),...
    Body30,Vec3(0),Vec3(0));
Exo.addJoint(jb15b30);

jb30b21 = WeldJoint('jb30b21',...
    Body30,Vec3(0),Vec3(0),...
    Body21,Vec3(0),Vec3(0));
Exo.addJoint(jb30b21);

jb29b24 = WeldJoint('jb29b24',...
    Body29,Vec3(0),Vec3(0),...
    Body24,Vec3(0),Vec3(0));
Exo.addJoint(jb29b24);

jb24b23 = WeldJoint('jb24b23',...
    Body24,Vec3(0),Vec3(0),...
    Body23,Vec3(0),Vec3(0));
Exo.addJoint(jb24b23);

jb21b28 = WeldJoint('jb21b28',...
    Body21,Vec3(0),Vec3(0),...
    Body28,Vec3(0),Vec3(0));
Exo.addJoint(jb21b28);

jb23b32 = WeldJoint('jb23b32',...
    Body23,Vec3(0),Vec3(0),...
    Body32,Vec3(0),Vec3(0));
Exo.addJoint(jb23b32);

jb26b34 = PinJoint('jb26b34',...
    Body26,Vec3(0.3023,0.58846,0.7559875),Vec3(pi/2,0,0),...
    Body34,Vec3(0.3023,0.58846,0.7559875),Vec3(pi/2,0,0));
Exo.addJoint(jb26b34);

jb34b25 = WeldJoint('jb34b25',...
    Body34,Vec3(0),Vec3(0),...
    Body25,Vec3(0),Vec3(0));
Exo.addJoint(jb34b25);

jb34b33 = WeldJoint('jb34b33',...
    Body34,Vec3(0),Vec3(0),...
    Body33,Vec3(0),Vec3(0));
Exo.addJoint(jb34b33);

jb34b35 = PinJoint('jb34b35',...
    Body34,Vec3(0.30208865,0.58846002,1.40599194),Vec3(pi/2,0,0),...
    Body35,Vec3(0.30208865,0.58846002,1.40599194),Vec3(pi/2,0,0));
Exo.addJoint(jb34b35);

jb35b27 = PinJoint('jb35b27',...
    Body35,Vec3(0.31008865,0.58846002,1.43899194),Vec3(0,pi/2,0),...
    Body27,Vec3(0.31008865,0.58846002,1.43899194),Vec3(0,pi/2,0));
Exo.addJoint(jb35b27);

jb35b20 = WeldJoint('jb35b20',...
    Body35,Vec3(0),Vec3(0),...
    Body20,Vec3(0),Vec3(0));
Exo.addJoint(jb35b20);

%%
%足底板与人体的脚固连；
toes_r = Body.safeDownCast(Exo.updComponent('toes_r'));
toes_l = Body.safeDownCast(Exo.updComponent('toes_l'));
% foot_r = WeldJoint('foot_r',...
%     toes_r,Vec3(-0.23,-0.015,0),Vec3(0),...
%     Body56,Vec3(0.298818, 0.11046, 1.466),Vec3(pi/2,0,pi));
% Exo.addJoint(foot_r);
% 
% foot_l = WeldJoint('foot_l',...
%     toes_l,Vec3(-0.23,-0.015,0),Vec3(0),...
%     Body27,Vec3(0.298818,0.58846,1.466),Vec3(pi/2,0,pi));
% Exo.addJoint(foot_l);

% foot_r = WeldJoint('foot_r',...
%     Body56,Vec3(0.298818, 0.11046, 1.466),Vec3(pi/2,0,pi),...
%     toes_r,Vec3(-0.23,-0.015,0),Vec3(0));
% Exo.addJoint(foot_r);
% 
% foot_l = WeldJoint('foot_l',...
%     Body27,Vec3(0.298818,0.58846,1.466),Vec3(pi/2,0,pi),...
%     toes_l,Vec3(-0.23,-0.015,0),Vec3(0));
% Exo.addJoint(foot_l);

% backpack1 = Body('backpack1',0,Vec3(0),Inertia(Vec3(0)));
% Exo.addBody(backpack1);
% bp1x=0.008;bp1y=0.18;bp1z=0.2;
% backpack1Geometry = Brick(Vec3(bp1x,bp1y,bp1z));
% backpack1Geometry.setColor(Vec3(0.1, 0.8, 0.8));
% backpack1Geometry.setOpacity(0.5);
% backpack1.attachGeometry(backpack1Geometry);




% foot_r = FreeJoint('foot_r',...
%     Body56,Vec3(0.298818, 0.11046, 1.466),Vec3(pi/2,0,pi),...
%     toes_r,Vec3(-0.23,-0.015,0),Vec3(0,0,0));
% Exo.addJoint(foot_r);
% 
% foot_l = FreeJoint('foot_l',...
%     Body27,Vec3(0.298818,0.58846,1.466),Vec3(pi/2,0,pi),...
%     toes_l,Vec3(-0.23,-0.015,0),Vec3(0,0,0));
% Exo.addJoint(foot_l);

foot_r = FreeJoint('foot_r',...
    toes_r,Vec3(-0.23,-0.015,0),Vec3(0,0,0),...
    Body56,Vec3(0.298818, 0.11046, 1.466),Vec3(pi/2,0,pi));
Exo.addJoint(foot_r);

foot_l = FreeJoint('foot_l',...
    toes_l,Vec3(-0.23,-0.015,0),Vec3(0,0,0),...
    Body27,Vec3(0.298818,0.58846,1.466),Vec3(pi/2,0,pi));
Exo.addJoint(foot_l);
