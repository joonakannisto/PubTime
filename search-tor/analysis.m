e1=load('exist.txt');
u1=load('noexist.txt');

shakes = 50 
for i=0:1:length(e1)/4/shakes-1
n1(i+1,:)=(u1(4*i*shakes+1:4*i*shakes+4*shakes));
m1(i+1,:)=(e1(4*i*shakes+1:4*i*shakes+4*shakes));
end 
sorttaus_alku = 1
sortm1=sort(m1(:,:)');
sortn1=sort(n1(:,:)');
sortohi=1
bb=sortm1'(1:end,8:10);
aa=sortn1'(1:end,8:10);
plot(aa','g')
hold on
plot(bb','b')
false_positive = overmin(aa,bb)
false_negative = undermax(bb,aa)
fnrate= false_negative/length(aa)

