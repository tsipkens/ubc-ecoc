
% QU  Previous qu functions.
% Author: Timothy Sipkens, 2020-09-18
%=========================================================================%

function [ec, oc] = qu(rgb)

lab = rgb2lab(rgb);
lch = rgb2lch(rgb);

ec = 31.675-0.305.*lab(:,1)+0.293.*lab(:,2)+...
    0.272.*lab(:,3)+0.232.*lch(:,2)-0.00711.*lch(:,3)-8.418.*lab(:,2)./lab(:,3);
oc = 175.218-3.365.*lab(:,1)-1.662.*lab(:,2)+...
    1.639.*lab(:,3)-0.031.*lch(:,2)+0.03.*lch(:,3)+7.816.*lab(:,2)./lab(:,3)+...
    0.016.*lab(:,1).^2+0.797.*(lab(:,2)).^2-0.051.*(lab(:,3)).^2-...
    0.018.*lch(:,2).^2;


end
