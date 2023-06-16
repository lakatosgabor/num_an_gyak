function [y] = fgv1(x)
% a pont kordinátánként végzi a műveletet
y = exp(sqrt(log(x.^4+1)));
end