@echo off
TITLE Generador de Horarios Colonia
COLOR 0A
echo ==========================================
echo      INICIANDO SISTEMA DE COLONIA
echo ==========================================
echo.

:: 1. Verificamos si Python esta accesible
python --version >nul 2>&1
if %errorlevel% neq 0 (
    COLOR 0C
    echo [ERROR CRITICO]
    echo No se detecto Python instalado o no esta agregado al PATH.
    echo.
    echo SOLUCION:
    echo 1. Descarga Python de python.org
    echo 2. Al instalar, MARCA la casilla "Add Python to PATH" (abajo de todo).
    echo.
    pause
    exit
)

echo Verificando librerias necesarias...
echo (Esto puede tardar unos segundos)...
echo.

:: 2. Instalamos usando "python -m pip" que es mas seguro
python -m pip install -r requirements.txt >nul 2>&1

echo.
echo TODO LISTO. ABRIENDO PROGRAMA...
echo.
echo IMPORTANTE:
echo 1. Se abrira tu navegador automaticamente.
echo 2. NO CIERRES esta ventana negra mientras uses el programa.
echo.

:: 3. EL CAMBIO CLAVE ESTA AQUI ABAJO:
python -m streamlit run app.py

pause