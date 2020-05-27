/*summary statistic*/
proc means data=cleaning;
var age cigsperday totchol sysbp diabp bmi heartrate glucose;
run;

proc freq data=cleaning;
tables male education CurrentSmoker bpmeds PrevalentStroke PrevalentHyp Diabetes TenYearCHD;
title'category variables description';
run;

/*quantity*/
/*age and tenyearchd boxplot*/
proc sgplot data=cleaning;
vbox age/ category= tenyearchd;
title'difference between tenyearchd in age';
run;

/*sysbp and tenyearchd boxplot*/
proc sgplot data=cleaning;
vbox sysbp/ category= tenyearchd;
title'difference between tenyearchd in sysbp';
run;
/*bmi and tenyearchd boxplot*/
proc sgplot data=cleaning;
vbox bmi/ category= tenyearchd;
title'difference between tenyearchd in bmi';
run;
/*glucose and tenyearchd boxplot???*/
proc sgplot data=cleaning;
vbox glucose/ category= tenyearchd;
title'difference between tenyearchd in glucose';
run;
/*quality*/

/*male*/
proc sgplot data=cleaning;
vbar male/group=tenyearchd;
title'sex by tenyearchd';
run;
/*education*/
proc sgplot data=cleaning;
vbar education/group=tenyearchd;
title'education by tenyearchd';
run;
/*current smoker*/
proc sgplot data=cleaning;
vbar currentsmoker/group=tenyearchd;
title'currentsmoker by tenyearchd';
run;
/*bpmeds*/
proc sgplot data=cleaning;
vbar bpmeds/group=tenyearchd;
title'bpmeds by tenyearchd';
run;
/*prevalentHyp*/
proc sgplot data=cleaning;
vbar prevalentHyp/group=tenyearchd;
title'prevalentHyp by tenyearchd';
run;
/*diabetes*/
proc sgplot data=cleaning;
vbar diabetes/group=tenyearchd;
title'diabetes by tenyearchd';
run;

/*scatter */
proc sgplot data=cleaning;
scatterplot x=sysbp y=diabp
/markerattrs=(symbol=circlefilled);
title'relationship between sysbp and diabp';
run;

/*logistic regression*/
proc logistic data=cleaning plot(unpack)=(roc influence);
class male CurrentSmoker bpmeds PrevalentStroke PrevalentHyp Diabetes
/param=glm;
model tenyearchd(event='1')= male CurrentSmoker bpmeds PrevalentHyp Diabetes age totchol sysbp bmi
/ ctable;
run;


/*classification tree*/
ods graphics on;
proc hpsplit data = cleaning plots=all;
class male education CurrentSmoker bpmeds PrevalentStroke PrevalentHyp Diabetes tenyearchd;
model tenyearchd(event='1')= male education CurrentSmoker bpmeds PrevalentHyp Diabetes age totchol sysbp bmi;
run;
ods graphics off;
