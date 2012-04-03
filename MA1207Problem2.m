% Problem 2

% Group number 7
% Members: Thomas Sievert, Lars Woxberg
% Date completed: 3/4 - 2012

% Group 7 corresponds to a = (b)
a = 12;

% Define accuracy constant
ep = 10^-12;

% Define nmax, when to stop secant method if it doesn't reach an
% appropriate answer in time
nmax = 1000;

% Define the function
f = @(x) exp(-x) .* sqrt(x.^2 + a) - cos(x);

% Define the secant function to determine x(n+1)
sec = @(x, y) x - f(x) .* (x - y) ./ (f(x) - f(y));

% Define error function
ex = @(x, e) abs(x - e);

% Studying the graph, f(x) = 0 for the first time at p where
% 4 < p < 5
% xx = linspace(0, 10);
% yy = f(xx);
% plot(xx, yy)

% Define start values
xn = [4 5];

% Iterate secant algorithm until desired precision is attained
while ex(xn(end), xn(end - 1)) > ep && length(xn) < nmax
    xn = [xn sec(xn(end), xn(end - 1))];
end

% Print results
xn(end) % Print the attained answer
xn      % Print all values attained while iterating

% Assert that the answer is accurate enough
f(xn(end)) < ep