% ECOR2606L1 - David Manouchehri - Lab Quiz #2
% The purpose of this program is to create a plot and table as desscribed in v2.pdf.

D = 50;
m = 2.5;

f = @(x) calcT0(x, D, m);

% i

range = [1 20];

fplot(f, range);
xlabel('x');
ylabel('y');

% ii

range2 = 2.0:0.5:10;

fprintf('  sag	   T0\n');
for step = range2 
   fprintf('%6.2f\t%6.2f\n', step, f(step));
end
