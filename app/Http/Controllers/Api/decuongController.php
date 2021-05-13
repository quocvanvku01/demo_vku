<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\decuongchitiet;
use DB;

class decuongController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id_gv)
    {   
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getlistmonhoc($id_gv) {
        $all_decuong = DB::table('table_decuongchitiet')
        //->select('id_decuong')
        ->select('id_decuong', 'giangvienphutrach_id', 'gv_daycung', 'tenhocphan')
        ->join('table_hocphan', 'table_hocphan.id', 'table_decuongchitiet.id_hocphan')
        ->join('table_giangvien', 'table_giangvien.id', 'table_decuongchitiet.giangvienphutrach_id')
        ->get();

        $list_id_decuong = [];

        foreach($all_decuong as $value) {
            $value->gv_daycung = explode('_', $value->gv_daycung);

            foreach($value->gv_daycung as $value2) {
                if($value2 == $id_gv) {
                    $list_id_decuong[] = $value;
                }
            }

            if($value->giangvienphutrach_id == $id_gv) {
                $list_id_decuong[] = $value;
            }

        }

        foreach($list_id_decuong as $vl) {
            unset($vl->giangvienphutrach_id);
            unset($vl->gv_daycung);
        }
        
        
        //echo "<pre>";
        //print_r($list_id_decuong);
        return $list_id_decuong;
    }

    public function getkehoachgiangday($id_decuong) {

        $decuong = DB::table('table_decuongchitiet')->where('id_decuong', $id_decuong)
        ->select('id_hocphan')
        ->first();

        //echo $id_hocphan = $decuong->id_hocphan;

        $all_khgd = DB::table('table_kehoachgiangday')
        ->select('noidung')
        ->where('id_hocphan', $decuong->id_hocphan)->get();

        $stt = 1;
        foreach($all_khgd as $value) {
            $value->buoi = "Buổi ".$stt++;
            $value->noidung = $this->tach_khgd($value->noidung);
        }

        return $all_khgd;

    }

    public function tach_khgd($string) {

        $tach = explode("_", $string);
        $gop = "";

        for ($i = 0; $i < count($tach); $i++) {
            $gop .= trim($tach[$i])."\n";
        }

        $result = rtrim($gop, '\n');

        return $result;

    }


}
