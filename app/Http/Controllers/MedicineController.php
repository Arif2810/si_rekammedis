<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Medicine;

class MedicineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        
        $medicines = Medicine::all(); 
        return view('nurul_nabawi.medicine.index', ['medicines'=>$medicines]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        
        return view('nurul_nabawi.medicine.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $this->validate($request, [
            'nama_obat' => 'required',
        ]);
        
        $medicines = new Medicine;
        $medicines->id_obat   = $request->id_obat;
        $medicines->nama_obat = $request->nama_obat;
        $medicines->deskripsi = $request->deskripsi;
        $medicines->stok      = $request->stok;     
        $medicines->save();
        // dd('kesini');

        return redirect('medicine/create')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_obat){
        
        $medicines = Medicine::find($id_obat);
        return view('nurul_nabawi.medicine.show', compact('medicines'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_obat){
        
        $medicines = Medicine::find($id_obat);
        return view('nurul_nabawi/medicine/edit', compact('medicines'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_obat){

        $this->validate($request, [
            'nama_obat' => 'required',
            'deskripsi' => 'required',
        ]);
        
        $medicines = Medicine::find($id_obat);
        $medicines->nama_obat = $request->nama_obat;
        $medicines->deskripsi = $request->deskripsi;
        $medicines->stok       = $request->stok;
        $medicines->save();
        return redirect('medicine')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){
        
        $medicines = Medicine::find($request->id_obat);
        $medicines->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
