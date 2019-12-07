<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Polyclinic;

class PolyclinicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        
        $polyclinics = Polyclinic::all(); 
        return view('nurul_nabawi.polyclinic.index', ['polyclinics'=>$polyclinics]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $this->validate($request, [
            'nama_poli' => 'required',
        ]);

        $polyclinics = new Polyclinic;
        $polyclinics->id_poli   = $request->id_poli;
        $polyclinics->nama_poli = $request->nama_poli;
        $polyclinics->save();
        // dd('kesini');

        return redirect('polyclinic')->with('pesan', 'Data berhasil ditambahkan');
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
    public function edit($id_poli){

        $polyclinics = Polyclinic::find($id_poli);
        return view('nurul_nabawi/polyclinic/edit', compact('polyclinics'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_poli){

        $this->validate($request, [
            'nama_poli' => 'required',
        ]);
        
        $polyclinics = Polyclinic::find($id_poli);
        $polyclinics->nama_poli = $request->nama_poli;
        $polyclinics->save();
        return redirect('polyclinic')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){
        
        $polyclinics = Polyclinic::find($request->id_poli);
        $polyclinics->delete();
        return redirect('polyclinic')->with('pesan', 'Data berhasil dihapus');
    }
}
