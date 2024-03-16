# Crud-Javaweb-Vistas
Creacion de crud  utilizando boostrap para los formularios , incluye login , registro , editar usuarios ,visualizar usuarios, eliminar usuarios con confirmacion en javascript, vista de contacto con guardado en bd , vista para buscar pero sin función.


```
# Base de datos de prueba para utilizar con xampp y Apache NetBeans IDE
/* 

@AUTOR: CRISTIAN ARBOLEDA
@FECHA: 2024/03/15
@DESCRIPCION : BASE DE DATOS DE PRUEBA JAVA CON CONEXION MYSQL


 */
DROP DATABASE IF EXISTS practicatres;
CREATE DATABASE IF NOT EXISTS practicatres;
Use practicatres;

CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    contrasena VARCHAR(100) NOT NULL,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo_electronico VARCHAR(100)
    
    
);

CREATE TABLE MensajesContacto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL,
    asunto VARCHAR(100),
    mensaje TEXT,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
