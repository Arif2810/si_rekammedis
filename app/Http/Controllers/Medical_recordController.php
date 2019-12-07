<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Medical_record;
use App\Patient;
use App\Medicine;
use App\Treatment;
use App\Medical_record_medicine;

class Medical_recordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $medical_records = Medical_record::get();
        return view('nurul_nabawi.medical_record.index', ['medical_records' => $medical_records]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){

        $patients = Patient::all();
        $treatments = Treatment::all();
        $medicines = Medicine::all();

        return view('nurul_nabawi.medical_record.create', compact('patients', 'medicines', 'treatments'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        // insert data
        $medical_records = new Medical_record;

        $medical_records->id_tindakan = $request->id_tindakan;
        $medical_records->resep = $request->resep;
        $medical_records->id_pasien = $request->id_pasien;
        $medical_records->diagnosa = $request->diagnosa;
        $medical_records->keluhan = $request->keluhan;
        $medical_records->tgl_periksa = $request->tgl_periksa;
        $medical_records->ket = $request->ket;
        $medical_records->riwayat = $request->riwayat;
        $medical_records->check = $request->check;

        $medical_records->save();
        $medical_records->medicines()->sync($request->medicines, false);

        return redirect('medical_record')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_mr){

      return view('nurul_nabawi.medical_record.show', ['medical_records' => Medical_record::findOrFail($id_mr)]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_mr){

        $medical_records = Medical_record::findOrFail($id_mr);
        // $medicines = Medicine::all();
        // $obat = array();
        // foreach($medicines as $medicine) {
        //   $obat[$medicine->id_obat] = $medicine->nama_obat;
        // }

        return view('nurul_nabawi.medical_record.edit', compact('medical_records'));
        // ->withMedicines($obat);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_mr){

      $medical_records = Medical_record::find($id_mr);

      $medical_records->id_tindakan = $request->id_tindakan;
      $medical_records->resep = $request->resep;
      $medical_records->id_pasien = $request->id_pasien;
      $medical_records->diagnosa = $request->diagnosa;
      $medical_records->keluhan = $request->keluhan;
      $medical_records->tgl_periksa = $request->tgl_periksa;
      $medical_records->ket = $request->ket;
      $medical_records->riwayat = $request->riwayat;
      $medical_records->check = $request->check;


      $medical_records->save();
      $medical_records->medicines()->sync($request->medicines);

      return redirect('medical_record')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $medical_records = Medical_record::find($request->id_mr);
        $medical_records->delete();
        $medical_records->medicines()->sync($request->medicines, false);

        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
