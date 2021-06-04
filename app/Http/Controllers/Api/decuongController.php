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
use App\Models\cmscrawl;

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

        $request = request();
        $token = $request->bearerToken();

        $user = User::where('remember_token', $token)->first();

        if($user) {
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

            foreach($lich as $value) {
                $value->token123 = $token;
            }

            return $lich;
        } 

    } 

    public function getkehoachgiangday($id_decuong) {

        $request = request();
        $token = $request->bearerToken();

        $user = User::where('remember_token', $token)->first();

        if($user) {
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

        $request = request();
        $token = $request->bearerToken();

        $user = User::where('remember_token', $token)->first();
        
        if ($user) {
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

        
    }

    public function getlich($id_gv) {

        $now = Carbon::now();
        $start =  Carbon::create(2020, 7, 27); 
        $week = $now->diffInWeeks($start);
        $weekcurrent = $week-30;

        $request = request();
        $token = $request->bearerToken();

        $user = User::where('remember_token', $token)->first();

        if ($user) {
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

            return $lich;
        }

        

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

        if($token != $user->remember_token) {
            $user->remember_token = $token;
            $user->save();
        }

        $account = DB::table('table_account')->where('id_user', $user->id)->first();

        if($account->chucvu == 'gv') {
            $user = DB::table('table_giangvien')->where('id', $account->id_chucvu)->first();
        } 

        if($account->chucvu == 'sv') {
            $user = DB::table('table_sinhvien')->where('id', $account->id_chucvu)->first();
        }

        $user->image = $getInfo['picture'];

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

        $request = request();
        $token = $request->bearerToken();

        $user1 = User::where('remember_token', $token)->first();

        if($user1) {
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

    public function getlichsudangnhap($provider) {

        $user = User::where('id_provider', $provider)->first();

        $id_user = $user->id;

        $lsdn = DB::table("table_lichsudangnhap")->where("id_user", $id_user)->get();

        return $lsdn;

    }

    public function getlistnewsfeed($pageCurrent) {
        //$newsfeed = cmscrawl::orderBy('id', 'desc')->take(15)->get();

        $num_start = $pageCurrent;

        $countrow = cmscrawl::count();

        $currentPage = $num_start ? $num_start : 1;

        $pageShow = 7;

        $countPage = ceil($countrow / $pageShow);

        if ($currentPage > $countPage) {
            $currentPage = $countPage;
        }
        if ($currentPage < 1) {
            $currentPage = 1;
        }

        $pageStart = ($currentPage - 1) * $pageShow;

        $newsfeed = cmscrawl::orderBy('id', 'desc')->offset($pageStart)->limit($pageShow)->get();

        foreach($newsfeed as $value) {
            $value->ngay = substr($value->ngay, 2, 10);
        }

        return $newsfeed; 
    }


}
