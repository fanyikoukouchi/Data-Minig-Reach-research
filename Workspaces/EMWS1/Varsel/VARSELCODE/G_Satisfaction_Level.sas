*;
/*----G_Satisfaction_Level begin----*/
length _NORM11 $ 11;
%DMNORMCP( Satisfaction_Level , _NORM11 )
drop _NORM11;
select(_NORM11);
when(' ' ) G_Satisfaction_Level = 1;
when('NEUTRAL' ) G_Satisfaction_Level = 1;
when('SATISFIED' ) G_Satisfaction_Level = 0;
when('UNSATISFIED' ) G_Satisfaction_Level = 1;
otherwise substr(_WARN_, 2, 1) = 'U';
end;
label G_Satisfaction_Level="Grouped Levels for  Satisfaction_Level";
/*----Satisfaction_Level end----*/
