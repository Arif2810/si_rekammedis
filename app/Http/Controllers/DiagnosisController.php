<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Diagnosis;

class DiagnosisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $diagnoses = Diagnosis::orderBy('id_diagnosa', 'DESC')->get(); 
        return view('nurul_nabawi.diagnosis.index', ['diagnoses'=>$diagnoses]);   
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
        
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_diagnosa' => 'required',
        ]);

        $diagnoses = new Diagnosis;
        $diagnoses->id_diagnosa   = $request->id_diagnosa;
        $diagnoses->nama_diagnosa = $request->nama_diagnosa;
        $diagnoses->save();
        // dd('kesini');

        return redirect('diagnosis')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function show($id_diagnosa){

    // }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_diagnosa)
    {
        $diagnoses = Diagnosis::find($id_diagnosa);
        return view('nurul_nabawi/diagnosis/edit', compact('diagnoses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_diagnosa){

        $this->validate($request, [
            'nama_diagnosa' => 'required',
        ]);

        $diagnoses = Diagnosis::find($id_diagnosa);
        $diagnoses->nama_diagnosa = $request->nama_diagnosa;
        $diagnoses->save();
        return redirect('diagnosis')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $diagnoses = Diagnosis::find($request->id_diagnosa);
        $diagnoses->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
