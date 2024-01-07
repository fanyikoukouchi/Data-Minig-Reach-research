%macro main;

   %if %upcase(&EM_ACTION) = CREATE %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmforest_create.source';
       %include temp;
       filename temp;
       %hpdm_Forest_create;
   %end;
   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmforest_train.source';
       %include temp;
       filename temp;
       %hpdm_Forest_train;
   %end;
   %else
   %if %upcase(&EM_ACTION) = SCORE %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmforest_score.source';
       %include temp;
       filename temp;
       %hpdm_Forest_score;
   %end;
   %else
   %if %upcase(&EM_ACTION) = REPORT %then %do;
       filename temp catalog 'sashelp.hpdm.hpdmforest_report.source';
       %include temp;
       filename temp;
       %hpdm_Forest_report;
   %end;
   %else

%mend main;

%main;

