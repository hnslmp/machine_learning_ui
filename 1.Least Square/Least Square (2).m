%Dataset
x1 = [40 40 50 50 60 60]';
x2 = [0.2 0.4 0.2 0.4 0.2 0.4]';
y = [38 42  41 46 46 49]';

%Model
X = [ones(size(x1)) x1.^2 x2 x1.*x2.^9 x1.^3];

%Regression
[b,bint,r,rint,stats] = regress(y,X);

%Estimator
yhat = b(1).*X(:,1) +  b(2).*X(:,2) + b(3).*X(:,3) + b(4).*X(:,4) + b(5).*X(:,5);

%Cost Function
j = sum((yhat-y).^2)