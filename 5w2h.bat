@echo off
for /f "tokens=1,* delims==" %%a in (5w2h.ini) do (set %%a=%%b)
if not exist %outdir% goto err
set dtime=%date% %time%
:inp

echo.
set /p mes0=���O������Ƃ�����H�F
echo.
set /p mes5=�ǂꂾ���̎��Ԃ�������H�F
echo.
set /p mes3=�ǂ��Ō��ʂ𔭊�����H�F
echo.
set /p mes6=�������邽�߂ɕK�v�Ȑl�́H�F
echo.
set /p mes2=�ǂ�Ȗ�����������H�F
echo.
set /p mes1=���̂��߂ɍ��H�F
echo.
set /p mes4=�ǂ�����Ď�������H�F
echo.
set /p mes7=�ǂꂾ���̗\�Z��������H�F

echo.
echo �L�^�����F%dtime%
echo �v���W�F�N�g���F
echo ��%mes0%
echo �^�[�Q�b�g�F
echo ��%mes1%
echo �ۑ�F
echo ��%mes2%
echo �Ώ۔͈́F
echo ��%mes3%
echo ������i�F
echo ��%mes4%
echo ���������F
echo ��%mes5%
echo �����̐��F
echo ��%mes6%
echo �\�Z�v��F
echo ��%mes7%
echo.
if not exist %outdir%%outname% echo Date,�v���W�F�N�g��,�^�[�Q�b�g,�ۑ�,�Ώ۔͈�,������i,��������,�����̐�,�\�Z�v��>%outdir%%outname%
echo %dtime%,%mes0%,%mes1%,%mes2%,%mes3%,%mes4%,%mes5%,%mes6%,%mes7%>>%outdir%%outname%
echo.
echo.
echo �����B
echo.
pause
exit
:err
echo.
echo �G���[�������������ߏI�����܂��B
echo.
pause
exit
