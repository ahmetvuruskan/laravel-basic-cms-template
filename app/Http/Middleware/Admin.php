<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if (!Auth::guest() AND Auth::user()->user_role =='admin') {
            return $next($request);
        }else{
            return  redirect(route('nedmin.login'))->with('error','Erişim yetkiniz yok...');
        }
      return  redirect(route('nedmin.login'));
    }
}
