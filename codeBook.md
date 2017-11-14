---
title: "codeBook"
output: html_document
---

## Summary
```
   personID                 activityName tBodyAcc-mean()-X tBodyAcc-mean()-Y  tBodyAcc-mean()-Z
 Min.   : 1.00   LAYING            :6     Min.   :0.2423    Min.   :-0.03166   Min.   :-0.1183  
 1st Qu.: 8.50   SITTING           :6     1st Qu.:0.2727    1st Qu.:-0.01896   1st Qu.:-0.1109  
 Median :16.00   STANDING          :7     Median :0.2759    Median :-0.01768   Median :-0.1088  
 Mean   :15.71   WALKING           :6     Mean   :0.2736    Mean   :-0.01815   Mean   :-0.1090  
 3rd Qu.:22.50   WALKING_DOWNSTAIRS:4     3rd Qu.:0.2771    3rd Qu.:-0.01692   3rd Qu.:-0.1074  
 Max.   :30.00   WALKING_UPSTAIRS  :6     Max.   :0.2792    Max.   :-0.01445   Max.   :-0.1010  
 tBodyAcc-std()-X   tBodyAcc-std()-Y  tBodyAcc-std()-Z   tGravityAcc-mean()-X tGravityAcc-mean()-Y
 Min.   :-0.99504   Min.   :-0.9794   Min.   :-0.98098   Min.   :0.4412       Min.   :-0.350769   
 1st Qu.:-0.66457   1st Qu.:-0.5792   1st Qu.:-0.69785   1st Qu.:0.6464       1st Qu.:-0.067810   
 Median :-0.60559   Median :-0.5314   Median :-0.64710   Median :0.6813       Median : 0.002085   
 Mean   :-0.60130   Mean   :-0.5024   Mean   :-0.61266   Mean   :0.6751       Mean   :-0.010878   
 3rd Qu.:-0.57448   3rd Qu.:-0.4389   3rd Qu.:-0.55494   3rd Qu.:0.7037       3rd Qu.: 0.066294   
 Max.   : 0.07648   Max.   : 0.2200   Max.   :-0.09352   Max.   :0.9084       Max.   : 0.200569   
 tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y tGravityAcc-std()-Z tBodyAccJerk-mean()-X
 Min.   :-0.27820     Min.   :-0.9933     Min.   :-0.9848     Min.   :-0.9813     Min.   :0.06861      
 1st Qu.: 0.03295     1st Qu.:-0.9732     1st Qu.:-0.9604     1st Qu.:-0.9502     1st Qu.:0.07727      
 Median : 0.06232     Median :-0.9665     Median :-0.9564     Median :-0.9418     Median :0.07886      
 Mean   : 0.06841     Mean   :-0.9653     Mean   :-0.9550     Mean   :-0.9401     Mean   :0.07967      
 3rd Qu.: 0.14069     3rd Qu.:-0.9594     3rd Qu.:-0.9510     3rd Qu.:-0.9286     3rd Qu.:0.08182      
 Max.   : 0.26623     Max.   :-0.9397     Max.   :-0.9011     Max.   :-0.8807     Max.   :0.10590      
 tBodyAccJerk-mean()-Y tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
 Min.   :-0.001372     Min.   :-0.032698     Min.   :-0.9940      Min.   :-0.9892     
 1st Qu.: 0.004524     1st Qu.:-0.007646     1st Qu.:-0.7002      1st Qu.:-0.6766     
 Median : 0.007304     Median :-0.003553     Median :-0.6355      Median :-0.6100     
 Mean   : 0.008614     Mean   :-0.005631     Mean   :-0.6297      Mean   :-0.5981     
 3rd Qu.: 0.012233     3rd Qu.:-0.001159     3rd Qu.:-0.5804      3rd Qu.:-0.5635     
 Max.   : 0.032078     Max.   : 0.003645     Max.   : 0.0296      Max.   :-0.0271     
 tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y tBodyGyro-mean()-Z  tBodyGyro-std()-X
 Min.   :-0.9920      Min.   :-0.07353   Min.   :-0.17216   Min.   :-0.004648   Min.   :-0.9870  
 1st Qu.:-0.8111      1st Qu.:-0.04753   1st Qu.:-0.08332   1st Qu.: 0.084701   1st Qu.:-0.7603  
 Median :-0.7816      Median :-0.02576   Median :-0.07444   Median : 0.087284   Median :-0.7151  
 Mean   :-0.7613      Mean   :-0.02715   Mean   :-0.07671   Mean   : 0.085932   Mean   :-0.7177  
 3rd Qu.:-0.7250      3rd Qu.:-0.01903   3rd Qu.:-0.06699   3rd Qu.: 0.096384   3rd Qu.:-0.6856  
 Max.   :-0.4446      Max.   : 0.11961   Max.   :-0.04514   Max.   : 0.109093   Max.   :-0.3776  
 tBodyGyro-std()-Y tBodyGyro-std()-Z tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
 Min.   :-0.9851   Min.   :-0.9879   Min.   :-0.11905       Min.   :-0.05938       Min.   :-0.07434      
 1st Qu.:-0.7651   1st Qu.:-0.7178   1st Qu.:-0.10546       1st Qu.:-0.04415       1st Qu.:-0.05763      
 Median :-0.7134   Median :-0.6741   Median :-0.09881       Median :-0.04176       Median :-0.05558      
 Mean   :-0.6842   Mean   :-0.6468   Mean   :-0.09759       Mean   :-0.04284       Mean   :-0.05560      
 3rd Qu.:-0.6304   3rd Qu.:-0.6032   3rd Qu.:-0.08973       3rd Qu.:-0.04012       3rd Qu.:-0.05307      
 Max.   :-0.3990   Max.   :-0.1331   Max.   :-0.07311       Max.   :-0.03688       Max.   :-0.04507      
 tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z tBodyAccMag-mean() tBodyAccMag-std()
 Min.   :-0.9919       Min.   :-0.9933       Min.   :-0.9934       Min.   :-0.9854    Min.   :-0.9868  
 1st Qu.:-0.7758       1st Qu.:-0.8538       1st Qu.:-0.7956       1st Qu.:-0.6085    1st Qu.:-0.6549  
 Median :-0.7323       Median :-0.8112       Median :-0.7508       Median :-0.5428    Median :-0.5972  
 Mean   :-0.7269       Mean   :-0.7880       Mean   :-0.7386       Mean   :-0.5419    Mean   :-0.5907  
 3rd Qu.:-0.6896       3rd Qu.:-0.7137       3rd Qu.:-0.6806       3rd Qu.:-0.5143    3rd Qu.:-0.5529  
 Max.   :-0.3890       Max.   :-0.5460       Max.   :-0.4822       Max.   : 0.1946    Max.   :-0.1269  
 tGravityAccMag-mean() tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std()
 Min.   :-0.9854       Min.   :-0.9868      Min.   :-0.99325       Min.   :-0.99338     
 1st Qu.:-0.6085       1st Qu.:-0.6549      1st Qu.:-0.70263       1st Qu.:-0.68473     
 Median :-0.5428       Median :-0.5972      Median :-0.65018       Median :-0.62566     
 Mean   :-0.5419       Mean   :-0.5907      Mean   :-0.64090       Mean   :-0.62037     
 3rd Qu.:-0.5143       3rd Qu.:-0.5529      3rd Qu.:-0.59914       3rd Qu.:-0.57751     
 Max.   : 0.1946       Max.   :-0.1269      Max.   :-0.06621       Max.   :-0.03635     
 tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean() tBodyGyroJerkMag-std() fBodyAcc-mean()-X 
 Min.   :-0.9833     Min.   :-0.9817    Min.   :-0.9943         Min.   :-0.9933        Min.   :-0.99450  
 1st Qu.:-0.6785     1st Qu.:-0.7340    1st Qu.:-0.8134         1st Qu.:-0.8386        1st Qu.:-0.68461  
 Median :-0.6177     Median :-0.6797    Median :-0.7859         Median :-0.8037        Median :-0.61952  
 Mean   :-0.6016     Mean   :-0.6598    Mean   :-0.7614         Mean   :-0.7801        Mean   :-0.61688  
 3rd Qu.:-0.5492     3rd Qu.:-0.5893    3rd Qu.:-0.7040         3rd Qu.:-0.7203        3rd Qu.:-0.57958  
 Max.   :-0.1373     Max.   :-0.2238    Max.   :-0.5439         Max.   :-0.5739        Max.   :-0.04146  
 fBodyAcc-mean()-Y fBodyAcc-mean()-Z fBodyAcc-std()-X  fBodyAcc-std()-Y  fBodyAcc-std()-Z 
 Min.   :-0.9824   Min.   :-0.9865   Min.   :-0.9953   Min.   :-0.9784   Min.   :-0.9788  
 1st Qu.:-0.6051   1st Qu.:-0.7326   1st Qu.:-0.6558   1st Qu.:-0.5907   1st Qu.:-0.7007  
 Median :-0.5485   Median :-0.6843   Median :-0.6064   Median :-0.5426   Median :-0.6521  
 Mean   :-0.5290   Mean   :-0.6631   Mean   :-0.5967   Mean   :-0.5214   Mean   :-0.6181  
 3rd Qu.:-0.4744   3rd Qu.:-0.6299   3rd Qu.:-0.5650   3rd Qu.:-0.4637   3rd Qu.:-0.5554  
 Max.   : 0.1231   Max.   :-0.1986   Max.   : 0.1183   Max.   : 0.1907   Max.   :-0.1093  
 fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z fBodyAccJerk-mean()-X
 Min.   :-0.31917      Min.   :-0.15308      Min.   :-0.10784      Min.   :-0.994117    
 1st Qu.:-0.23726      1st Qu.:-0.02263      1st Qu.: 0.00420      1st Qu.:-0.715484    
 Median :-0.21243      Median : 0.03604      Median : 0.05028      Median :-0.652023    
 Mean   :-0.20959      Mean   : 0.02073      Mean   : 0.05474      Mean   :-0.646034    
 3rd Qu.:-0.18413      3rd Qu.: 0.07263      3rd Qu.: 0.08813      3rd Qu.:-0.611146    
 Max.   :-0.02094      Max.   : 0.12808      Max.   : 0.28697      Max.   : 0.007745    
 fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z fBodyAccJerk-std()-X fBodyAccJerk-std()-Y
 Min.   :-0.9888       Min.   :-0.9906       Min.   :-0.99446     Min.   :-0.99041    
 1st Qu.:-0.6956       1st Qu.:-0.7955       1st Qu.:-0.71133     1st Qu.:-0.67741    
 Median :-0.6294       Median :-0.7656       Median :-0.64961     Median :-0.61291    
 Mean   :-0.6189       Mean   :-0.7413       Mean   :-0.64648     Mean   :-0.60335    
 3rd Qu.:-0.5871       3rd Qu.:-0.7069       3rd Qu.:-0.59903     3rd Qu.:-0.56099    
 Max.   :-0.0429       Max.   :-0.3882       Max.   :-0.04166     Max.   :-0.08012    
 fBodyAccJerk-std()-Z fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y fBodyAccJerk-meanFreq()-Z
 Min.   :-0.9919      Min.   :-0.219176         Min.   :-0.3478           Min.   :-0.29029         
 1st Qu.:-0.8306      1st Qu.:-0.095135         1st Qu.:-0.2476           1st Qu.:-0.16960         
 Median :-0.7968      Median :-0.038915         Median :-0.2068           Median :-0.11253         
 Mean   :-0.7802      Mean   :-0.030002         Mean   :-0.2010           Mean   :-0.11225         
 3rd Qu.:-0.7420      3rd Qu.: 0.006708         3rd Qu.:-0.1654           3rd Qu.:-0.07941         
 Max.   :-0.5005      Max.   : 0.263820         Max.   : 0.1082           Max.   : 0.12948         
 fBodyGyro-mean()-X fBodyGyro-mean()-Y fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y
 Min.   :-0.9860    Min.   :-0.9874    Min.   :-0.9887    Min.   :-0.9874   Min.   :-0.9838  
 1st Qu.:-0.7058    1st Qu.:-0.7861    1st Qu.:-0.7095    1st Qu.:-0.7818   1st Qu.:-0.7671  
 Median :-0.6674    Median :-0.7448    Median :-0.6707    Median :-0.7358   Median :-0.7152  
 Mean   :-0.6666    Mean   :-0.7069    Mean   :-0.6384    Mean   :-0.7356   Mean   :-0.6761  
 3rd Qu.:-0.6387    3rd Qu.:-0.6302    3rd Qu.:-0.6021    3rd Qu.:-0.7042   3rd Qu.:-0.6110  
 Max.   :-0.2371    Max.   :-0.4771    Max.   :-0.1585    Max.   :-0.4232   Max.   :-0.3489  
 fBodyGyro-std()-Z fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z
 Min.   :-0.9887   Min.   :-0.24134       Min.   :-0.37533       Min.   :-0.212818     
 1st Qu.:-0.7514   1st Qu.:-0.14058       1st Qu.:-0.23151       1st Qu.:-0.088672     
 Median :-0.7082   Median :-0.10257       Median :-0.16665       Median :-0.048165     
 Mean   :-0.6838   Mean   :-0.10014       Mean   :-0.16657       Mean   :-0.046889     
 3rd Qu.:-0.6529   3rd Qu.:-0.04414       3rd Qu.:-0.09676       3rd Qu.:-0.001057     
 Max.   :-0.2055   Max.   : 0.02891       Max.   : 0.07375       Max.   : 0.101045     
 fBodyAccMag-mean() fBodyAccMag-std() fBodyAccMag-meanFreq() fBodyBodyAccJerkMag-mean()
 Min.   :-0.99001   Min.   :-0.9863   Min.   :-0.06007       Min.   :-0.993006         
 1st Qu.:-0.65311   1st Qu.:-0.7028   1st Qu.: 0.03975       1st Qu.:-0.684158         
 Median :-0.58993   Median :-0.6631   Median : 0.08732       Median :-0.614818         
 Mean   :-0.58148   Mean   :-0.6614   Mean   : 0.09261       Mean   :-0.611856         
 3rd Qu.:-0.52877   3rd Qu.:-0.6241   3rd Qu.: 0.13274       3rd Qu.:-0.568708         
 Max.   :-0.02958   Max.   :-0.3235   Max.   : 0.32008       Max.   : 0.003827         
 fBodyBodyAccJerkMag-std() fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean() fBodyBodyGyroMag-std()
 Min.   :-0.99263          Min.   :0.0817                 Min.   :-0.9866         Min.   :-0.9814       
 1st Qu.:-0.68354          1st Qu.:0.1401                 1st Qu.:-0.7566         1st Qu.:-0.7661       
 Median :-0.64109          Median :0.1829                 Median :-0.7173         Median :-0.7113       
 Mean   :-0.63483          Mean   :0.1823                 Mean   :-0.6956         Mean   :-0.6969       
 3rd Qu.:-0.59059          3rd Qu.:0.2132                 3rd Qu.:-0.6326         3rd Qu.:-0.6541       
 Max.   :-0.09778          Max.   :0.4287                 Max.   :-0.3544         Max.   :-0.2724       
 fBodyBodyGyroMag-meanFreq() fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
 Min.   :-0.22082            Min.   :-0.9933             Min.   :-0.9935           
 1st Qu.:-0.10931            1st Qu.:-0.8382             1st Qu.:-0.8499           
 Median :-0.03615            Median :-0.8101             Median :-0.8100           
 Mean   :-0.04249            Mean   :-0.7813             Mean   :-0.7949           
 3rd Qu.: 0.00961            3rd Qu.:-0.7148             3rd Qu.:-0.7385           
 Max.   : 0.15472            Max.   :-0.5841             Max.   :-0.5937           
 fBodyBodyGyroJerkMag-meanFreq() angle(tBodyAccMean,gravity) angle(tBodyAccJerkMean),gravityMean)
 Min.   :-0.01339                Min.   :-0.0156791          Min.   :-0.095431                   
 1st Qu.: 0.07620                1st Qu.: 0.0004257          1st Qu.:-0.011205                   
 Median : 0.14588                Median : 0.0074853          Median :-0.001221                   
 Mean   : 0.13554                Mean   : 0.0096594          Mean   :-0.002746                   
 3rd Qu.: 0.19563                3rd Qu.: 0.0127710          3rd Qu.: 0.013747                   
 Max.   : 0.37006                Max.   : 0.0760052          Max.   : 0.047037                   
 angle(tBodyGyroMean,gravityMean) angle(tBodyGyroJerkMean,gravityMean) angle(X,gravityMean)
 Min.   :-0.27610                 Min.   :-0.064495                    Min.   :-0.6704     
 1st Qu.:-0.01579                 1st Qu.:-0.023249                    1st Qu.:-0.5520     
 Median : 0.01216                 Median :-0.005330                    Median :-0.5124     
 Mean   : 0.01015                 Mean   :-0.005206                    Mean   :-0.4989     
 3rd Qu.: 0.04808                 3rd Qu.: 0.009227                    3rd Qu.:-0.4482     
 Max.   : 0.11888                 Max.   : 0.085189                    Max.   :-0.2773     
 angle(Y,gravityMean) angle(Z,gravityMean)
 Min.   :-0.09590     Min.   :-0.18628    
 1st Qu.: 0.01069     1st Qu.:-0.09266    
 Median : 0.07099     Median :-0.03908    
 Mean   : 0.07439     Mean   :-0.03549    
 3rd Qu.: 0.12404     3rd Qu.:-0.01117    
 Max.   : 0.32808     Max.   : 0.21708    
```

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
