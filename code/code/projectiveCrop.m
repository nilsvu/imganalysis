function Iout = projectiveCrop(I,p,p0)
    % Set defaultparameter for p0
    if nargin < 3, p0 =[ 1 1;  2000 1 ; 2000 1450; 1 1450 ]; end;
   
    % Calculate projective croped image using cp2tform and imtransform
    xmin = min(p0(:,1));
    xmax = max(p0(:,1)); 
    ymin = min(p0(:,2));
    ymax = max(p0(:,2));
    Iout = zeros(xmax,ymax,3); %this is a dummy
end
