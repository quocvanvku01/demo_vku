<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class lichsudangnhap extends Model
{
    // use HasFactory;
    public $timestamps = false; //set time to false
    protected $fillable = [
    	'id','tenthietbi','vitri','ngaygio','id_user'
    ];
    protected $primaryKey = 'id';
 	protected $table = 'table_lichsudangnhap';

}
