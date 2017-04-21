function out = falsepositive(bb,aa)  
len=min([numel(bb) numel(aa)]); 
fp = sign(bb(1:len)-aa(1:len));
fp=lt(fp,0);
fp=sum(gt(fp,0));
out = fp;

