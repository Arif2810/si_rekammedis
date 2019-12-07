<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Medicine_detail;
use App\Medical_record;
use App\Medicine;

class Medicine_detailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

        // $medicine_details = Medicine_detail::all();

        // return view('nurul_nabawi.medical_record.index', compact('medicine_details'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){

        // $medicine_details = Medicine_detail::all();
        // $medicines = Medicine::all();
        // $medical_record = Medical_record::all();

        // return view('nurul_nabawi.medical_record.create', compact('medicines', 'medical_record'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Medicine_detail::create([
        //     'id_detail' => request('id_detail'),
        //     'id_mr'     => request('id_mr'),
        //     'id_obat'   => request('id_obat'),
        //     'nama_obat' => request('nama_obat')
        // ]);
        // return redirect('medical_record');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
