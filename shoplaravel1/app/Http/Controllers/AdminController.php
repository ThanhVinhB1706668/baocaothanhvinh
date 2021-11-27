<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class AdminController extends Controller
{
    public function AuthLogin() {
        $admin_id = session::get('admin_id');
        if($admin_id){
            Redirect::to('dashboard');
        } else {
            Redirect::to('admin') -> send();
        }
    }
    
    public function index() {
        return view('admin_login');
    }

    public function show_dashboard() {
        $this -> AuthLogin();
        return view('admin.dashboard'); 
    }

    public function dashboard(Request $request) {
        $admin_email = $request-> admin_email; 
        $admin_password = $request-> admin_password; 

        $result = DB::table('tbl_admin') -> where('admin_email', $admin_email) -> where('admin_password', $admin_password) -> first();
        
        if($result) {
            session::put('admin_name', $result -> admin_name);
            session::put('admin_id', $result->admin_id);
            return redirect::to ('/dashboard');

        }
        else {
            session::put('message', 'Mật khẩu hoặc tài khoản bị sai!');
            return redirect::to('/admin');
        } 
    }



    public function logout() {
        $this -> AuthLogin();
        session::put('admin_name', null);
        session::put('admin_id', null);
        return redirect::to('/admin');
        
    }

    
}


