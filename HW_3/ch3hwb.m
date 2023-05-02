%ch3hwb
%1.29.2023

%Names = ['Miami', 'Yuma', 'Bismark', 'Seattle', 'Boston']
Tmean = 12.5 % average anual temp
Tpeak = 17.6 % peak temp
w = 2 * pi / 365; %frequency of anual variation
tpeak = 205 %day of the peak temp ~= 205d
t = [180:242]; %time


%T_avg = Tmean + (Tpeak - Tmean) * (cos(w * (t_start - t_peak)) - cos(w * (t_end - t_peak))) / (2 * (t_end - t_start));


Temp = Tmean + (Tpeak-Tmean).*cos(w.*(t-tpeak))

meanT = mean(Temp)




% 
% %ch3hwb
% %1.29.2023
% 
% %Names = ['Miami', 'Yuma', 'Bismark', 'Seattle', 'Boston']
% Tmean = [22.1, 23.6, 5.2, 12.5, 10.7] % average anual temp
% Tpeak = [28.3, 33.6, 22.1, 17.6, 22.9] % peak temp
% w = 2 * pi / 365; %frequency of anual variation
% tpeak = 205 %day of the peak temp ~= 205d
% t = [0:59]; %time
% 
% Temp = Tmean + (Tpeak-Tmean).*cos(w(t-tpeak))
% 
% meanT = mean(T)