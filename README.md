# ☀️ Master Plan Colonia

**Master Plan Colonia** es una herramienta automatizada diseñada para generar y gestionar cronogramas de actividades para colonias de vacaciones. 

Este sistema resuelve la compleja logística de asignar horarios, respetando restricciones de recursos (piletas, canchas), disponibilidad de profesores y reglas de descanso para los grupos.

## 🚀 Características Principales

* **Algoritmo Inteligente:** Asigna actividades automáticamente evitando superposiciones.
* **Gestión de Piletas:** Control estricto de capacidad para piletas chica, mediana y grande.
* **Profesores Compartidos:** Maneja restricciones donde un mismo profesor está a cargo de múltiples grupos (ej. Celeste y Amarillo).
* **Reglas de Descanso (Buffer):** Evita asignar deportes intensos inmediatamente antes o después de natación (permitiendo solo Merienda o Plaza).
* **Unicidad Diaria:** Garantiza que un grupo no repita la misma actividad en el mismo día.
* **Exportación Excel:** Genera reportes detallados y formateados para coordinadores (por grupo) y para profesores (por actividad).


🛠️ Requisitos e Instalación
Opción A: Ejecutar desde el código fuente
Asegúrate de tener Python 3.10+ instalado.

Clona este repositorio:

Bash

git clone [https://github.com/tu-usuario/cronogramacolonia.git](https://github.com/tu-usuario/cronogramacolonia.git)
cd cronogramacolonia
Instala las librerías necesarias:

Bash

pip install -r app/requirements.txt
Ejecuta la aplicación:

Bash

streamlit run app/app.py
Opción B: Instalador (Para Cliente Final)
El proyecto cuenta con un script de Inno Setup para generar un instalador .exe (Instalar_MasterPlan.exe) que:

Instala Python automáticamente si no se detecta en el sistema.

Configura los accesos directos.

Prepara el entorno para el usuario final sin conocimientos técnicos.

📋 Cómo Usar
Preparar el Excel: Utiliza el archivo EJEMPLO_HORARIOS.xlsx como base. Las columnas requeridas son:

GRUPO: Nombre del grupo (ej. VERDE 3RO A).

DEPORTE: Actividad (ej. FÚTBOL, NATACION, MERIENDA).

PILETA: Tipo de pileta (CHICA, MEDIANA, GRANDE) o vacío si no es natación.

ESTÍMULO: Cantidad de veces por semana.

TIEMPO: Duración del bloque (ej. 30 MIN).

DÍAS: Días disponibles (ej. LUN A VIER).

Cargar Datos: Inicia la aplicación y arrastra tu archivo Excel.

Generar: Presiona el botón "GENERAR CRONOGRAMA".

Descargar: Obtén los archivos Excel generados:

Plan Grupos: Cronograma semanal para cada grupo.

Plan Profesores: Grilla organizada por deporte/actividad.

🛠️ Tecnologías Utilizadas
Python: Lenguaje principal.

Streamlit: Interfaz gráfica web.

Pandas: Procesamiento y manipulación de datos.

XlsxWriter / OpenPyXL: Generación y formateo de archivos Excel.

👨‍💻 Autor
Desarrollado por Agustín Técnico Superior en Desarrollo de Software

© 2025 Master Plan Colonia. Todos los derechos reservados.
