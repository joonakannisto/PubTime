e1=load('cafe2.txt');
u1=load('tea2.txt');
[decaf,detea] = clearbad(e1,u1);
fpint=zeros(2,200);
detint=zeros(2,200);
totint=zeros(2,200);
for interval=1:2
parfor kats=1:200
  first_sample=interval;
  last_sample=floor(kats/20)+first_sample;
   [fpint(kats,interval),detint(kats,interval),totint(kats,interval)] = final_anal(decaf,detea,kats,first_sample,last_sample);
end 
end 
