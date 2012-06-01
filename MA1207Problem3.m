% Problem 3

% Group number 7
% Members: Thomas Sievert, Lars Woxberg
% Date completed: 1/6 - 2012

% Set problem values
a = 0;

b = 4; % Group 7 corresponds to b = (c)

% d/dx(sin(x^2)) = 2xcos(x^2)
% Define the curve's derivative
f = @(x) 2 .* x .* cos(x .^ 2);

% Define the integrand
i = @(x) sqrt(1 + (f(x) .^ 2));

% Define the number of intervals, and size of each interval
n = 100;
h = (b - a) / n;

% Define a variable in which to store the value of the integral
I = 0;

for k = 1:n
	% Add a trapezoid segment to the integral
	I += i(a + (k - 1) .* h) + i(a + k .* h);
end

% To calculate the area of a trapezoid, divide by 2
I .*= (h .* 0.5)