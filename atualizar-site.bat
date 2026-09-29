@echo off
chcp 65001 > nul
echo ===================================================
echo     SINCRONIZANDO COM O GITHUB E VERCEL...
echo ===================================================
echo.

cd /d "%~dp0"

echo [1/3] Adicionando arquivos modificados...
git add .

echo [2/3] Criando commit...
git commit -m "atualizacao automatica: %date% %time%"

echo [3/3] Enviando para o GitHub (main e master)...
git push origin main
git push origin main:master --force

echo.
echo ===================================================
echo   SUCESSO! O seu site ja esta atualizando na Vercel!
echo ===================================================
echo.
pause
