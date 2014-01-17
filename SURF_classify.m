%function [basketball bat billiards binoculars buddha_b butterfly_b cactus cake camel car chess computer cowboy diamond electric fire grasshopper helicopter leopards motorbikes people refrigerator school screwdriver aplane testclass confusionmat] = assign5_main2();
%%for 25 class data set feature extraction%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%25 CLASS DATA%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%class 1
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/006.basketball-hoop';
jpgfiles = dir([directory '/*.jpg']);
disp('feature matrix generation')
%%%create empty feature matrices
featuremat_basketball = [];
featuremat_bat = [];
featuremat_billiards = [];
featuremat_binoculars = [];
featuremat_buddha_b = [];
featuremat_butterfly_b = [];
featuremat_cactus = [];
featuremat_cake = [];
featuremat_camel = [];
featuremat_car = [];
featuremat_chess = [];
featuremat_computer = [];
featuremat_cowboy = [];
featuremat_diamond = [];
featuremat_electric = [];
featuremat_fire = [];
featuremat_grasshopper = [];
featuremat_helicopter = [];
featuremat_leopards = [];
featuremat_motorbikes = [];
featuremat_people = [];
featuremat_refrigerator = [];
featuremat_school = [];
featuremat_screwdriver = [];
featuremat_aplane = [];
featuremat_testclass= [];



for k = 1:50
    filename7 = [directory '/' jpgfiles(k).name];
    A = imread(filename7);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d1, sign, info] = surfpoints(A,options);
    %[f7,d1] = vl_sift(A);
    basketball(k).name = filename7;
    basketball(k).featuremat = d1;
    featuremat_basketball = [featuremat_basketball d1];
end
%imwrite(basketball,'basketball.mat')
disp('class1')

%class 2
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/007.bat';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename8 = [directory '/' jpgfiles(k).name];
    A = imread(filename8);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d2, sign, info] = surfpoints(A,options);
    %[f8,d2] = vl_sift(A);
    bat(k).name = filename8;
    bat(k).featuremat = d2;
    featuremat_bat = [featuremat_bat d2];
end
%imwrite(bat,'bat.mat')

disp('class2')
%class 3

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/011.billiards';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename9 = [directory '/' jpgfiles(k).name];
    A = imread(filename9);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d3, sign, info] = surfpoints(A,options);
    %[f9,d3] = vl_sift(A);
    billiards(k).name = filename9;
    billiards(k).featuremat = d3;
    featuremat_billiards = [featuremat_billiards d3];
end
%imwrite(billiards,'billiards.mat')
disp('class3')

%class 4

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/012.binoculars';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename10 = [directory '/' jpgfiles(k).name];
    A = imread(filename10);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d4, sign, info] = surfpoints(A,options);
    %[f10,d4] = vl_sift(A);
    binoculars(k).name = filename10;
    binoculars(k).featuremat = d4;
    featuremat_binoculars = [featuremat_binoculars d4];
end
%imwrite(binoculars,'binoculars.mat')
disp('class4')
%%class 5

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/022.buddha-101';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename11 = [directory '/' jpgfiles(k).name];
    A = imread(filename11);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d5, sign, info] = surfpoints(A,options);
    %[f11,d5] = vl_sift(A);
    buddha_b(k).name = filename11;
    buddha_b(k).featuremat = d5;
    featuremat_buddha_b = [featuremat_buddha_b d5];
end
%imwrite(buddha_b,'buddha_b.mat')

disp('class5')
%%class 6

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/024.butterfly';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename12 = [directory '/' jpgfiles(k).name];
    A = imread(filename12);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
	options.hessianThreshold = 100;
	[cr, d6, sign, info] = surfpoints(A,options);
    %[f12,d6] = vl_sift(A);
    butterfly_b(k).name = filename12;
    butterfly_b(k).featuremat = d6;
    featuremat_butterfly_b = [featuremat_butterfly_b d6];
end
%imwrite(butterfly_b,'butterfly_b.mat')
disp('class6')

%class 7
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/025.cactus';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename13 = [directory '/' jpgfiles(k).name];
    A = imread(filename13);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f13,d7] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d7, sign, info] = surfpoints(A,options);
    cactus(k).name = filename13;
    cactus(k).featuremat = d7;
    featuremat_cactus = [featuremat_cactus d7];
end
%imwrite(cactus,'cactus.mat')
disp('class7')

%class 8
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/026.cake';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename14 = [directory '/' jpgfiles(k).name];
    A = imread(filename14);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f14,d8] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d8, sign, info] = surfpoints(A,options);
    cake(k).name = filename14;
    cake(k).featuremat = d8;
    featuremat_cake = [featuremat_cake d8];
end
%imwrite(cake,'cake.mat')
disp('class8')

%class 9

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/028.camel';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename15 = [directory '/' jpgfiles(k).name];
    A = imread(filename15);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f15,d9] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d9, sign, info] = surfpoints(A,options);
    camel(k).name = filename15;
    camel(k).featuremat = d9;
    featuremat_camel = [featuremat_camel d9];
end
%imwrite(camel,'camel.mat')

disp('class9')
%%class 10

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/031.car-tire';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename16 = [directory '/' jpgfiles(k).name];
    A = imread(filename16);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f16,d10] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d10, sign, info] = surfpoints(A,options);
    car(k).name = filename16;
    car(k).featuremat = d10;
    featuremat_car = [featuremat_car d10];
end
%imwrite(car,'car.mat')

disp('class10')
%class 11

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/037.chess-board';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename17 = [directory '/' jpgfiles(k).name];
    A = imread(filename17);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f17,d11] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d11, sign, info] = surfpoints(A,options);
    chess(k).name = filename17;
    chess(k).featuremat = d11;
    featuremat_chess = [featuremat_chess d11];
end
%imwrite(chess,'chess.mat')
disp('class11')

%%class 12

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/045.computer-keyboard';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename18 = [directory '/' jpgfiles(k).name];
    A = imread(filename18);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f18,d12] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d12, sign, info] = surfpoints(A,options);
    computer(k).name = filename18;
    computer(k).featuremat = d12;
    featuremat_computer = [featuremat_computer d12];
end
%imwrite(computer,'computer.mat')
disp('class12')
%%class 13

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/051.cowboy-hat';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename19 = [directory '/' jpgfiles(k).name];
    A = imread(filename19);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f19,d13] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d13, sign, info] = surfpoints(A,options);
    cowboy(k).name = filename19;
    cowboy(k).featuremat = d13;
    featuremat_cowboy = [featuremat_cowboy d13];
end
%imwrite(cowboy,'cowboy.mat')
disp('class13')

%%class 14
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/054.diamond-ring';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename20 = [directory '/' jpgfiles(k).name];
    A = imread(filename20);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f20,d14] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d14, sign, info] = surfpoints(A,options);
    diamond(k).name = filename20;
    diamond(k).featuremat = d14;
    featuremat_diamond = [featuremat_diamond d14];
end
%imwrite(diamond,'diamond.mat')
disp('class14')

%%class 15
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/063.electric-guitar';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename21 = [directory '/' jpgfiles(k).name];
    A = imread(filename21);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f21,d15] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d15, sign, info] = surfpoints(A,options);
    electric(k).name = filename21;
    electric(k).featuremat = d15;
    featuremat_electric = [featuremat_electric d15];
end
%imwrite(electric,'electric.mat')
disp('class15')
%class 16

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/072.fire-truck';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename22 = [directory '/' jpgfiles(k).name];
    A = imread(filename22);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f22,d16] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d16, sign, info] = surfpoints(A,options);
    fire(k).name = filename22;
    fire(k).featuremat = d16;
    featuremat_fire = [featuremat_fire d16];
end
%imwrite(fire,'fire.mat')
disp('class16')

%%class 17

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/093.grasshopper';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename23 = [directory '/' jpgfiles(k).name];
    A = imread(filename23);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f23,d17] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d17, sign, info] = surfpoints(A,options);
    grasshopper(k).name = filename23;
    grasshopper(k).featuremat = d17;
    featuremat_grasshopper = [featuremat_grasshopper d17];
end
%imwrite(grasshopper,'grasshopper.mat')
disp('class17')

%%class 18

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/102.helicopter';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename24 = [directory '/' jpgfiles(k).name];
    A = imread(filename24);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f24,d18] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d18, sign, info] = surfpoints(A,options);
    helicopter(k).name = filename24;
    helicopter(k).featuremat = d18;
    featuremat_helicopter = [featuremat_helicopter d18];
end
%imwrite(helicopter,'helicopter.mat')

disp('class18')
%%class 19

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/129.leopards';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename25 = [directory '/' jpgfiles(k).name];
    A = imread(filename25);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f25,d19] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d19, sign, info] = surfpoints(A,options);
    leopards(k).name = filename25;
    leopards(k).featuremat = d19;
    featuremat_leopards = [featuremat_leopards d19];
end
%imwrite(leopards,'leopards.mat')
disp('class19')

%%class 20

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/145.motorbikes';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename26 = [directory '/' jpgfiles(k).name];
    A = imread(filename26);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f26,d20] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d20, sign, info] = surfpoints(A,options);
    motorbikes(k).name = filename26;
    motorbikes(k).featuremat = d20;
    featuremat_motorbikes = [featuremat_motorbikes d20];
end
%imwrite(motorbikes,'motorbikes.mat')
disp('class20')

%%class 21

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/159.people';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename27 = [directory '/' jpgfiles(k).name];
    A = imread(filename27);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f27,d21] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d21, sign, info] = surfpoints(A,options);
    people(k).name = filename27;
    people(k).featuremat = d21;
    featuremat_people = [featuremat_people d21];
end
%imwrite(people,'people.mat')
disp('class21')
%% class 22

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/171.refrigerator';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename28 = [directory '/' jpgfiles(k).name];
    A = imread(filename28);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f28,d22] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d22, sign, info] = surfpoints(A,options);
    refrigerator(k).name = filename28;
    refrigerator(k).featuremat = d22;
    featuremat_refrigerator = [featuremat_refrigerator d22];
end
%imwrite(refrigerator,'refrigerator.mat')
disp('class22')
%class 23

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/178.school-bus';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename29 = [directory '/' jpgfiles(k).name];
    A = imread(filename29);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f29,d23] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d23, sign, info] = surfpoints(A,options);
    school(k).name = filename29;
    school(k).featuremat = d23;
    featuremat_school = [featuremat_school d23];
end
%imwrite(school,'school.mat')
disp('class23')

%%class 24

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/180.screwdriver';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:50
    filename30 = [directory '/' jpgfiles(k).name];
    A = imread(filename30);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f30,d24] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d24, sign, info] = surfpoints(A,options);
    screwdriver(k).name = filename30;
    screwdriver(k).featuremat = d24;
    featuremat_screwdriver = [featuremat_screwdriver d24];
end
%imwrite(screwdriver,'screwdriver.mat')
disp('class24')
%%class 25

directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TrainingDataset/251.airplanes';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:57
    filename31 = [directory '/' jpgfiles(k).name];
    A = imread(filename31);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f31,d25] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d25, sign, info] = surfpoints(A,options);
    aplane(k).name = filename31;
    aplane(k).featuremat = d25;
    featuremat_aplane = [featuremat_aplane d25];
end
%imwrite(aplane,'aplane.mat')
disp('class25')

%%testing features in 25 class data%%%%
directory = 'C:/Users/SMX/Dropbox/MATLAB_RICE/Assignment05/Assignment05/Assignment05_data_expanded/TestDataset';
jpgfiles = dir([directory '/*.jpg']);

for k = 1:292
    filename32 = [directory '/' jpgfiles(k).name];
    A = imread(filename32);
    if numel(size(A))==3
        A = rgb2gray(A);
    end
    %A = cast(A,'single');
    %[f32,d26] = vl_sift(A);
	options.hessianThreshold = 100;
	[cr, d26, sign, info] = surfpoints(A,options);
    testclass(k).name = filename32;
    testclass(k).featuremat = d26;
    featuremat_testclass = [featuremat_testclass d26];
end
%imwrite(testclass,'testclass.mat')
disp('class26')
Train_featuremat = [featuremat_basketball featuremat_bat featuremat_billiards featuremat_binoculars featuremat_buddha_b ...
    featuremat_butterfly_b featuremat_cactus featuremat_cake featuremat_camel featuremat_car featuremat_chess ...
    featuremat_computer featuremat_cowboy featuremat_diamond featuremat_electric featuremat_fire featuremat_grasshopper ...
    featuremat_helicopter featuremat_leopards featuremat_motorbikes featuremat_people featuremat_refrigerator featuremat_school ...
    featuremat_screwdriver featuremat_aplane];
Train_featuremat = cast(Train_featuremat','double');
%[pc,score] = princomp(Train_featuremat');
%red_dim_features = score(:,1:20);
N = 5200;
%load c_trainmat.mat
[C_train, idx_train] = vl_kmeans(Train_featuremat, N, 'Initialization', 'plusplus') ;
C_train = C_train';
num = [numel(featuremat_basketball) numel(featuremat_bat) numel(featuremat_billiards) numel(featuremat_binoculars) numel(featuremat_buddha_b) ...
    numel(featuremat_butterfly_b) numel(featuremat_cactus) numel(featuremat_cake) numel(featuremat_camel) numel(featuremat_car) numel(featuremat_chess) ...
    numel(featuremat_computer) numel(featuremat_cowboy) numel(featuremat_diamond) numel(featuremat_electric) numel(featuremat_fire) numel(featuremat_grasshopper) ...
    numel(featuremat_helicopter) numel(featuremat_leopards) numel(featuremat_motorbikes) numel(featuremat_people) numel(featuremat_refrigerator) numel(featuremat_school) ...
    numel(featuremat_screwdriver) numel(featuremat_aplane)];
disp('kmeansdone')

disp('represntative histogram generation for each class')

basketball_hist = hist_generate(featuremat_basketball,C_train);
bat_hist = hist_generate(featuremat_bat,C_train);
billiards_hist = hist_generate(featuremat_billiards,C_train);
binoculars_hist = hist_generate(featuremat_binoculars,C_train);
buddha_hist = hist_generate(featuremat_buddha_b,C_train);
butterfly_hist = hist_generate(featuremat_butterfly_b,C_train);
cactus_hist = hist_generate(featuremat_cactus,C_train);
cake_hist = hist_generate(featuremat_cake,C_train);
camel_hist = hist_generate(featuremat_camel,C_train);
car_hist = hist_generate(featuremat_car,C_train);
chess_hist = hist_generate(featuremat_chess,C_train);
computer_hist = hist_generate(featuremat_computer,C_train);
cowboy_hist = hist_generate(featuremat_cowboy,C_train);
diamond_hist = hist_generate(featuremat_diamond,C_train);
electric_hist = hist_generate(featuremat_electric,C_train);
fire_hist = hist_generate(featuremat_fire,C_train);
grasshopper_hist = hist_generate(featuremat_grasshopper,C_train);
helicopter_hist = hist_generate(featuremat_helicopter,C_train);
leopards_hist = hist_generate(featuremat_leopards,C_train);
motorbikes_hist = hist_generate(featuremat_motorbikes,C_train);
people_hist = hist_generate(featuremat_people,C_train);
refrigerator_hist = hist_generate(featuremat_refrigerator,C_train);
school_hist = hist_generate(featuremat_school,C_train);
screwdriver_hist = hist_generate(featuremat_screwdriver,C_train);
aplane_hist = hist_generate(featuremat_aplane,C_train);

disp('histogram  generation done')
for i=1:N
basketball_hist(1,i) = double(basketball_hist(1,i)/num(1));
bat_hist(1,i) = double(bat_hist(1,i)/num(2));
billiards_hist(1,i) = double(billiards_hist(1,i)/num(3));
binoculars_hist(1,i) = double(binoculars_hist(1,i)/num(4));
buddha_hist(1,i) = double(buddha_hist(1,i)/num(5));
butterfly_hist(1,i) = double(butterfly_hist(1,i)/num(6));
cactus_hist(1,i) = double(cactus_hist(1,i)/num(7));
cake_hist(1,i) = double(cake_hist(1,i)/num(8));
camel_hist(1,i) = double(camel_hist(1,i)/num(9));
car_hist(1,i) = double(car_hist(1,i)/num(10));
chess_hist(1,i) = double(chess_hist(1,i)/num(11));
computer_hist(1,i) = double(computer_hist(1,i)/num(12));
cowboy_hist(1,i) = double(cowboy_hist(1,i)/num(13));
diamond_hist(1,i) = double(diamond_hist(1,i)/num(14));
electric_hist(1,i) = double(electric_hist(1,i)/num(15));
fire_hist(1,i) = double(fire_hist(1,i)/num(16));
grasshopper_hist(1,i) = double(grasshopper_hist(1,i)/num(17));
helicopter_hist(1,i) = double(helicopter_hist(1,i)/num(18));
leopards_hist(1,i) = double(leopards_hist(1,i)/num(19));
motorbikes_hist(1,i) = double(motorbikes_hist(1,i)/num(20));
people_hist(1,i) = double(people_hist(1,i)/num(21));
refrigerator_hist(1,i) = double(refrigerator_hist(1,i)/num(22));
school_hist(1,i) = double(school_hist(1,i)/num(23));
screwdriver_hist(1,i) = double(screwdriver_hist(1,i)/num(24));
aplane_hist(1,i) = double(aplane_hist(1,i)/num(25));
end
disp('normalizing histogram done')

testclass_hist = zeros(292,N);

for i=1:292
    fmat = testclass(i).featuremat;
    testclass_hist(i,:) = hist_generate(fmat,C_train);
    testclass_hist(i,:) = double(testclass_hist(i,:)/numel(fmat));
end

accumat_testclass = zeros(1,292);
clustermat = [basketball_hist;bat_hist;billiards_hist;binoculars_hist;buddha_hist;butterfly_hist;cactus_hist;cake_hist;camel_hist; ...
    car_hist;chess_hist;computer_hist;cowboy_hist;diamond_hist;electric_hist;fire_hist;grasshopper_hist;helicopter_hist;leopards_hist;motorbikes_hist; ...
    people_hist;refrigerator_hist;school_hist;screwdriver_hist;aplane_hist];
for i=1:292
    [idx1,D1] = knnsearch(testclass_hist(i,:),clustermat);
    [C,idx2] = min(D1);
    accumat_testclass(1,i) = idx2;
end

confusionmat = accumat_testclass;
        


