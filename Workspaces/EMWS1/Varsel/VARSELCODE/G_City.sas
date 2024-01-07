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
