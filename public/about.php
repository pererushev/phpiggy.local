<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>About page</h1>
    <?php

    $upload = (int)ini_get('upload_max_filesize') * 1024 * 1024;
    $post = (int)ini_get('post_max_size') * 1024 * 1024;
    $maxFileSize = $upload < $post ? $upload : $post;



    $maxFileSize = (int)ini_get('post_max_size') * 1024 * 1024;

    //echo $maxFileSize;

    echo (int)ini_get('post_max_size') * 1024 * 1024;
    echo (int)ini_get('upload_max_filesize') * 1024 * 1024;

    //var_dump(ini_set('post_max_size', $maxFileSize));
    // echo ini_set('upload_max_filesize', $maxFileSize);

    /* echo ini_get('post_max_size');
    echo ini_get('upload_max_filesize'); */
    ?>
</body>

</html>