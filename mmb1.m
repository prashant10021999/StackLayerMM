clc;
clear all;

layerArray{1} = {'air', 0, [0 0 0], 0, 1};      % Air layer (ambient)
layerArray{2} = {'TiO2', 30, [0 90 0], 0, 0};   % TiO2 layer (film)
layerArray{3} = {'Si100', Inf, [0 0 0], 0, 1};  % Silicon layer (substrate)

% Define the parameters
wavelengths = linspace(400, 700, 100);  % Wavelength range from 400nm to 700nm
aoi = 45;                               % Angle of incidence of 45 degrees
bReflect = true;                        % Calculate for reflection
bNormalize = true;                      % Normalize by M11

% Call the Berreman function
M = mmBerreman(layerArray, wavelengths, aoi, bReflect, bNormalize);

% M is now a 4x4x100 array, where each 4x4 matrix corresponds to a wavelength
