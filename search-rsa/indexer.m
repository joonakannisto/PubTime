function inds = indexer(x)
clean=ordfilt2(x,1,ones(50,1));

newbw=edge(clean/max(clean),"Sobel");
inds=filterclose(find(newbw));
