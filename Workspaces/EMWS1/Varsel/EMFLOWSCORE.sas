******************************************;
*** Begin Scoring Code from PROC DMINE ***;
******************************************;

length _WARN_ $ 4;
label _WARN_ = "Warnings";


/*----G_City begin----*/
length _NORM13 $ 13;
_NORM13 = put( City , $13. );
%DMNORMIP( _NORM13 )
drop _NORM13;
select(_NORM13);
  when('CHICAGO' ) G_City = 3;
  when('HOUSTON' ) G_City = 2;
  when('LOS ANGELES' ) G_City = 1;
  when('MIAMI' ) G_City = 0;
  when('NEW YORK' ) G_City = 0;
  when('SAN FRANCISCO' ) G_City = 0;
  otherwise substr(_WARN_, 2, 1) = 'U'; 
end;
label G_City="Grouped Levels for  City";
/*----City end----*/

/*----G_Items_Purchased begin----*/
length _NORM12 $ 12;
_NORM12 = put( Items_Purchased , BEST12. );
%DMNORMIP( _NORM12 )
drop _NORM12;
select(_NORM12);
  when('7' ) G_Items_Purchased = 3;
  when('8' ) G_Items_Purchased = 3;
  when('9' ) G_Items_Purchased = 4;
  when('10' ) G_Items_Purchased = 3;
  when('11' ) G_Items_Purchased = 2;
  when('12' ) G_Items_Purchased = 2;
  when('13' ) G_Items_Purchased = 0;
  when('14' ) G_Items_Purchased = 1;
  when('15' ) G_Items_Purchased = 1;
  when('16' ) G_Items_Purchased = 1;
  when('17' ) G_Items_Purchased = 1;
  when('18' ) G_Items_Purchased = 0;
  when('19' ) G_Items_Purchased = 1;
  when('20' ) G_Items_Purchased = 1;
  when('21' ) G_Items_Purchased = 0;
  otherwise substr(_WARN_, 2, 1) = 'U'; 
end;
label G_Items_Purchased="Grouped Levels for  Items_Purchased";
/*----Items_Purchased end----*/

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


****************************************;
*** End Scoring Code from PROC DMINE ***;
****************************************;
