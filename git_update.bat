@echo off
echo ===============================================
echo          ATUALIZADOR AUTOMÁTICO GIT
echo ===============================================

REM 1. Ativar ambiente virtual
echo [1/5] Ativando ambiente virtual...
call venv\Scripts\activate

REM 2. Verificar status
echo [2/5] Verificando mudanças...
git status

REM 3. Perguntar mensagem do commit
set /p commit_msg="[3/5] Digite a mensagem do commit: "

REM 4. Adicionar arquivos
echo [4/5] Adicionando mudanças...
git add .

REM 5. Fazer commit
echo [5/5] Fazendo commit e enviando...
git commit -m "%commit_msg%"
git push

echo.
echo ===============================================
echo          ATUALIZAÇÃO CONCLUÍDA!
echo ===============================================
echo Repositório: https://github.com/Afonso-eng/PORTIFOLIO
echo.
pause