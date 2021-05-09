<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


class UserController extends Controller
{

    public function index()
    {
        $data['user'] = User::all()->sortBy('user_must');
        return view('backend.users.index', compact('data'));
    }


    public function create()
    {
        return view('backend.users.createuser');
    }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:6'
        ]);

        if ($request->hasFile('user_file')) {
            $request->validate([
                'user_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',

            ]);
            $fileName = uniqid() . '.' . $request->user_file->getClientOriginalExtension();
            $request->user_file->move(public_path('images/users'), $fileName);
        } else {
            $fileName = null;
        }


        $user = User::insert(
            [
                'name' => $request->name,
                'email'=>$request->email ,
                'user_file' => $fileName,
                'password'=>Hash::make($request->password),
                'user_status' => $request->user_status
            ]
        );
        if ($user) {
            return redirect(route('user.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function show($id)
    {

    }

    public function edit($id)
    {
        $user = User::where('id', $id)->first();
        return view('backend.users.edituser')->with('user', $user);
    }


    public function update(Request $request, $id)
    {
        // UserUpdde metodu viewden gelen verilere göre  ilgili kullanıcıyı update ediyor

        $request->validate([
            'name' => 'required',
            'email' => 'required|email',

        ]);

        if ($request->hasFile('user_file')) {
            //Eğer gelen requestlerin arasında dosya varsa dosyamızı upload edip ona göre işlem yapıyoruz..
            $request->validate([
                'user_file' => 'required|image|mimes:jpg,jpeg,png|max:2048',
            ]);
            // Dosyamıza benzersiz bir uniqid oluşturuyoruz ve fileName değişkenine alıyoruz.
            $fileName = uniqid() . '.' . $request->user_file->getClientOriginalExtension();
            // Move metodu ile dosyamızı klasörümüze taşıyıyoruz.
            $request->user_file->move(public_path('images/users'), $fileName);

            if (strlen($request->password)>0){
                // Kullanıcı parola girmişse  dosya ile şifreyi de değiştiriyoruz.
                $request->validate([
                    'password'=>'required|min:6'
                ]);
                $user = User::where('id', $id)->update(
                    [
                        'name' => $request->name,
                        'email'=>$request->email ,
                        'user_file' => $fileName,
                        'password'=>Hash::make($request->password),
                        'user_status' => $request->user_status
                    ]
                );
            }else{
                // Kullanıcı şifre girmemişse sadece dosyayı değiştiriyoruz.
                $user = User::where('id', $id)->update(
                    [
                        'name' => $request->name,
                        'email'=>$request->email ,
                        'user_file' => $fileName,
                        'user_status' => $request->user_status
                    ]
                );
            }
            // Eski dosyamızı siliyoruz.
            $path = 'images/users/' . $request->old_file;
            if (file_exists($path)) {
                @unlink(public_path($path));
            }
        } else {

            if (strlen($request->password)>0){

                $request->validate([
                    'password'=>'required|min:6'
                ]);
                $user = User::where('id', $id)->update(
                    [
                        'name' => $request->name,
                        'email'=>$request->email ,
                        'password'=>Hash::make($request->password),
                        'user_status' => $request->user_status
                    ]
                );
            }else{
                $user = User::where('id', $id)->update(
                    [
                        'name' => $request->name,
                        'email'=>$request->email ,
                        'user_status' => $request->user_status
                    ]
                );
            }
        }

        if ($user) {
            return redirect(route('user.index'))->with('success', 'İşlem başarılı');
        }
        return back()->with('error', 'İşlem başarısız');
    }


    public function destroy($id)
    {
        $user = User::find(intval($id));
        if ($user->delete()) {
            return 1;
        }
        return 0;
    }

    public function sortable()
    {
        foreach ($_POST['item'] as $key => $value) {
            $user = User::find(intval($value));
            $user->user_must = intval($key);
            $user->save();
        }
        echo true;
    }
}
