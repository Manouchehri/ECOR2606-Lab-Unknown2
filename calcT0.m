% ECOR2606L1 - David Manouchehri - Lab Quiz #2
% The purpose of this program is to
% Inputs: 
%           sag in a cable suspended between two points (in metres)
%           D is the distance between the two points (in metres)
%           m is the mass per unit length of the cable (in kg/m)
% Outputs:
%           T0 is the tension at the lowest point in the cable (in Newtons)

function [ T0 ] =  calcT0(sag, D, m)

g = 9.81;

if(m <= 0)
    error('Mass cannot be equal or smaller to zero');
end

% This didn't work as I hoped, didn't have time to try it another way.
syms x;
sag_f = x ./ (m .* g) .* (cosh((m .* g .* D) ./ (2 .* x)) - 1) - sag;
T0_f = solve(sag_f, x);
% T0 = fzero(T0_f, [1 1e9]);

T0 = 0;

end
