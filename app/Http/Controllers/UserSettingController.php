<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

class UserSettingController extends Controller
{
    
    public function form(){
    	$users = User::where('id', Auth::id())->first();
    	return view('nurul_nabawi.user.setting', ['users'=>$users]);
    }

    public function update(Request $request){
    	$id = Auth::id();
    	\Validator::make($request->all(), [
    		'name' => 'required|between:3,100',
    		'username' => 'required|unique:users|between:3,100',
    		'email' => 'required|email|unique:users,email,'.$id,
    		'password' => 'nullable|min:6',
    		'repassword' => 'same:password'
    	])->validate();

    	if(!empty($request->password)){
    		$field = [
    			'name' => $request->name,
    			'username' => $request->username,
    			'email' => $request->email,
    			'password' => bcrypt($request->password),
    		];
    	}
    	else{
    		$field = [
    			'name' => $request->name,
    			'username' => $request->username,
    			'email' => $request->email,
    		];
    	}

    	$result = User::where('id', $id)->update($field);

    	if($result){
    		return back()->with('result', 'success');
    	}
    	else{
    		return back()->with('result', 'fail');
    	}
    }
}
