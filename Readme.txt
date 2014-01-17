SIFT_classify is the code written for classification of 3 class data. 
One can directly run the code by changing the path to get the images and
the path to VLFeats setup. The code directly returns confusion matrix.



SURF_classify is the code written for classification of 25 class data.
One can run the code by changing the path to the images and the path to SURFMEX 
which is presented in the additional resources folder. It returns the predicted class
matrix and confusion matrix can be obtained by using 

[confusionmt,order] = confusionmat(groundtruth,predictedclassmatrix);

Overall accuracy of the classifier can be simply checked by finding

(numel(find(Groundtruth==predictedclass))/292)*100 (%% since there are 292 test images I woked on)