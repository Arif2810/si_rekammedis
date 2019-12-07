<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Treatment;

class TreatmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        $treatments = Treatment::all(); 
        return view('nurul_nabawi.treatment.index', ['treatments'=>$treatments]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request){

        $this->validate($request, [
            'nama_tindakan' => 'required',
        ]);

        $treatments = new Treatment;
        $treatments->id_tindakan   = $request->id_tindakan;
        $treatments->nama_tindakan = $request->nama_tindakan;
        $treatments->save();
        // dd('kesini');

        return redirect('treatment')->with('pesan', 'Data berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id_tindakan){
        
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id_tindakan){

        $treatments = Treatment::find($id_tindakan);
        return view('nurul_nabawi/treatment/edit', compact('treatments'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id_tindakan){

        $this->validate($request, [
            'nama_tindakan' => 'required',
        ]);

        $treatments = Treatment::find($id_tindakan);
        $treatments->nama_tindakan = $request->nama_tindakan;
        $treatments->save();
        return redirect('treatment')->with('pesan', 'Data berhasil di update');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request){

        $treatments = Treatment::find($request->id_tindakan);
        $treatments->delete();
        return back()->with('pesan', 'Data berhasil dihapus');
    }
}
