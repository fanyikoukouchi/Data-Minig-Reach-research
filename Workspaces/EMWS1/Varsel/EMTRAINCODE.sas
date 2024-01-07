*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    City(ASC) Discount_Applied(ASC) Gender(ASC) Items_Purchased(ASC)
   Membership_Type(ASC) Satisfaction_Level(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Age Average_Rating Days_Since_Last_Purchase Total_Spend
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
libname _spdslib SPDE "C:\Users\ADMINI~1\AppData\Local\Temp\SAS Temporary Files\_TD29524_DESKTOP-T9TR9Q4_";
proc dmdb batch data=EMWS1.FIMPORT_train
dmdbcat=WORK.EM_DMDB
maxlevel = 101
out=_spdslib.EM_DMDB
;
class %DMDBClass;
var %DMDBVar;
target
Age
;
run;
quit;
*------------------------------------------------------------* ;
* Varsel: Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INPUTS;
               AVERAGE_RATING CITY DAYS_SINCE_LAST_PURCHASE DISCOUNT_APPLIED GENDER
   Items_Purchased MEMBERSHIP_TYPE SATISFACTION_LEVEL TOTAL_SPEND
%mend INPUTS;
proc dmine data=_spdslib.EM_DMDB dmdbcat=WORK.EM_DMDB
minr2=0.005 maxrows=3000 stopr2=0.0005 NOAOV16 NOINTER USEGROUPS OUTGROUP=EMWS1.Varsel_OUTGROUP outest=EMWS1.Varsel_OUTESTDMINE outeffect=EMWS1.Varsel_OUTEFFECT outrsquare =EMWS1.Varsel_OUTRSQUARE
NOMONITOR
PSHORT
;
var %INPUTS;
target Age;
code file="C:\Users\Administrator\Desktop\NewProjectExam\Workspaces\EMWS1\Varsel\EMFLOWSCORE.sas";
code file="C:\Users\Administrator\Desktop\NewProjectExam\Workspaces\EMWS1\Varsel\EMPUBLISHSCORE.sas";
run;
quit;
/*      proc print data =EMWS1.Varsel_OUTEFFECT;      proc print data =EMWS1.Varsel_OUTRSQUARE;      */
run;
