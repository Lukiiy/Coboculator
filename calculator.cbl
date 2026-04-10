       identification division.
       
       program-id. calculator.
       author. Lukiiy
       
       data division.
       working-storage section.
       01  inputNum PIC X(20).
       01  inputNum1 PIC X(20).
       01  operator PIC X.
       01  result PIC S9(18)V99.
       01  fNum PIC S9(18)V99.
       01  fNum1 PIC S9(18)V99.

       procedure division.
           DISPLAY "Enter 1st number: "
           ACCEPT inputNum

           DISPLAY "Enter operator (+, -, *, /): "
           ACCEPT operator

           DISPLAY "Enter 2nd number: "
           ACCEPT inputNum1

           MOVE FUNCTION NUMVAL(inputNum) TO fNum
           MOVE FUNCTION NUMVAL(inputNum1) TO fNum1

           EVALUATE operator
               WHEN "+"
                   COMPUTE result = fNum + fNum1
               WHEN "-"
                   COMPUTE result = fNum - fNum1
               WHEN "*"
                   COMPUTE result = fNum * fNum1
               WHEN "x"
                   COMPUTE result = fNum * fNum1
               WHEN "/"
                   IF fNum1 = 0
                       DISPLAY "You can't divide something by 0!"
                       STOP RUN
                   END-IF
 
                   COMPUTE result = fNum / fNum1
               WHEN OTHER
                   DISPLAY "Invalid operator!"
                   STOP RUN
           END-EVALUATE

           DISPLAY "Result: " result
           STOP RUN.
