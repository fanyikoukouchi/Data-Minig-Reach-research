if NAME="Age" then do;
ROLE="INPUT";
LEVEL="INTERVAL";
ORDER="";
end;
if NAME="Customer_ID" then do;
ROLE="ID";
LEVEL="INTERVAL";
ORDER="";
end;
if NAME="Days_Since_Last_Purchase" then do;
ROLE="TARGET";
LEVEL="INTERVAL";
ORDER="";
end;
if NAME="Discount_Applied" then do;
ROLE="TARGET";
LEVEL="BINARY";
ORDER="";
end;
drop DROP;
