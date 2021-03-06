<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Medical_record;
use App\Patient;
use App\Medicine;
use App\Diagnosis;
use App\Treatment;
use App\Medical_record_medicine;
use App\Medical_record_treatment;
use File;
// use Fpdf;

class Medical_recordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $medical_records = Medical_record::orderBy('id_mr', 'DESC')->get();
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
        $diagnoses = Diagnosis::all();

        return view('nurul_nabawi.medical_record.create', compact('patients', 'medicines', 'treatments', 'diagnoses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        // insert data
        $this->validate($request, [
          'image' => 'mimes:jpg,jpeg,png,pdf,JPG,JPEG,PNG,PDF|max:2000',
          'image2' => 'mimes:jpg,jpeg,png,pdf,JPG,JPEG,PNG,PDF|max:2000',
          'keluhan' => 'required',
          'check' => 'required',
          'riwayat' => 'required',
        ]);

        $medical_records = new Medical_record;
        $medical_records->resep = $request->resep;
        $medical_records->id_pasien = $request->id_pasien;
        $medical_records->id_diagnosa = $request->id_diagnosa;
        $medical_records->keluhan = $request->keluhan;
        $medical_records->tgl_periksa = $request->tgl_periksa;
        $medical_records->ket = $request->ket;
        $medical_records->riwayat = $request->riwayat;
        $medical_records->check = $request->check;

        if($request->hasFile('image')){
          $file = $request->file('image');
          $fileName = time().'.'.$file->getClientOriginalExtension();
          $destinationPath = public_path('/image');
          $file->move($destinationPath, $fileName);
          $medical_records->image = $fileName;
        }

        if($request->hasFile('image2')){
          $file = $request->file('image2');
          $fileName = time().'.'.$file->getClientOriginalExtension();
          $destinationPath = public_path('/image');
          $file->move($destinationPath, $fileName);
          $medical_records->image2 = $fileName;
        }

        $medical_records->save();
        $medical_records->medicines()->sync($request->medicines, false);
        $medical_records->treatments()->sync($request->treatments, false);

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
        $patients = Patient::all();
        // $obat = array();
        // foreach($medicines as $medicine) {
        //   $obat[$medicine->id_obat] = $medicine->nama_obat;
        // }

        return view('nurul_nabawi.medical_record.edit', compact('medical_records', 'patients'));
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

      $medical_records->resep = $request->resep;
      $medical_records->id_pasien = $request->id_pasien;
      $medical_records->id_diagnosa = $request->id_diagnosa;
      $medical_records->keluhan = $request->keluhan;
      $medical_records->tgl_periksa = $request->tgl_periksa;
      $medical_records->ket = $request->ket;
      $medical_records->riwayat = $request->riwayat;
      $medical_records->check = $request->check;

      if($request->hasFile('image')){
        $file = $request->file('image');
        $fileName = time().'.'.$file->getClientOriginalExtension();
        $destinationPath = public_path('/image');
        $file->move($destinationPath, $fileName);
        $medical_records->image = $fileName;
      }

      if($request->hasFile('image2')){
        $file = $request->file('image2');
        $fileName = time().'.'.$file->getClientOriginalExtension();
        $destinationPath = public_path('/image');
        $file->move($destinationPath, $fileName);
        $medical_records->image2 = $fileName;
      }

      $medical_records->save();
      $medical_records->medicines()->sync($request->medicines);
      $medical_records->treatments()->sync($request->treatments);

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
        File::delete('image/'.$medical_records->image);
        $medical_records->delete();
        $medical_records->medicines()->sync($request->medicines, false);
        $medical_records->treatments()->sync($request->treatments, false);

        return back()->with('pesan', 'Data berhasil dihapus');
    }

    // public function cetak(){

    //     $pdf = new Fpdf("L","cm","A4");
    //     $pdf::AddPage();
    //     $pdf::SetFont('Arial', 'B', 18);
    //     $pdf::Cell(185,7,'Laporan Rekam Medis',0,1,'C');
    //     $pdf::SetFont('Arial', '', 12);
    //     $pdf::Cell(185,5,'Klinik Nurul Nabawi | Al-Kautsar',0,1,'C');
    //     $pdf::SetFont('Arial', '', 12);
    //     $pdf::Cell(185,5,"Telpon : 085365856848 ",0,1,'C');
    
    //     $pdf::Output();
    //     exit;
    // }

    
}
