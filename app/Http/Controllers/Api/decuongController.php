<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\decuongchitiet;
use DB;
use Carbon\Carbon;
use Http;
use App\User;
use App\Models\lichsudangnhap;

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

        $account = DB::table('table_account')->where('id_chucvu', $id_gv)->first();

        $lich = DB::table('table_lich_gv')
        ->where('id_gv', $id_gv)
        ->join('table_lich', 'table_lich_gv.id_lich', 'table_lich.id')
        ->join('table_lophocphan', 'table_lich.id_lhp', 'table_lophocphan.id')
        ->join('table_hocphan', 'table_lophocphan.id_hocphan', 'table_hocphan.id')
        ->join('table_decuongchitiet', 'table_lophocphan.id_hocphan', 'table_decuongchitiet.id_hocphan')
        ->select('tenhocphan', 'id_decuong')
        ->DISTINCT()
        ->get();

        return $lich;

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

    public function getlichhomnay($id_gv) {

        $day = Carbon::now()->dayOfWeek;

        $lich = DB::table('table_lich_gv')
        ->join('table_lich', 'table_lich.id', 'table_lich_gv.id_lich')
        ->join('table_lophocphan', 'table_lich.id_lhp', 'table_lophocphan.id')
        ->where('id_gv', $id_gv)
        ->where('thu', $day+1)
        ->get();

        foreach($lich as $value_lich) {
            $value_lich->thoigian = $this->convert_thoigian($value_lich->tiet);
            $value_lich->tiet = $this->convert_tiet($value_lich->tiet);
        }

        return $lich;
    }

    public function getlich($id_gv) {

        $now = Carbon::now();
        $start =  Carbon::create(2020, 7, 27); 
        $week = $now->diffInWeeks($start);
        $weekcurrent = 1;

        $lich = DB::table('table_lich_gv')
        ->join('table_lich', 'table_lich.id', 'table_lich_gv.id_lich')
        ->join('table_lophocphan', 'table_lich.id_lhp', 'table_lophocphan.id')
        ->where('id_gv', $id_gv)
        ->get();

        foreach($lich as $value_lich) {
            $value_lich->thoigian = $this->convert_thoigian($value_lich->tiet);
            $value_lich->tiet = $this->convert_tiet($value_lich->tiet);
            $value_lich->noidung = '';

            $all_khgd = DB::table('table_kehoachgiangday')
            ->select('noidung')
            ->where('id_hocphan', $value_lich->id_hocphan)
            ->get();

            $stt = 1;
            foreach($all_khgd as $value) {
                $value->buoi = "Buổi ".$stt++;
                $value->noidung = $this->tach_khgd($value->noidung);
            }

            foreach($all_khgd as $value_nd) {
                if ($value_nd->buoi == "Buổi ".$weekcurrent) {
                    $value_lich->noidung = $value_nd->noidung;
                }
            }

            

        }

        

        

        //echo "<pre>";
        //print_r($all_khgd);

        // $stt = 1;
        // foreach($all_khgd as $value) {
        //     $value->buoi = "Buổi ".$stt++;
        //     $value->noidung = $this->tach_khgd($value->noidung);
        // }

        return $lich;

    }

    function convert_tiet($tiet) {
        switch($tiet) {
            case '1-2': return '1->2';
            case '3-4': return '3->4';
            case '6-7': return '6->7';
            case '8-9': return '8->9';
            default: return $tiet;
        }
    }

    function convert_thoigian($tiet) {
        switch($tiet) {
            case '1-2': return '07:30 - 09:30';
            case '3-4': return '09:30 - 11:30';
            case '6-7': return '13:00 - 15:00';
            case '8-9': return '15:00 - 17:00';
            default: return $tiet;
        }
    }

    public function test() {
        $now = Carbon::now();
        $start =  Carbon::create(2020, 7, 27); 

        echo $now->diffInWeeks($start);
        //echo $now->diffInDays($start);
    }

    public function login_google(Request $req) {
        $provider = $req->provider;
        $token = $req->token;

        //tk = eyJhbGciOiJSUzI1NiIsImtpZCI6ImNkNDliMmFiMTZlMWU5YTQ5NmM4MjM5ZGFjMGRhZGQwOWQ0NDMwMTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI2ODAyNzExODA4NjYtaWN1azNvdHY4ZWV1ZzQ4dGNrc3I3cWhwcWk4cnBwNW4uYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI2ODAyNzExODA4NjYtN2RmOG0yN2ljZ2FtMDB2azBrZzc3ZGptMGIzY3BtNmIuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTI3NjMzNzQ4MDA0NTc2Mjc2OTQiLCJoZCI6InZrdS51ZG4udm4iLCJlbWFpbCI6InBxdmFuLjE5aXQzQHZrdS51ZG4udm4iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6IlbEg24gUGjhuqFtIFF14buRYyIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BQVRYQUp3WUVkcjh6Y3J1Q1QtVll4NnlVeklkb21mZ3BCRkp2NXlJRmJmWj1zOTYtYyIsImdpdmVuX25hbWUiOiJWxINuIiwiZmFtaWx5X25hbWUiOiJQaOG6oW0gUXXhu5FjIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MjE3MzQ2MDAsImV4cCI6MTYyMTczODIwMH0.U2CvqKcZPn-_LboBWWGqJAz-BUUEgT9FSWJuJXFBBWUAhX590Ifq_BfACcW2i_evc7IDEZ9rBZVv6OIYYT-HM8JYtX5fi9_ZYZOP5ImPSPUP5QzjLzVh4QcRgos78BwlNrMztTS1BhXUkJDkgYByfNf8qXuWJS8MQ-CbQ6rsLDkJyZTJGPPHFWG8qeIkykQyYJW9qVBxfWmcXGF3RXsIZvZ810nLm2-RERYwn1AmqOOt1d0ka5RVLNZNynP0R88PQ-Z1JzQL3NjropdIZTsm7ATew9Ju9o6klO-Eym2ywU6ebLTEyyBLm0GGyugBEGS2CPjh94GxIS3KAxrkD1wEaw

        $userId = '';
        $userEmail = '';

        if($provider == 'google') {
            $getInfo = Http::get('https://oauth2.googleapis.com/tokeninfo', [
                'id_token' => $token
            ]);

            $userId = $getInfo['sub'];
            $userEmail = $getInfo['email'];

        }

        $user = User::where('id_provider', $userId)->first();


        $account = DB::table('table_account')->where('id_user', $user->id)->first();

        if($account->chucvu == 'gv') {
            $user = DB::table('table_giangvien')->where('id', $account->id_chucvu)->first();
        } 

        if($account->chucvu == 'sv') {
            $user = DB::table('table_sinhvien')->where('id', $account->id_chucvu)->first();
        }

        $user->image = $getInfo['picture'];

        // if(!$user) {
        //     if(!User::where('email', $userEmail)->count() != 0) {

        //         $data = ([
        //             'name' => 'GV',
        //             'email' => $userEmail,
        //             'id_gv' => 110,
        //             'id_provider' => $userId
        //         ]);
        //         $user = new User($data);
        //         $user->save();
        //     }
        // } else if($provider == 'google') {
        //     $user->image = $getInfo['picture'];
        // }

        return response()->json([
            "success" => true,
            "privider" => $userId,
            "email" => $userEmail,
            "chucvu" => $account->chucvu,
            "user" => $user
        ]);

    }

    public function insert_lsdn(Request $req) {
        $tenthietbi = $req->tenthietbi;
        $vitri = $req->vitri;
        $ngaygio = $req->ngaygio;
        $email = $req->email;

        $user = User::where('email', $email)->first();

        $id_user = $user->id;

        $userlsdn = lichsudangnhap::where('id_user', $id_user)->where('tenthietbi', $tenthietbi)->first();

        if($userlsdn) {
            $userlsdn->tenthietbi = $tenthietbi;
            $userlsdn->vitri = $vitri;
            $userlsdn->ngaygio = $ngaygio;
            $userlsdn->id_user = $id_user;
            $userlsdn->save();
        } else {
            $lsdn = new lichsudangnhap;
            $lsdn->tenthietbi = $tenthietbi;
            $lsdn->vitri = $vitri;
            $lsdn->ngaygio = $ngaygio;
            $lsdn->id_user = $id_user;
            $lsdn->save();
        }

        
        return response()->json([
            "success" => $userlsdn
        ]);

    }


}
