@echo off & setlocal

:: Variable Expansion Examples

set VARNAME=HOGE

set DATA_%VARNAME%=Hello, world!
call :GET_VALUE DATA_%VARNAME%

echo `call :GET_VALUE DATA_HOGE` = %VALUE%

pause
goto :EOF

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:GET_VALUE
:: �w�肳�ꂽ�ϐ��̒l��ԋp���܂��B
:: @returns VALUE �w�肳�ꂽ�ϐ��̒l��Ԃ��܂��B

	call :GET_VALUE_VALUE %%%1%%
	goto :EOF

	:GET_VALUE_VALUE
		set VALUE=%*
		goto :EOF
