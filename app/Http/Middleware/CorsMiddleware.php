<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


// class CorsMiddleware
// {
//     public function handle($request, Closure $next)
//     {
//         $response = $next($request);
//         $response->header('Access-Control-Allow-Origin', 'http://127.0.0.1:8000');
//         // Add more headers if needed
//         return $response;
//     }
// }
