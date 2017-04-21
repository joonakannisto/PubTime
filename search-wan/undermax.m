function out = undermax(bb,aa)  
fp = sign(bb-max(max(aa)));
fp=lt(fp,0);
fp=sum(fp,2);
fp=sum(gt(fp,0));
out = fp 

