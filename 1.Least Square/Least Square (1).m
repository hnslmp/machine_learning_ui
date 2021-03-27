%Dataset
PLR = [0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
FFLP = [0.05 0.11 0.19 0.28 0.39 0.51 0.68 0.84 1.00];

%Polynomial Model Fitting 1st Until 6th Order
order1 = polyfit(PLR,FFLP,1);
order2 = polyfit(PLR,FFLP,2);
order3 = polyfit(PLR,FFLP,3);
order4 = polyfit(PLR,FFLP,4);
order5 = polyfit(PLR,FFLP,5);
order6 = polyfit(PLR,FFLP,6);

%Estimator
fx1 = polyval(order1,PLR);
fx2 = polyval(order2,PLR);
fx3 = polyval(order3,PLR);
fx4 = polyval(order4,PLR);
fx5 = polyval(order5,PLR);
fx6 = polyval(order6,PLR);

%Cost Function
j1 = sum((fx1-FFLP).^2);
j2 = sum((fx2-FFLP).^2);
j3 = sum((fx3-FFLP).^2);
j4 = sum((fx4-FFLP).^2);
j5 = sum((fx5-FFLP).^2);
j6 = sum((fx6-FFLP).^2);

%Plot Cost Function
x=[1:6];
j = [j1 j2 j3 j4 j5 j6];
plot(x,j);