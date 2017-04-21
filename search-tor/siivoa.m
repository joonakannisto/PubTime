function out = siivoa (e1) 
last = length(e1) 
for i=1:last;
% there are two minus samples per each fail
if (e1(i)<0)
 e1 = [e1(1:i-1); e1(i-5:i-1); e1(i+2:end)];
 last=last+3;
 i = i+4;
end
end
out=e1;
