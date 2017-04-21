function [fprate detrate]= final_anal(shakes,first,last)
e1=load('e1.txt');
u1=load('u1.txt');

for i=0:1:(min(length(e1),length(u1))/5/shakes)-1
n1(i+1,:)=(u1(5*i*shakes+1:5*i*shakes+5*shakes));
m1(i+1,:)=(e1(5*i*shakes+1:5*i*shakes+5*shakes));
end 
sortm1=sort(m1(:,:)');
sortn1=sort(n1(:,:)');
ba=sortm1'(1:end,first);
bb=sortm1'(1:end,last);
aa=sortn1'(1:end,first);
ab=sortn1'(1:end,last);
x=[1:1:8];
%figure; hold on;
%for idx = 1 : 8
%    plot([x(idx) x(idx)], ([aa(idx) ab(idx)])/10^6,'b');
%    plot([x(idx) x(idx)], ([ba(idx) bb(idx)])/10^6,'g');
%end
%hold off 
false=falsepositive(bb,aa);
corr = correct(ba,ab);
fprate = false/(false+corr);
detrate = 5*(corr+false)/min(length(e1),length(u1));
%plot(aa','g')
%hold on
%plot(ba','b')
%false_positive = overmin(aa,bb)
%false_negative = undermax(bb,aa)
%fnrate= false_negative/length(aa)
length(ba);
