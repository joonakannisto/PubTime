function out = overmin(bb,aa)  
fp = sign(min(min(aa))-bb);
fp=lt(fp,0);
fp=sum(fp,2);
fp=sum(gt(fp,0));
out = fp 

