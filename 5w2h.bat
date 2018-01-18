@echo off
for /f "tokens=1,* delims==" %%a in (5w2h.ini) do (set %%a=%%b)
if not exist %outdir% goto err
set dtime=%date% %time%
:inp

echo.
set /p mes0=名前をつけるとしたら？：
echo.
set /p mes5=どれだけの時間をかける？：
echo.
set /p mes3=どこで効果を発揮する？：
echo.
set /p mes6=実現するために必要な人は？：
echo.
set /p mes2=どんな問題を解決する？：
echo.
set /p mes1=何のために作る？：
echo.
set /p mes4=どうやって実現する？：
echo.
set /p mes7=どれだけの予算をかける？：

echo.
echo 記録日時：%dtime%
echo プロジェクト名：
echo →%mes0%
echo ターゲット：
echo →%mes1%
echo 課題：
echo →%mes2%
echo 対象範囲：
echo →%mes3%
echo 実現手段：
echo →%mes4%
echo 実現時期：
echo →%mes5%
echo 実現体制：
echo →%mes6%
echo 予算計画：
echo →%mes7%
echo.
if not exist %outdir%%outname% echo Date,プロジェクト名,ターゲット,課題,対象範囲,実現手段,実現時期,実現体制,予算計画>%outdir%%outname%
echo %dtime%,%mes0%,%mes1%,%mes2%,%mes3%,%mes4%,%mes5%,%mes6%,%mes7%>>%outdir%%outname%
echo.
echo.
echo 完了。
echo.
pause
exit
:err
echo.
echo エラーが発生したため終了します。
echo.
pause
exit
