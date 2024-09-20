<?php

declare(strict_types=1);

use Framework\Http;

function dd(mixed $value)
{
    echo '<pre>';
    var_dump($value);
    echo '</pre>';
    die();
}
function e(mixed $value): string
{
    return htmlspecialchars((string)$value);
}
function redirectTo(string $path)
{
    header("Location: {$path}");
    http_response_code(Http::REDIRECT_STATUS_CODE);
    exit;
}
function turnOnErrors()
{
    ini_set('display_errors', '1');
    ini_set('display_startup_errors', '1');
    error_reporting(E_ALL);
}
