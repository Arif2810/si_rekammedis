<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Terapis;

class TerapisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $terapiss = Terapis::all(); 
        return view('nurul_nabawi.terapis.index', ['terapiss'=>$terapiss]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){

        return view('nurul_nabawi.terapis.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $terapiss = new Terapis;
        $terapiss->id_terapis   = $request->id_terapis;
        $terapiss->no_id        = $request->no_id;
        $terapiss->nama_terapis = $request->nama_terapis;
        $terapiss->alamat       = $request->alamat;
        $terapiss->telp         = $request->telp;
        $terapiss->save();
        // dd('kesini');

        return redirect('terapis')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_terapis){

        $terapiss = Terapis::find($id_terapis);
        return view('nurul_nabawi.terapis.show', compact('terapiss'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_terapis){

        $terapiss = Terapis::find($id_terapis);
        return view('nurul_nabawi/terapis/edit', compact('terapiss'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_terapis){

        $terapiss = Terapis::find($id_terapis);
        $terapiss->no_id        = $request->no_id;
        $terapiss->nama_terapis = $request->nama_terapis;
        $terapiss->alamat       = $request->alamat;
        $terapiss->telp         = $request->telp;
        $terapiss->save();
        return redirect('terapis')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $terapiss = Terapis::find($request->id_terapis);
        $terapiss->delete();
        return redirect('terapis')->with('pesan', 'Data berhasil dihapus');
    }
}
