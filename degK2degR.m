function Rankine = degK2degR(Kelvin)
% function Rankine = degK2degR(Kelvin)
%
% given temperature in degrees Kelvin
% return temperature in degrees Rankine

Rankine = (Kelvin - 273.15)*1.8 + 32 + 459.69;

end