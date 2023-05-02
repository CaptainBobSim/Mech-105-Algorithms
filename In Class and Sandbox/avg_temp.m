function T_avg = avg_temp(city, t_start, t_end)

% Parameters
T_mean = [22.1, 23.6, 5.2, 12.5, 10.7];
T_peak = [28.3, 33.6, 22.1, 17.6, 22.9];
t_peak = 205; %[0:59]
w = 2 * pi / 365;

% Index of city
city_index = find(strcmp(city, {'Miami, FL', 'Yuma, AZ', 'Bismarck, ND', 'Seattle, WA', 'Boston, MA'}));

% Compute average temperature
T_avg = T_mean(city_index) + (T_peak(city_index) - T_mean(city_index)) * (cos(w * (t_start - t_peak)) - cos(w * (t_end - t_peak))) / (2 * (t_end - t_start));

end
