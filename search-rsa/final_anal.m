function [fprate detrate total]= final_anal(e1,u1,shakes,first,last)

for i=0:1:(min(length(e1),length(u1))/5/shakes)-1
n1(i+1,:)=(u1(5*i*shakes+1:5*i*shakes+5*shakes));
m1(i+1,:)=(e1(5*i*shakes+1:5*i*shakes+5*shakes));
end 
sortm1=sort(m1(:,:)');
sortn1=sort(n1(:,:)');
ba=sortm1(first,1:end);
bb=sortm1(last,1:end);
aa=sortn1(first,1:end);
ab=sortn1(last,1:end);
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
detrate = 5*(corr+false)*shakes/min(length(e1),length(u1));
%plot(aa','g')
%hold on
%plot(ba','b')
%false_positive = overmin(aa,bb)
%false_negative = undermax(bb,aa)
%fnrate= false_negative/length(aa)
total=corr;
end
