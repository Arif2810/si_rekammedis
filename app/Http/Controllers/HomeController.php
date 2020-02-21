<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Medical_record;
use App\Diagnosis;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $medical_records = DB::table('medical_records')
                            ->join('diagnoses', 'diagnoses.id_diagnosa', '=', 'medical_records.id_diagnosa')
                            ->get();
        return view('nurul_nabawi.home', compact('medical_records'));
    }
}
