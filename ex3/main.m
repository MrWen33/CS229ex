x=load('ex3x.dat');
y=load('ex3y.dat');
m=47;
x=[ones(m,1),x];
sigma = std(x);
mu = mean(x);
x(:,2) = (x(:,2) - mu(2))./ sigma(2);
x(:,3) = (x(:,3) - mu(3))./ sigma(3);
theta = zeros(3,1); % initialize fitting parameters
alpha =1;%% Your initial learning rate %%
j_vals = zeros(50, 1); 

for num_iterations = 1:100
    j_vals(num_iterations) = J(theta,x,y);%% Calculate your cost function here %%
    theta = gd(zeros(3,1),x,y,alpha,num_iterations);%% Result of gradient descent update %%
end

% now plot J
% technically, the first J starts at the zero-eth iteration
% but Matlab/Octave doesn't have a zero index
figure;
plot(0:99, j_vals(1:100), '-')
xlabel('Number of iterations')
ylabel('Cost J')