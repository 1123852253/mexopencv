%GETROTATIONMATRIX2D  Calculates an affine matrix of 2D rotation
%
%    T = getRotationMatrix2D(center, angle, scale)
%
%  Input:
%    center: Center of the rotation in the source image.
%    angle: Rotation angle in degrees. Positive values mean counter-clockwise
%           rotation (the coordinate origin is assumed to be the top-left
%           corner).
%    scale: Isotropic scale factor.
%  Output:
%    T: The output affine transformation, 2x3 floating-point matrix.
%
% The function calculates the following matrix:
% 
%     [ a, b, (1-a)*center.x-b*center.y ;
%      -b, a, b*center.x+(1-a)*center.y ]
% 
% where
%
%     a = scale * cos(angle)
%     b = scale * sin(angle)
%
% See also getAffineTransform, warpAffine, transform