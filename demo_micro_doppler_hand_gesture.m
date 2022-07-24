%This part is getting the directory where your Matlab is running right now
dir=pwd;
%This parts loads the data
Person= 'B'% Choose the person letter  A or B
load([dir,'\','savedata_',Person,'.mat'])
Gesture = 2; % Choose one of the Gestures which are in this order: 'Wave' =1,'Pinch'=2,'Swipe'=3,'Click' =4

Repeat = 8; % Choose one of the measurements, 1 to 10

x = savedata{Gesture}{Repeat}; %Get The data

figure;imagesc(20*log10(abs(x)./max(abs(x(:)))),[-30,0])
