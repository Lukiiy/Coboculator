       identification division.
       program-id. hi.
       data division.
       
       working-storage section.
       01 naame PIC X(16) VALUE "You".
       procedure division.
           display "say world! " with no advancing.
           accept naame.
           
           display "Hello " naame.
           stop run.
