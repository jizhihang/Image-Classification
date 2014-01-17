function [histog] = hist_generate(featuremat,clustermat);
[r c] = size(clustermat);
%histog = zeros(1,r);
featuremat = featuremat';
%exhaustiveobj = ExhaustiveSearcher(featuremat,'Distance','jaccard');
[idx,dist] = knnsearch(clustermat,featuremat,'distance','correlation');
%[idx,dist] = knnsearch(featuremat,clustermat,'distance','chebychev');
%%average distance in clusters from centroids
% for i=1:1000
%     if dist(i)<=avg
%     inval = numel(find(i==idx));
%     histog(1,i)= inval;
%     end
% end


% idx2 = zeros(size(idx));
% for i=1:r
%     if dist(i)<=avg
%         idx2(i) = idx(i);
%     end
% end


%H = hist(idx(:),r);
H1 = hist(idx(:),[1:r]);
histog = H1;


