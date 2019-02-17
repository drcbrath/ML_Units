function u = units
% The units.m returns a struct with the SI (meters, kilogram, second)
% values of many common units.
%
% The example below demonstrates how to use this struct to cleanly and
% efficiently perform matlab calculations using commonly encountered units
% and physical constants. The code is easily modified to include any
% non-standard unit or constant desired.
%
% To determine the exact syntax of a particular unit you would like to use,
% simply run the function with no semicolon and all the units will be
% displayed.
%
%  Using the units struct:
%  --------------------------------------------------------
%    First create a units struct by including in your code the following
%    line
%          u = units;
%    Then:
%    
%          %To enter a number in a given unit, MULTIPLY by the unit:
%                L = 5*u.in
%  
%          % To display in a desired unit, simply divide by that unit
%                L/u.ft       % displays L in ft.
%  
%          % To convert between units, MULTIPLY by the starting unit, and
%          % DIVIDE by the ending unit:
%                u.mi^2/u.ft^2  %displays the number of feet^2 in one
%                mile^2
%-------- UNITS ------------------------------
u.baseunits = 'SI'

%---- time -------
u.s = 1;
u.ms = 1e-3*u.s;
u.us = 1e-6*u.s;
u.ns = 1e-9*u.s;
u.ps = 1e-12*u.s;
u.min = 60*u.s;
u.hr = 60*u.min;
u.day = 24*u.hr;
u.yr = 365.242199*u.day; 

%------- angle ----
u.rad = 1;
u.deg = u.rad*pi/180;

%------- length ----
u.m = 1;
u.km = 1e3*u.m;
u.cm = 1e-2*u.m;
u.mm = 1e-3*u.m;
u.um = 1e-6*u.m;
u.nm = 1e-9*u.m;
u.ang = 1e-10*u.m;
u.in = 2.54*u.cm;
u.inch = u.in;
u.mil = 1e-3*u.in;
u.ft = 12*u.in;
u.yd = 3*u.ft;
u.mi = 5280*u.ft;
u.nmi = 6076*u.ft;
u.a0 = .529e-10*u.m;

%------- Volume -------
u.cc = (u.cm)^3;
u.L = 1000*u.cc;
u.mL = u.cc;
u.floz = 29.5735297*u.cc;
u.pint = 473.176475*u.cc;
u.quart = 946.35295*u.cc;
u.gal = 3.78541197*u.L;

%----- mass ---------
u.kg = 1;
u.gm = 1e-3*u.kg;
u.mg = 1e-3*u.gm;
u.lbm = 0.45359237*u.kg;
u.lb = u.lbm;
u.slug = 14.5939 * u.kg;
u.sl = u.slug;
u.oz = (1/16)*u.lb;
u.amu = 1.66e-27*u.kg;

%-------speed -------
u.mps = u.m/u.s;
u.kph = u.km/u.hr;
u.fps = u.ft/u.s;
u.fpm = u.ft/u.min;
u.mph = u.mi/u.hr;
u.kts = u.nmi/u.hr;

u.rpm = 2*pi/u.min;

%---- frequency ---- 
u.Hz = 1/u.s;
u.kHz = 1e3 *u.Hz;
u.MHz = 1e6 *u.Hz;
u.GHz = 1e9 *u.Hz;

%---- force -------
u.N = 1;
u.dyne = 1e-5*u.N;
u.lbf = 4.44822*u.N;

%----- energy -----
u.J = u.N*u.m;
u.MJ = 1e6*u.J;
u.kJ = 1e3*u.J;
u.mJ = 1e-3*u.J;
u.uJ = 1e-6*u.J;
u.nJ = 1e-9*u.J;
u.eV = 1.6022e-19*u.J;
u.BTU = 1.0550559e3*u.J;
u.kWh = 3.6e6*u.J;
u.cal = 4.1868*u.J;
u.kCal = 1e3*u.cal;

%---- temperature ---
u.K    = 1;
u.mK   = 1e-3*u.K;
u.uK   = 1e-6*u.K;
u.nK   = 1e-9*u.K;
u.degK = u.K;
u.degR = u.degK/1.8;

%---- pressure -----
u.Pa = 1;
u.kPa = 1000*u.Pa;
u.torr = 133.322*u.Pa;
u.mtorr = 1e-3*u.torr;
u.bar = 1e5*u.Pa;
u.mbar = 1e-3*u.bar;
u.atm = 101300.0*u.Pa;
u.psi = 6894.757293168*u.Pa;
u.psf = u.lbf/u.ft^2;

%----- power --- ---
u.W = 1;
u.MW = 1e6*u.W;
u.kW = 1e3*u.W;
u.mW = 1e-3*u.W;
u.uW = 1e-6*u.W;
u.nW = 1e-9*u.W;
u.pW = 1e-12*u.W;
u.hp = 745.69987*u.W;

%------ charge ------
u.coul = 1;
u.e = 1.6022e-19*u.coul;

%------ Voltage -----
u.V = 1;
u.kV = 1e3*u.V;
u.mV = 1e-3*u.V;
u.uV = 1e-6*u.V;

%----- Current ------
u.A = 1;
u.mA = 1e-3*u.A;
u.uA = 1e-6*u.A;
u.nA = 1e-9*u.A;

%----magnetic field -----
u.T = 1;
u.gauss = 1e-4*u.T;

%----fundamental constants ----
u.g = 9.80665*u.m/u.s^2;
u.kB = 1.38e-23*u.J/u.K;
u.sigma_SB = 5.670e-8 * u.W/(u.m^2 * u.K^4);
u.h = 6.626e-34 * u.J*u.s;
u.hbar = u.h/(2*pi);
u.mu_B = 9.274e-24 * u.J/u.T;
u.mu_N = 5.0507866e-27 * u.J/u.T;
u.c = 2.99792458e8*u.m/u.s;
u.eps0 = 8.8541878176204e-12* u.coul/(u.V*u.m);
u.mu0 = 1.2566370614359e-6 * u.J/(u.m*u.A^2);

end