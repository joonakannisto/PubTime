e1=load('e1.txt');
u1=load('u1.txt');

[e1,u1] = clearbad(e1,u1); 
minfilt=ordfilt2(e1',1,ones(1,50));
% We lose the first and last samples 
minfilt= minfilt(find(minfilt,1,'first'):find(minfilt,1,'last'));
% indexes at the edges
edges=find(edge(minfilt/max(minfilt),'Sobel'));
edges=thinedges(edges); 
edges = [1 edges numel(e1)];
stats=zeros(8,13-8);
success=zeros(8,13-8); 
for k=1:8
for shakes=8:1:13
 clear fp;
 clear total;
 for i=1:numel(edges)-1
  exist=e1((edges(i)+25):(edges(i+1))-25);
  if numel(exist)-50<shakes*5
   continue
  endif
  [fp(i) det(i) total(i)] = final_anal(e1((edges(i)+25):(edges(i+1))-25),u1((edges(i)+25):(edges(i+1)-25))-25,shakes,1,k);
 end
 fp(isnan(fp))=0;
 stats(k,shakes)=(fp*total')/sum(total);
 success(k,shakes) = sum(total);
end
end

