<?php
// Arreglo de categorías
$categorias = [
    1 => ['nombre' => 'Alimentos', 'imagen' => 'https://png.pngtree.com/background/20230516/original/pngtree-lots-of-different-fruits-and-vegetables-picture-image_2615031.jpg'],
    2 => ['nombre' => 'Bebidas', 'imagen' => 'ruta/a/la/imagen/bebidas.jpg'],
    3 => ['nombre' => 'Lácteos', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    4 => ['nombre' => 'Carnes y Aves', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    5 => ['nombre' => 'Verduras', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    6 => ['nombre' => 'Frutas', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    7 => ['nombre' => 'Panadería', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    8 => ['nombre' => 'Limpieza', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    9 => ['nombre' => 'Aseo Personal', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    10 => ['nombre' => 'Mascotas', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    11 => ['nombre' => 'Papelería', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    12 => ['nombre' => 'Suministros Médicos', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
    13 => ['nombre' => 'Snacks', 'imagen' => 'ruta/a/la/imagen/lacteos.jpg'],
];

// Obtener el ID de la categoría de la URL
$id_categoria = isset($_GET['id']) ? intval($_GET['id']) : null;

// Verificar si el ID de la categoría es válido
if ($id_categoria && isset($categorias[$id_categoria])) {
    $nombrecategoria = $categorias[$id_categoria]['nombre'];
    $imagen = $categorias[$id_categoria]['imagen'];
} else {
    // Si no es válido, manejar el error
    $nombrecategoria = 'Categoría no encontrada';
    $imagen = 'ruta/a/la/imagen/error.jpg'; // Imagen de error
}
?>
