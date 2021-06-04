<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cmscrawl extends Model
{
    // use HasFactory;
    public $timestamps = false; //set time to false
    protected $fillable = [
    	'id','nguoidang','tieude','noidung','ngay'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'table_cms_crawl';
}
