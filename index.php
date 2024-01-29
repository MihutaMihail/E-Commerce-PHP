<?php

require_once 'src/utilities/router.php';
require_once 'src/utilities/database.php';

// Define the base path
$basePath = '/e-commerce-PHP';

// Get the current path from the URL and sanitize it
$requestPath = filter_var($_SERVER['REQUEST_URI'], FILTER_SANITIZE_URL);

// Remove the base path from the beginning of the request path and trim '/'
$requestPath = trim(str_replace($basePath, '', $requestPath), '/');

// Instantiate Database class
$database = new Database();

// Execute corresponding function for that specific path
$router->handleRequest($requestPath);

// Close database connection
$database->close();

?>