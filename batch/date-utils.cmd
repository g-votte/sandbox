@echo off

call :GET_SQL_DATE
echo %SQL_DATE%

pause
goto :EOF


:GET_SQL_DATE
:: ���݂̓��t�� SQL �`���ł�Ԃ��܂��B
:: ���{����ł̂ݐ��������삵�܂��B
:: @return SQL_DATE

	set SQL_DATE=%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%

	goto :EOF
