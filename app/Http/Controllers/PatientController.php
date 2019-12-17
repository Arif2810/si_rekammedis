<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Patient;
use App\Agama;
use App\Gender;

class PatientController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        
        $patients = Patient::orderBy('id_pasien', 'DESC')->get(); 
        return view('nurul_nabawi.patient.index', ['patients'=>$patients]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){

        $agamas = Agama::all();
        $genders = Gender::all();
        
        return view('nurul_nabawi.patient.create', compact('agamas', 'genders'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $this->validate($request, [
            'nip' => 'required|unique:patients|min:8|max:8',
        ]);

        $patients = new Patient;
        $patients->id_pasien   = $request->id_pasien;
        $patients->nip         = $request->nip;
        $patients->nama_pasien = $request->nama_pasien;
        $patients->id_gender   = $request->id_gender;
        $patients->tgl_lahir   = $request->tgl_lahir;
        $patients->tgl_daftar  = $request->tgl_daftar;
        $patients->id_agama    = $request->id_agama;
        $patients->alamat      = $request->alamat;
        $patients->telp        = $request->telp;
        $patients->save();
        // dd('kesini');

        return redirect('patient')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_pasien){

        // dd($id_pasien);
        // $patients = Patient::find($id_pasien);
        return view('nurul_nabawi.patient.show', ['patients' => Patient::findOrFail($id_pasien)]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_pasien){

        // dd($id_pasien);
        $patients = Patient::findOrFail($id_pasien);
        return view('nurul_nabawi/patient/edit', compact('patients'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_pasien){

        $this->validate($request, [
            'nip' => 'required|unique:patients|min:8|max:8',
        ]);

        $this->validate($request, [
            'nip' => 'required|unique:patients|min:8|max:8',
            'nama_pasien' => 'required',
            'jk' => 'required',
            'tgl_lahir' => 'required',
            'tgl_daftar' => 'required',
            'agama' => 'required',
            'alamat' => 'required',
        ]);
        
        $patients = Patient::find($id_pasien);
        $patients->nip         = $request->nip;
        $patients->nama_pasien = $request->nama_pasien;
        $patients->id_gender   = $request->id_gender;
        $patients->tgl_lahir   = $request->tgl_lahir;
        $patients->tgl_daftar  = $request->tgl_daftar;
        $patients->id_agama    = $request->id_agama;
        $patients->alamat      = $request->alamat;
        $patients->telp        = $request->telp;
        $patients->save();
        return redirect('patient')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){
        
        $patients = Patient::find($request->id_pasien);
        $patients->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
