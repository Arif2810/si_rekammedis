<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Gender;

class GenderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $genders = Gender::all(); 
        return view('nurul_nabawi.gender.index', ['genders'=>$genders]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $genders = new Gender;
        $genders->id_gender   = $request->id_gender;
        $genders->nama_gender = $request->nama_gender;
        $genders->save();
        // dd('kesini');

        return redirect('gender')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_gender){
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_gender){

        $genders = Gender::find($id_gender);
        return view('nurul_nabawi/gender/edit', compact('genders'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_gender){

        $genders = Gender::find($id_gender);
        $genders->nama_gender = $request->nama_gender;
        $genders->save();
        return redirect('gender')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $genders = Gender::find($request->id_gender);
        $genders->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
