# InventarioSQL
Base de Datos Inventario
La base de datos Inventario está diseñada para gestionar un sistema de inventarios, incluyendo productos, ubicaciones, clientes y pedidos. Se compone de múltiples tablas que se relacionan entre sí mediante claves foráneas, facilitando la integridad de los datos y permitiendo una gestión eficiente.

Tablas de la Base de Datos
andamio

Descripción: Almacena información sobre andamios.
Columnas:
cod_andamio: Código único del andamio (clave primaria).
descripcion_andamio: Descripción del andamio.
piso

Descripción: Contiene los diferentes pisos donde se encuentran los andamios.
Columnas:
cod_piso: Código único del piso (clave primaria).
descripcion_piso: Descripción del piso.
andamio_fk: Clave foránea que relaciona con la tabla andamio.
ubicacion

Descripción: Registra las ubicaciones específicas dentro de los pisos.
Columnas:
cod_ubicacion: Código único de la ubicación (clave primaria).
descripcion: Descripción de la ubicación.
piso_fk: Clave foránea que relaciona con la tabla piso.
categoria

Descripción: Define las categorías de productos.
Columnas:
cod_categoria: Código único de la categoría (clave primaria).
nombre_categoria: Nombre de la categoría.
producto

Descripción: Almacena información sobre los productos disponibles.
Columnas:
cod_producto: Código único del producto (clave primaria).
descripcion: Descripción del producto.
nombre_producto: Nombre del producto.
categoria_fk: Clave foránea que relaciona con la tabla categoria.
detalleubicacion

Descripción: Registra la relación entre productos y ubicaciones específicas.
Columnas:
cod_detalleub: Código único del detalle de ubicación (clave primaria).
stock: Cantidad de productos en stock.
producto_fk: Clave foránea que relaciona con la tabla producto.
ubicacion_fk: Clave foránea que relaciona con la tabla ubicacion.
clientepersona

Descripción: Almacena información de clientes individuales.
Columnas:
cod_persona: Código único del cliente (clave primaria).
apellidos: Apellidos del cliente.
correo: Correo electrónico del cliente.
direccion: Dirección del cliente.
dni: Documento Nacional de Identidad.
nombre: Nombre del cliente.
telefono: Teléfono de contacto.
clienteempresa

Descripción: Contiene información sobre clientes que son empresas.
Columnas:
cod_empresa: Código único de la empresa (clave primaria).
correo: Correo electrónico de la empresa.
direccion: Dirección de la empresa.
nombre: Nombre de la empresa.
ruc: Registro Único de Contribuyente.
telefono: Teléfono de contacto.
estado

Descripción: Define los estados de los pedidos.
Columnas:
cod_estado: Código único del estado (clave primaria).
categoria: Categoría del estado.
descripcion_estado: Descripción del estado.
tipo_entrega

Descripción: Almacena diferentes tipos de entrega de pedidos.
Columnas:
cod_tipoentrega: Código único del tipo de entrega (clave primaria).
descripcion_entrega: Descripción de la entrega.
direccion: Dirección de entrega.
distrito: Distrito de entrega.
parentesco: Parentesco con la persona que recibe.
persona_recepcion: Nombre de la persona que recibe.
telefono_referencia: Teléfono de referencia.
pedido_factura

Descripción: Registra los pedidos y sus facturas asociadas.
Columnas:
cod_pedido: Código único del pedido (clave primaria).
fecha: Fecha del pedido.
cliente_persona_fk: Clave foránea que relaciona con la tabla clientepersona.
estado_fk: Clave foránea que relaciona con la tabla estado.
tipo_entrega_fk: Clave foránea que relaciona con la tabla tipo_entrega.
row_pedido

Descripción: Almacena los detalles de los productos en cada pedido.
Columnas:
cod_rowpedido: Código único del detalle del pedido (clave primaria).
cantidad: Cantidad del producto en el pedido.
producto_fk: Clave foránea que relaciona con la tabla producto.
pedido_factura_fk: Clave foránea que relaciona con la tabla pedido_factura.
Relación entre Tablas
Las tablas están interconectadas mediante claves foráneas, lo que permite mantener la integridad referencial y facilita las consultas relacionadas.
Por ejemplo, producto está relacionado con categoria, y pedido_factura está vinculado tanto a clientepersona como a estado y tipo_entrega.


## Tech Stack

**Server:**
MySQL: Sistema de gestión de bases de datos relacional para almacenar información de productos y usuarios.

**Nota:**
Próximamente, estaré compartiendo un proyecto completo desarrollado en Visual Studio Code. Este proyecto utiliza Angular para el frontend y IntelliJ IDEA para el backend, aplicando esta misma base de datos diseñada para la gestión de un inventario logístico de tipo ferretería.

## Screenshots

![Base de Datos Inventario](https://raw.githubusercontent.com/Ronalk35/InventarioSQL/main/Imagen/bd_inventario.png)


