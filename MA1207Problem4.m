% Problem 4

% Group number 7
% Members: Thomas Sievert, Lars Woxberg
% Date completed: 1/6 - 2012

% Set problem values
x = 0;
X = [x];

y = 3; % Group 7 corresponds to y, b = (c)
Y = [Y]
b = 3;

% Define number of iterations
n = 50;

% Define interval size
h = (b - x) / n;

% Define differential equation
f = @(x, y) y .* sin(x .* y)

while x < b
	% Find k values
	k1 = f(x, y);
	k2 = f(x + (h ./ 2), y + (h ./ 2) .* k1);
	k3 = f(x + (h ./ 2), y + (h ./ 2) .* k2);
	k4 = f(x + h, y + h .* k3);
	
	% Increment x, append it to the list
	x += h;
	X = [X, x];
	
	% Define next y, append it to the list
	y += (h ./ 6) .* (k1 + 2 .* k2 + 2 .* k3 + k4);
	Y = [Y, y];
end

% Display the results
plot(X, Y)
y