En este repositorio se estarán agregando **proyectos trabajados con SQL y SSIS**, enfocados en el manejo y transformación de datos mediante **ETL (Extract, Transform, Load)** con **SQL Server Integration Services (SSIS)**.  

# 🛒📊 **Proyecto de Retail con SQL y SSIS**  
---

## 📌 **Descripción del Proyecto**  
Este proyecto está basado en una **base de datos de ventas** y tiene como objetivo la creación de un **Data Warehouse** mediante un proceso de ETL utilizando **SQL Server Integration Services (SSIS)**.  

A continuación, se presenta la ruta del proyecto para un mejor contexto:  

📷 _Imagen de la estructura del proyecto_  

![Guía del Proyecto](https://raw.githubusercontent.com/JoanBEnd/sql-proyectos/main/proyecto-SSIS-retail/imagen/guia-proyecto.png)

---

## 🗂 **Estructura del Proyecto**  

### 📂 **Backup**  
📌 En esta carpeta se encuentra el **backup de la base de datos**.  
💡 Si cuentas con **SQL Server 2020 o una versión posterior**, podrás restaurarlo sin problemas.  

### 📂 **Base_Excel**  
📌 Contiene el **script para crear las tablas** y los archivos **Excel con la data** de cada tabla.  
💡 Si tienes una versión de **SQL Server anterior a 2020**, puedes utilizar esta carpeta para crear la base de datos manualmente.  

### 📂 **RetailETL**  
📌 Contiene el **proyecto de Integration Services (SSIS)**, desarrollado en **Visual Studio 2022**.  

📷 _Imagen de la configuración de conexiones en SSIS_  
![Cambiar Conexion](https://raw.githubusercontent.com/JoanBEnd/sql-proyectos/refs/heads/main/proyecto-SSIS-retail/imagen/conexion.png)

🔹 **Importante**: En la sección de **Administración de Conexiones**, deberás cambiar la conexión a la de tu computadora.  
🔹 Hay **dos conexiones** que debes configurar:  
   1️⃣ **Base de datos principal**  
   2️⃣ **Base de datos dimensional**  

---

## 🛠 **Scripts Adicionales**  
📌 Se incluyen **dos scripts** para insertar nueva data en la base de datos y realizar pruebas adicionales.  

---

## 🚀 **Requisitos**  
✅ **SQL Server 2020+** (o utilizar los archivos de la carpeta `Base_Excel`)  
✅ **Visual Studio 2022** con **SQL Server Data Tools (SSDT)** para abrir y ejecutar el paquete SSIS  
✅ **Conexión configurada correctamente** en SSIS  

---


