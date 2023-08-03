<?php
$target_dir = "./Uploads/";

if (isset($_GET['file'])) {
    $file_name = $_GET['file'];
    $file_path = $target_dir . $file_name;

    // Check if the file exists and is readable
    if (file_exists($file_path) && is_readable($file_path)) {
        // Set headers to force download
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="' . $file_name . '"');
        header('Content-Length: ' . filesize($file_path));
        
        // Read the file and output it to the browser
        readfile($file_path);
        exit;
    } else {
        // File not found or not readable
        http_response_code(404);
        echo 'File not found or access denied.';
        exit;
    }
}
?>
