% Given experimental data
t_exp = 10:10:60;
c_exp = [3.4 2.6 1.6 1.3 1.0 0.5];

% Expected function
t_func = 0:.5:70; %mins
c_func = 4.84*exp(-.034*t_func); %ppm

% Plot
plot(t_exp,c_exp, 'rd')
xlabel('Time (mins)')
ylabel('Concentration in PPM')


hold on

plot(t_func,c_func, '--g')

hold off

legend({'Experimental','Function'},'Location','northwest','Orientation','horizontal')