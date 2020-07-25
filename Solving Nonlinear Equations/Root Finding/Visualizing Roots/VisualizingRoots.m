%Initially, we use linspace to create a vector  of 100 equally spaced 
%elements between x = -2 and x = 2
x = linspace(-2,2);
%Then, we calculate the values of  for every value in vector .
y = sin(2*x) + exp(-x) -1;
%After calculating  and , it is required to plot  as a function of .
plot(x,y);
grid on
%According to the plot, there are three roots. 
numRoots = 3;