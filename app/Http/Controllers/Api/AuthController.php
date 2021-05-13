<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\User;

class AuthController extends Controller
{
    public function logout() {

        auth()->logout();
        return response()->json(['message' => 'Successfully logged out']);
    }
    public function login(Request $request) {
        $credentials = $request->only(['email', 'password']);

        if (! $token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return response()->json([
            'success' => true,
            'token' => $token
        ]);
    }
    public function register(Request $request) {
        $credentials = $request->only(['name' ,'email', 'password']);
        $user = new User($credentials);
        $user->save();
        return true;
    }

    public function insert() {
        $data = ([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make("123456")
        ]);
        $user = new User($data);
        $user->save();
        return $user;
    }

}
