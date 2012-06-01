% Problem 1

% Group number 7
% Members: Thomas Sievert, Lars Woxberg
% Date completed: 3/4 - 2012

% Define zero matrix
N = [0 0; 
     0 0];

% Define identity matrix
I = eye(2);

B = [1 7; 
     1 -4]; % Group number 7 corresponds to matrix (c)
 
 % Define A
A = [B N B;
      N B N;
      B^2 I -B];

% LU factorization
[L U P] = lu(A)

% Check that answer is correct
P*A == L*U