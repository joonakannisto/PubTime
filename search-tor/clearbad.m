function [e1,u1] = clearbad (e1,u1) 
last= numel(e1);
i=0;
while (i<last)
i=i+1;
% there are two minus samples per each fail
% should have written five 
if (i>min(numel(e1),numel(u1)))
break;
endif
hit=0;
if (e1(i)<0)
 e1 = [e1(1:i-1); e1(i+2:end)];
 hit=1;
 if (u1(i)<0)
   u1 = [u1(1:i-1); u1(i+2:end)];
 else 
   u1 = [u1(1:i-1); u1(i+5:end)];
 end
 
elseif (u1(i)<0)
   hit=1;
   u1 = [u1(1:i-1); u1(i+2:end)];
   e1 = [e1(1:i-1); e1(i+5:end)];
end
i=i-hit;
end

