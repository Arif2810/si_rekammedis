<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::get(); 
        return view('nurul_nabawi.user.index', ['users'=>$users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('nurul_nabawi.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        \Validator::make($request->all(),[
            'name' => 'required|between:3,100',
            'username' => 'required|between:3,100',
            'email' => 'required|unique:users,email',
            'password' => 'required|min:6',
            'repassword' => 'required|same:password',
            'akses' => 'required',
        ])->validate();
        
        $users = new User;
        $users->name   = $request->name;
        $users->username = $request->username;
        $users->email = $request->email;
        $users->password   = bcrypt($request->password);
        $users->akses = $request->akses;
        $users->save();
        // dd('kesini');

        return redirect('user')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // dd($id);
        $users = User::findOrFail($id);
        return view('nurul_nabawi/user/edit', compact('users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        \Validator::make($request->all(),[
            'name' => 'required|between:3,100',
            'username' => 'required|between:3,100',
            'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'nullable|min:6',
            'repassword' => 'same:password',
            'akses' => 'required',
        ])->validate();

        $users = User::find($id);
        $users->name         = $request->name;
        $users->username = $request->username;
        $users->email   = $request->email;
        $users->akses   = $request->akses;
        $users->password  = bcrypt($request->password);
        $users->save();
        return redirect('user')->with('pesan', 'Data berhasil di update');

        // if(!empty($request->password)){
        //     $field = [
        //         'name' => $request->name,
        //         'username' => $request->username,
        //         'email' => $request->email,
        //         'akses' => $request->akses,
        //         'password' => bcrypt($request->password),
        //     ];
        // }
        // else{
        //     $field = [
        //         'name' => $request->name,
        //         'username' => $request->username,
        //         'email' => $request->email,
        //         'akses' => $request->akses,
        //     ];
        // }
        // $result = User::where('id', $request->id)->update($field);

        // if($result){
        //     return redirect()->route('user.index')->with('result', 'update');
        // }
        // else{
        //     return back()->with('result', 'fail');
        // }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $users = User::find($request->id);
        $users->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
