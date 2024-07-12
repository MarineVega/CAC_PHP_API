<?php    
    // Establece el encabezado para indicar que el contenido es JSON
    header('Content-Type: application/json');

    // Evita error de CORS
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: *");     //GET, POST, PUT, DELETE
    header("Access-Control-Allow-Headers: Content-Type");  //JSON
    
    // Variables de configuración de la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "proyectopeliculas";
    $puerto = "3307";

    // Crea la conexión a la base de datos MySQL
    $conexion = new mysqli($servername, $username, $password, $dbname, $puerto);

    // Verifica si la conexión tiene errores
    if ($conexion->connect_error) {

        // Si hay un error de conexión, devuelve el código de respuesta 500 (Error interno del servidor)
        http_response_code(500);
        die(json_encode(array("error" => "Error interno del servidor: ". $conexion->connect_error)));
    }

    // Maneja la petición POST para insertar una nueva película 
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $postBody = file_get_contents("php://input");
        // Transforma el json en array --> un array asociativo de php key=>value
        $data = json_decode($postBody, true);
        $titulo = $data['titulo'] ;
        $genero = $data['genero'] ;
        $duracion = $data['duracion'] ;
        $director = $data['director'] ;
        $reparto = $data['reparto'] ;
        $sinopsis = $data['sinopsis'];
        $imagen = $data['imagen'];

        // Verifica si todos los campos necesarios están completos
        if ($titulo && $genero && $duracion && $director && $reparto && $sinopsis && $imagen) {
            // Construye la consulta SQL para insertar una nueva película en la BD
            $query = "INSERT INTO peliculas (id_pelicula, titulo, genero, duracion, director, reparto, sinopsis, imagen) VALUES (NULL, '$titulo', '$genero', '$duracion', '$director', '$reparto', '$sinopsis', '$imagen')";

            // Ejecuta la consulta SQL y verifica si se realizó correctamente
            if ($conexion->query($query) === TRUE) {
                // Obtiene el ID de la película recién insertada
                $last_insert_id = $conexion->insert_id;
                
                // Devuelve código de respuesta 201 (Creado) y el ID de la película creada en formato JSON
                http_response_code(201);
                echo json_encode(array("id_pelicula" => $last_insert_id));                
            } else {
                // Si hubo un error al ejecutar la consulta SQL, devuelve el código de respuesta 500 (Error interno del servidor) con mensaje de error.
                http_response_code(500);
                echo json_encode(array("mensaje" => "Error al crear la película: " . $conexion->error)); 
            }
        } else {
            // Si no se completaron todos los campos necesarios, devuelve el código de respuesta 400 (Solicitud incorrecta) con mensaje de error.
            http_response_code(400);
            echo json_encode(array("mensaje" => "Debe completar todos los campos")); 
        }
    }

    // Maneja la petición GET, para obtener todas las películas
    if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        // Construye la consulta SQL para seleccionar todas las películas de la BD
        $query = "SELECT * FROM peliculas";

        // Ejecuta la consulta SQL
        $resultado = $conexion->query($query);
        
        // Verifica si se encontraron resultados
        if ($resultado->num_rows > 0) {
            // Si se encontraron películas, devuelve el código de respuesta 200 (OK) con las películas en formato JSON
            http_response_code(200);

            // Creo un array vacío
            $peliculas = array();
            // Del resultado, devolveme cada una de las filas (fetch_assoc -> devuelve cada una de las filas)
            while($row = $resultado->fetch_assoc()) {
                // Pone cada película en el array
                $peliculas[] = $row;
            }
            // transforma en un json
            echo json_encode($peliculas);
        } else {
            // Si no se encontraron películas, devuelve código de respuesta 404 (No encontrado) con mensaje de error
            http_response_code(404);
            echo json_encode(array("mensaje" => "No se encontraron películas"));
        }
    }


    // Cierra la conexión a la BD
    $conexion->close();

?>


