****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_Age = 'Predicted: Age' ;
label R_Age = 'Residual: Age' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_6 $      6; DROP _ARBFMT_6; 
_ARBFMT_6 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
_ARBFMT_6 = PUT( Membership_Type , $6.);
 %DMNORMIP( _ARBFMT_6);
IF _ARBFMT_6 IN ('BRONZE' ) THEN DO;
  _ARBFMT_12 = PUT( G_City , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('2' ) THEN DO;
    IF  NOT MISSING(Total_Spend ) AND 
                     455.7 <= Total_Spend  THEN DO;
      _NODE_  =                   15;
      _LEAF_  =                   18;
      P_Age  =     36.0952380952381;
      END;
    ELSE DO;
      IF  NOT MISSING(Total_Spend ) AND 
                      440.85 <= Total_Spend  THEN DO;
        IF  NOT MISSING(Total_Spend ) AND 
                        445.75 <= Total_Spend  THEN DO;
          _NODE_  =                   33;
          _LEAF_  =                   17;
          P_Age  =     36.8333333333333;
          END;
        ELSE DO;
          _NODE_  =                   32;
          _LEAF_  =                   16;
          P_Age  =                   38;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(Total_Spend ) AND 
                        435.65 <= Total_Spend  THEN DO;
          _NODE_  =                   31;
          _LEAF_  =                   15;
          P_Age  =                 36.4;
          END;
        ELSE DO;
          _NODE_  =                   30;
          _LEAF_  =                   14;
          P_Age  =     36.9473684210526;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(Total_Spend ) AND 
      Total_Spend  <                  498 THEN DO;
      _NODE_  =                   12;
      _LEAF_  =                   11;
      P_Age  =                41.04;
      END;
    ELSE DO;
      IF  NOT MISSING(Total_Spend ) AND 
                     518.075 <= Total_Spend  THEN DO;
        _NODE_  =                   23;
        _LEAF_  =                   13;
        P_Age  =     42.1111111111111;
        END;
      ELSE DO;
        _NODE_  =                   22;
        _LEAF_  =                   12;
        P_Age  =                   43;
        END;
      END;
    END;
  END;
ELSE DO;
  _ARBFMT_12 = PUT( G_City , BEST12.);
   %DMNORMIP( _ARBFMT_12);
  IF _ARBFMT_12 IN ('1' ) THEN DO;
    _ARBFMT_12 = PUT( G_Items_Purchased , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('0' ) THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                   10;
      P_Age  =                   33;
      END;
    ELSE DO;
      IF  NOT MISSING(Total_Spend ) AND 
                      800.55 <= Total_Spend  THEN DO;
        _NODE_  =                   21;
        _LEAF_  =                    9;
        P_Age  =                34.96;
        END;
      ELSE DO;
        _NODE_  =                   20;
        _LEAF_  =                    8;
        P_Age  =     33.6538461538461;
        END;
      END;
    END;
  ELSE DO;
    _ARBFMT_12 = PUT( G_Items_Purchased , BEST12.);
     %DMNORMIP( _ARBFMT_12);
    IF _ARBFMT_12 IN ('2' ,'0' ) THEN DO;
      _ARBFMT_12 = PUT( G_Satisfaction_Level , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        IF  NOT MISSING(Total_Spend ) AND 
          Total_Spend  <              1435.15 THEN DO;
          _NODE_  =                   28;
          _LEAF_  =                    5;
          P_Age  =                   29;
          END;
        ELSE DO;
          _NODE_  =                   29;
          _LEAF_  =                    6;
          P_Age  =                   28;
          END;
        END;
      ELSE DO;
        _NODE_  =                   19;
        _LEAF_  =                    7;
        P_Age  =     26.8823529411764;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(Total_Spend ) AND 
                     1170.55 <= Total_Spend  THEN DO;
        _NODE_  =                   17;
        _LEAF_  =                    4;
        P_Age  =                30.14;
        END;
      ELSE DO;
        _ARBFMT_12 = PUT( G_Items_Purchased , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('3' ) THEN DO;
          _NODE_  =                   27;
          _LEAF_  =                    3;
          P_Age  =                   32;
          END;
        ELSE DO;
          IF  NOT MISSING(Total_Spend ) AND 
                         1155.45 <= Total_Spend  THEN DO;
            _NODE_  =                   35;
            _LEAF_  =                    2;
            P_Age  =     31.6923076923077;
            END;
          ELSE DO;
            _NODE_  =                   34;
            _LEAF_  =                    1;
            P_Age  =     30.8181818181818;
            END;
          END;
        END;
      END;
    END;
  END;

*****  RESIDUALS R_ *************;
IF MISSING( Age ) THEN R_Age  = .;
ELSE R_Age  = Age  - P_Age ;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

