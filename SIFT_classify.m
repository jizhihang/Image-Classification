%function [airplan butterfly buddha airplantest bttrflytest buddatest airplan_hist butterfly_hist buddha_hist airplantest_hist buttrflytest_hist buddatest_hist confusionmatrix] = assign5_main();
run('C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_reduced/vlfeat-0.9.17-bin/vlfeat-0.9.17/toolbox/vl_setup')
%%feature matrix generation for 3 class data set
directory = 'Assignment05_data_reduced/TrainingDataset/251.airplanes';
jpgfiles = dir([directory '/*.jpg']);
featuremat_airplan = [];
featuremat_butterfly = [];
featuremat_buddha = [];

featuremat_airplan_test = [];
featuremat_butterfly_test = [];
featuremat_buddha_test = [];
%%there are 57 images in airplane DB
for k = 1:57
    filename1 = [directory '/' jpgfiles(k).name];
    
    A = imread(filename1);
    A = rgb2gray(A);
    A = cast(A,'single');
    
    [f1,d1] = vl_sift(A);
    airplan(k).name = filename1;
    airplan(k).featuremat = d1;
    featuremat_airplan = [featuremat_airplan d1];
end
%imwrite(airplan,'airplan.mat')
disp('firstloopdone')

directory = 'Assignment05_data_reduced/TrainingDataset/024.butterfly';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename2 = [directory '/' jpgfiles(k).name];
    A = imread(filename2);
    A = rgb2gray(A);
    A = cast(A,'single');
    [f2,d2] = vl_sift(A);
    butterfly(k).name = filename2;
    butterfly(k).featuremat = d2;
    featuremat_butterfly = [featuremat_butterfly d2];
end
%imwrite(butterfly,'butterfly.mat')
disp('secondloopdone')


directory = 'Assignment05_data_reduced/TrainingDataset/022.buddha-101';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename3 = [directory '/' jpgfiles(k).name];
    A = imread(filename3);
    
    if numel(size(A))==3
    A = rgb2gray(A);
    end
    A = cast(A,'single');
    [f3,d3] = vl_sift(A);
    buddha(k).name = filename3;
    buddha(k).featuremat = d3;
    featuremat_buddha = [featuremat_buddha d3];
end
%imwrite(buddha,'buddha.mat')
disp('thirdloopdone')

%%%Testing data feature matrix%%%
directory = 'Assignment05_data_reduced/TestDataset_3';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:16
    filename4 = [directory '/' jpgfiles(k).name];
    A = imread(filename4);
    if numel(size(A))==3
    A = rgb2gray(A);
    end
    A = cast(A,'single');
    [f4,d4] = vl_sift(A);
    airplantest(k).name = filename4;
    airplantest(k).featuremat = d4;
    featuremat_airplan_test = [featuremat_airplan_test d4];
end
%imwrite(airplantest,'airplantest.mat')
disp('fourthloopdone')

directory = 'Assignment05_data_reduced/TestDataset_2';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:10
    filename5 = [directory '/' jpgfiles(k).name];
    A = imread(filename5);
    if numel(size(A))==3
    A = rgb2gray(A);
    end
    A = cast(A,'single');
    [f5,d5] = vl_sift(A);
    bttrflytest(k).name = filename5;
    bttrflytest(k).featuremat = d5;
    featuremat_butterfly_test = [featuremat_butterfly_test d5];
end
%imwrite(bttrflytest,'bttrflytest.mat')
disp('fifthloopdone')

directory = 'Assignment05_data_reduced/TestDataset_1';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:14
    filename6 = [directory '/' jpgfiles(k).name];
    A = imread(filename6);
   if numel(size(A))==3
    A = rgb2gray(A);
    end
    A = cast(A,'single');
    [f6,d6] = vl_sift(A);
    buddatest(k).name = filename6;
    buddatest(k).featuremat = d6;
    featuremat_buddha_test = [featuremat_buddha_test d6];
end
%imwrite(buddatest,'buddatest.mat')

%%%creating clusters in training data
%%training features 
Train_featuremat = [featuremat_airplan featuremat_butterfly featuremat_buddha];
Train_featuremat = cast(Train_featuremat,'double');
N = 1000;


%%clustering into 1000 clusters
%label = litekmeans(Train_featuremat',1000);
%[idx_train,C_train] = litekmeans(Train_featuremat,N);
[C_train, idx_train] = vl_kmeans(Train_featuremat, N, 'Initialization', 'plusplus') ;

%[C_train,idx_train] = VL_KMEANS(Train_featuremat,1000,'verbose','distance','l1');%%%clstering using eucledian distance
%load c_train 
C_train = C_train';
%%representative histogram for each class%%%
%load C_train_to_submit
C_train = C_train';
[id1,dist1] = knnsearch(C_train,featuremat_airplan','distance','correlation');
[id2,dist2] = knnsearch(C_train,featuremat_butterfly','distance','correlation');
[id3,dist3] = knnsearch(C_train,featuremat_buddha','distance','correlation');
airplan_hist= hist(id1(:),[1:1000]);
butterfly_hist =hist(id2(:),[1:1000]);
buddha_hist = hist(id3(:),[1:1000]);

%%normalized representative histogram
num1 = numel(featuremat_airplan);
num2 = numel(featuremat_butterfly);
num3 = numel(featuremat_buddha);
airplan_hist = double(airplan_hist/num1);
butterfly_hist = double(butterfly_hist/num2);
buddha_hist = double(buddha_hist/num3);
figure,plot(airplan_hist)
figure,plot(butterfly_hist)
figure,plot(buddha_hist)

%%%%testing the algorithm
%histogram generation and normalization for each test image
airplantest_hist = zeros(16,1000); %16 airplan images
buttrflytest_hist = zeros(10,1000); %10 butterfly images
buddatest_hist = zeros(14,1000);% 14 budda images

for i=1:16
    fmat = airplantest(i).featuremat;
    [id,dist] = knnsearch(C_train,fmat','distance','correlation');
    airplantest_hist(i,:) = hist(id(:),[1:1000]);
    airplantest_hist(i,:) = double(airplantest_hist(i,:)/numel(fmat));
end

for i=1:10
    fmat2 = bttrflytest(i).featuremat;
    [id,dist] = knnsearch(C_train,fmat2','distance','correlation');
    buttrflytest_hist(i,:) = hist(id(:),[1:1000]);
    buttrflytest_hist(i,:) = double(buttrflytest_hist(i,:)/numel(fmat2));
end

for i=1:14
    fmat3 = buddatest(i).featuremat;
    [id,dist] = knnsearch(C_train,fmat3','distance','correlation');
    buddatest_hist(i,:) = hist(id(:),[1:1000]);
    buddatest_hist(i,:) = double(buddatest_hist(i,:)/numel(fmat3));
end

%%comparing the histogram

accumat_airplan = zeros(1,16);
accumat_bttrfly = zeros(1,10);
accumat_buddha = zeros(1,14);
clustermat = [airplan_hist;butterfly_hist;buddha_hist];
for i=1:16
%     d1 = pdist2(airplan_hist,airplantest_hist(i,:),'correlation');
%     d2 = pdist2(butterfly_hist,airplantest_hist(i,:),'correlation');
%     d3 = pdist2(buddha_hist,airplantest_hist(i,:),'correlation');
    y = airplantest_hist(i,:);
    [idx1,Dist] = knnsearch(y,clustermat);
    %Dist
    [C,idx2] = min(Dist);%%%eucledian distance, min distance implies nearest vector
  %array = [d1 d2 d3];
  %[c,idx2] = max(array);
    accumat_airplan(1,i) = idx2;
end

for i=1:10
%     d1 = pdist2(airplan_hist,buttrflytest_hist(i,:),'correlation');
%     d2 = pdist2(butterfly_hist,buttrflytest_hist(i,:),'correlation');
%     d3 = pdist2(buddha_hist,buttrflytest_hist(i,:),'correlation');
y2 = buttrflytest_hist(i,:);
    [idx1,Dist] = knnsearch(y2,clustermat);
    [C,idx2] = min(Dist);
  %array = [d1 d2 d3];
  %[c,idx2] = max(array);
   %[idx2,D2] = knnsearch(clustermat,buttrflytest_hist(i,:),'distance','correlation');
   % [C3,idx3] = max(D2);

    accumat_bttrfly(1,i) = idx2;
end

for i=1:14
%      d1 = pdist2(airplan_hist,buddatest_hist(i,:),'correlation');
%     d2 = pdist2(butterfly_hist,buddatest_hist(i,:),'correlation');
%     d3 = pdist2(buddha_hist,buddatest_hist(i,:),'correlation');
y3 = buddatest_hist(i,:);
    [idx1,Dist] = knnsearch(y3,clustermat);
    [C,idx2] = min(Dist);
  %array = [d1 d2 d3];
  %[c,idx2] = max(array);
    %[idx4,D4] = knnsearch(clustermat,buddatest_hist(i,:),'distance','correlation');
    
   %[C5,idx5] = max(D4);
    accumat_buddha(1,i) = idx2;
end

confusionmatrix = zeros(3,3);
confusionmatrix(1,1) = numel(find(accumat_airplan==1))/16;
confusionmatrix(1,2) = numel(find(accumat_airplan==2))/16;
confusionmatrix(1,3) = numel(find(accumat_airplan==3))/16;

confusionmatrix(2,1) = numel(find(accumat_bttrfly==1))/10;
confusionmatrix(2,2) = numel(find(accumat_bttrfly==2))/10;
confusionmatrix(2,3) = numel(find(accumat_bttrfly==3))/10;

confusionmatrix(3,1) = numel(find(accumat_buddha==1))/14;
confusionmatrix(3,2) = numel(find(accumat_buddha==2))/14;
confusionmatrix(3,3) = numel(find(accumat_buddha==3))/14;
