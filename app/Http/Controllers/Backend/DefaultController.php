<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DefaultController extends Controller
{
    public function index()
    {
        return view('backend.default.index');
    }

    public function login()
    {

            return view('backend.default.login');

    }

    public function authenticate(Request $request)
    {
        $rememberMe = $request->has('rememberme') ? true : false;
        $request->flash();
        $userLogin = $request->only('email', 'password');
        if (Auth::attempt($userLogin, $rememberMe)) {
            return redirect()->intended(route('nedmin.index'));
        } else {
            return back()->with('error', 'Hatalı Kullanıcı');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect(route('nedmin.login'))->with('success', 'Güvenli olarak çıkış yapıldı');
    }


}
