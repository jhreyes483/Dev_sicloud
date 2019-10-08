<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    //
  
  Protected $table= 'categoria';
  protected $prymaryKey 'ID_categoria';
  public $timetamps=false; 
  protected $fillable =[

  	'Nom_Cat'
  ];

  protected $guarded =  [];                   
  }




