<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Goutte\Client;
use App\Models\cmscrawl;
use DB;

class CrawlDataController extends Controller
{
    public function index() {

        $listLink = array();

        $client = new Client();
        $crawler = $client->request('GET', 'http://daotao.vku.udn.vn/vku-thong-bao-chung');
        
        $crawler->filter('.item-list ul li a')->each(function ($node) use (&$listLink,$crawler) {
            $link = $node->attr('href');
            array_push($listLink,$link);
        });

        $nguoidang = "VKU - Phòng đào tạo";

        $dulieucrawldt = DB::table('table_cms_crawl')->get();

        // echo "<pre>";
        // print_r($dulieucrawldt);

        foreach($listLink as $value_link) {

            $link2 = "http://daotao.vku.udn.vn/thong-bao".$value_link;

            $crawlLink = $client->request('GET', $link2);

            $tieude = "";
            $noidung = "";
            $ngay = "";

            $crawlLink->filter('.h3_title')->each(function ($node) use (&$tieude,$crawlLink) {
                $tieude = $node->text();
            });

            $crawlLink->filter('.field-item')->each(function ($node) use (&$noidung,$crawlLink) {
                $noidung = $node->text();
            });

            $crawlLink->filter('.submitted span')->each(function ($node) use (&$ngay,$crawlLink) {
                $ngay = $node->text();
            });

            $check = 0;

            foreach($dulieucrawldt as $value_dldt) {
                if($value_dldt->tieude == $tieude) {
                    $check = 1;
                } 
            }

            if($check == 0) {
                $cmscraw = new cmscrawl;
                $cmscraw->nguoidang = $nguoidang;
                $cmscraw->tieude = $tieude;
                $cmscraw->noidung = $noidung;
                $cmscraw->ngay = $ngay;
                $cmscraw->save();
            }

        }

        return "Successfull";

    }

    
    
}
