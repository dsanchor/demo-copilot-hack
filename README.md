# User API Documentation

La API de usuarios permite realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) sobre los usuarios en el sistema.

## Endpoints

### Obtener todos los usuarios

- **GET** `/users`

#### Ejemplo de solicitud

```bash
curl -X GET http://localhost:8080/users
```

### Crear un nuevo usuario

- **POST** `/users`

#### Ejemplo de solicitud

```bash
curl -X POST http://localhost:8080/users \
     -H 'Content-Type: application/json' \
     -d '{
           "nombre": "Juan",
           "apellidos": "Pérez",
           "email": "juan.perez@example.com"
         }'
```

### Obtener un usuario por ID

- **GET** `/users/{id}`

#### Ejemplo de solicitud

```bash
curl -X GET http://localhost:8080/users/1
```

### Actualizar un usuario

- **PUT** `/users/{id}`

#### Ejemplo de solicitud

```bash
curl -X PUT http://localhost:8080/users/1 \
     -H 'Content-Type: application/json' \
     -d '{
           "nombre": "Juan actualizado",
           "apellidos": "Pérez",
           "email": "juan.perez@example.com"
         }'
```

### Eliminar un usuario

- **DELETE** `/users/{id}`

#### Ejemplo de solicitud

```bash
curl -X DELETE http://localhost:8080/users/1
```

## Containerización

### Construir imagen

```bash
docker build -t user-api .
```

### Ejecutar contenedor

```bash
docker run -p 8080:8080 user-api
```
