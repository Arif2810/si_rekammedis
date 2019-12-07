<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Position;

class PositionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $positions = Position::all(); 
        return view('nurul_nabawi.position.index', ['positions'=>$positions]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){

        return view('nurul_nabawi.position.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $this->validate($request, [
            'nama_jabatan' => 'required',
        ]);
        
        $positions = new Position;
        $positions->id_jabatan   = $request->id_jabatan;
        $positions->nama_jabatan = $request->nama_jabatan;
        $positions->save();
        // dd('kesini');

        return redirect('position')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function show($id)
    // {
        
    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_jabatan){
        
        $positions = Position::find($id_jabatan);
        return view('nurul_nabawi/position/edit', compact('positions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_jabatan){

        $this->validate($request, [
            'nama_jabatan' => 'required',
        ]);

        $positions = Position::find($id_jabatan);
        $positions->nama_jabatan = $request->nama_jabatan;
        $positions->save();
        return redirect('position')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $positions = Position::find($request->id_jabatan);
        $positions->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
