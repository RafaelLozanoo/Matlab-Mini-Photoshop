function RGBnew = changeBrightness(RGB, brightness, contrast)

% function RGBnew = changeBrightness(RGB, brightness, contrast)
% 
% This function changes the brightness and contrast of an RGB image
%
% Arguments:
% - RGB: the RGB image
% - brightness: the brightness factor (-1..1)
% - contrast: the contrast factor (-1..1)
%
% Returns
% - RGBnew: the processed image
%

RGBnew = RGB;
if (brightness < 0.0)  
    RGBnew = RGBnew * ( 1.0 + brightness);
else
    RGBnew = RGBnew + ((1.0 - RGBnew) * brightness);
end
RGBnew = (RGBnew - 0.5) * (tan ((contrast + 1) * pi/4) ) + 0.5;