data sasep.out;
   dcl package score sc();
   dcl double "Age";
   dcl double "Average_Rating" having label n'Average Rating';
   dcl double "Total_Spend" having label n'Total Spend';
   dcl double "Items_Purchased" having label n'Items Purchased';
   dcl nchar(6) "Gender";
   dcl nchar(13) "City";
   dcl nchar(6) "Membership_Type" having label n'Membership Type';
   dcl nchar(11) "Satisfaction_Level" having label n'Satisfaction Level';
   dcl double "P_Days_Since_Last_Purchase" having
     label n'Predicted: Days_Since_Last_Purchase';
   dcl nchar(4) "_WARN_" having label n'Warnings';
   keep "P_Days_Since_Last_Purchase" "_WARN_";
    
   varlist allvars [_all_];
    
   method init();
      sc.setvars(allvars);
      sc.setKey(n'3F8CE54CD6BA44C16BC5B2D1C3C83521FBD7CBF0');
   end;
    
   method run();
      set sasep.in;
      sc.scoreRecord();
   end;
enddata;
