-----------------------------------------------------------------------------------------
-- Filename = RUN_XXJS_EMPLOYEE_REPORT.sql                                                      --
-- Author: Jim Slanker                                                                 --
-- Date: June 3rd 2022                                                                 --
-----------------------------------------------------------------------------------------
set serveroutput on
set define on


--------------------------------------------------------------------------------
-- Start Commands to Spool Output for logging of script Execution             --
-- spool off command is needed at the end of the script to close the log file --
--------------------------------------------------------------------------------
spool XXJS_EMPLOYEE_REPORT_OUTPUT.txt

EXECUTE PR_XXJS_EMPLOYEE_REPORT;

set define on
PROMPT >> End of RUN_XXJS_EMPLOYEE_REPORT Script


------------------------------------------------------------
-- The following command will close the spool output file --
spool off