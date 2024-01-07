*;
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
