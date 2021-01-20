<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function check(Request $request) {
        $user = User::where('email', $request->email)->first();
        return $user;
    }
}
