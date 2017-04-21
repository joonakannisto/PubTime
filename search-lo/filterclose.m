function out=filterclose(x)

last=numel(x)-1;
out=[x(1)];
%for i=1:1:numel(x)-1
for index=2:last

previous=x(index);
if (previous+50 < x(index+1))
out=[out x(index+1)];
end
end
