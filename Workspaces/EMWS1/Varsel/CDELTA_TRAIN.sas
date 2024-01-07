if upcase(name) = 'AVERAGE_RATING' then role = 'REJECTED';
else
if upcase(name) = 'CITY' then role = 'REJECTED';
else
if upcase(name) = 'DAYS_SINCE_LAST_PURCHASE' then role = 'REJECTED';
else
if upcase(name) = 'DISCOUNT_APPLIED' then role = 'REJECTED';
else
if upcase(name) = 'GENDER' then role = 'REJECTED';
else
if upcase(name) = 'ITEMS_PURCHASED' then role = 'REJECTED';
else
if upcase(name) = 'SATISFACTION_LEVEL' then role = 'REJECTED';
if upcase(strip(name)) = "G_CITY" then level = "NOMINAL";
if upcase(strip(name)) = "G_ITEMS_PURCHASED" then level = "NOMINAL";
if upcase(strip(name)) = "G_SATISFACTION_LEVEL" then level = "NOMINAL";
