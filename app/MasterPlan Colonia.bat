@echo off
TITLE MasterPlan Colonia
COLOR 0E

:: 1. Nos aseguramos de estar en la carpeta correcta
cd /d "%~dp0"
echo ==========================================
echo           INICIO DE EJECUCION
echo ==========================================
echo CARPETA ACTUAL: %CD%
echo.

:: 2. Verificamos si Python responde
echo [PASO 1] Buscando Python...
python --version
IF %ERRORLEVEL% NEQ 0 (
    COLOR 0C
    echo ERROR: Windows no encuentra el comando "python".
    echo CAUSA PROBABLE: No marcaste "Add to PATH" al instalar.
    goto FIN
)
echo Python encontrado correctamente.
echo.

:: 3. Verificamos si existe el archivo app.py
echo [PASO 2] Buscando archivos...
IF EXIST "app.py" (
    echo Archivo app.py ENCONTRADO.
) ELSE (
    COLOR 0C
    echo ERROR CRITICO: No encuentro el archivo "app.py".
    echo Verifica que este en esta misma carpeta y que no se llame "app.py.txt".
    goto FIN
)
echo.

:: 4. Intentamos instalar librerias mostrando todo el texto
echo [PASO 3] Instalando librerias...
python -m pip install -r requirements.txt
echo.

:: 5. Ejecutamos Streamlit
echo [PASO 4] Iniciando App...
echo ---------------------------------------------------
python -m streamlit run app.py
echo ---------------------------------------------------

:FIN
echo.
echo ==========================================
echo EL PROGRAMA SE HA DETENIDO.
echo LEE EL MENSAJE DE ERROR ARRIBA (SI LO HAY).
echo ==========================================
pause