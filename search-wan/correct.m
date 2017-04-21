function out = correct(ba,ab)  
len=min([numel(ba) numel(ab)]); 
fp = sign(ba(1:len)-ab(1:len));
fp=gt(fp,0);
fp=sum(gt(fp,0));
out = fp;

