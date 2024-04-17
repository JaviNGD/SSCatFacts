# SSCatFact 😺

Aplicación que permite crear un usuario e iniciar sesión, agregar a favoritos facts sobre gatos que se obtienen a través de una [API](https://catfact.ninja/fact), revisar sus favoritos y un ranking con los facts favoritos de la comunidad.

## Stack de desarrollo

<img src="https://simpleicons.org/icons/ruby.svg" alt="Ruby" width="32" height="32"> **Lenguaje de programación** Ruby 3.2.2 

<img src="https://simpleicons.org/icons/rubyonrails.svg" alt="Ruby on Rails" width="32" height="32"> **Framework** Ruby on Rails 7.1.3 

<img src="https://simpleicons.org/icons/postgresql.svg" alt="PostgreSQL" width="32" height="32"> **Base de Datos** PostgreSQL 

<img src="https://simpleicons.org/icons/tailwindcss.svg" alt="Tailwind CSS" width="32" height="32"> **Librería de estilos** Tailwind CSS 

<img src="https://simpleicons.org/icons/git.svg" alt="Git" width="32" height="32"> **Control de versiones** Git  


## Correr el proyecto localmente

### Clonar el proyecto
```plaintext
git clone https://github.com/JaviNGD/SSCatFacts.git
```

### Ir al directorio del proyecto
```plaintext
cd SSCatFacts
```

### Instalar gemas
```plaintext
bundle install
```

### Crear en el directorio raíz un archivo .env para la conexión con la base de datos
```plaintext
DB_USERNAME=
DB_PASSWORD=
DB_HOST=
DB_PORT=
```

### Crear la base de datos
```plaintext
rails db:create
```

### Migrar la base de datos
```plaintext
rails db:migrate
```

### Iniciar el servidor 
```plaintext
rails server
```

### Se puede ingresar al servidor local desde:
```plaintext
http://127.0.0.1:3000/ ó http://localhost:3000/
```
*La dirección cambia respecto al valor ingresado en DB_HOST, del archivo .env*

😸
