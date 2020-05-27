{\rtf1\ansi\ansicpg936\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 ArialMT;\f1\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red133\green0\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c60000\c0\c100000;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 data train valid;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 set heart;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 if ranuni (7) <= .7 then output train; else output valid;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 run;
\f1\fs24 \cf3 \strokec3 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf3 proc factor data=train nfactors=8 score;
\f1\fs24 \

\f0\fs29\fsmilli14667 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf3 proc factor data=train score;
\f1\fs24 \

\f0\fs29\fsmilli14667 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf3 ods graphics on;
\f1\fs24 \

\f0\fs29\fsmilli14667 proc factor data=train score plots = SCREE;
\f1\fs24 \

\f0\fs29\fsmilli14667 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \

\f0\fs29\fsmilli14667 ods graphics off;
\f1\fs24 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf3 ods graphics on;
\f1\fs24 \

\f0\fs29\fsmilli14667 proc factor data=train plots = INITLOADINGS;
\f1\fs24 \

\f0\fs29\fsmilli14667 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \

\f0\fs29\fsmilli14667 ods graphics off;
\f1\fs24 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf3 ods graphics on;
\f1\fs24 \

\f0\fs29\fsmilli14667 proc factor data=train plots = LOADINGS ROTATE=VARIMAX;
\f1\fs24 \

\f0\fs29\fsmilli14667 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \

\f0\fs29\fsmilli14667 ods graphics off;
\f1\fs24 \

\f0\fs29\fsmilli14667 se;
\f1\fs24 \

\f0\fs29\fsmilli14667 run;
\f1\fs24 \

\f0\fs29\fsmilli14667 ods graphics off;
\f1\fs24 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \strokec2 proc factor data=train nfactors=7 score;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 var age cigsPerDay sysBP diaBP BMI heartRate glucose;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 run;
\f1\fs24 \cf3 \strokec3 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \strokec2 proc factor data=train score;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 var age cigsPerDay sysBP diaBP BMI heartRate glucose;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 run;
\f1\fs24 \cf3 \strokec3 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \strokec2 ods graphics on;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 proc factor data=train score plots = SCREE;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 var age cigsPerDay sysBP diaBP BMI heartRate glucose;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 run;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 ods graphics off;
\f1\fs24 \cf3 \strokec3 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\sl400\partightenfactor0

\f0\fs29\fsmilli14667 \cf2 \strokec2 ods graphics on;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 proc factor data=train plots = INITLOADINGS;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 var age cigsPerDay totChol sysBP diaBP BMI heartRate glucose;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 run;
\f1\fs24 \cf3 \strokec3 \

\f0\fs29\fsmilli14667 \cf2 \strokec2 ods graphics off;
\f1\fs24 \cf3 \strokec3 \
}