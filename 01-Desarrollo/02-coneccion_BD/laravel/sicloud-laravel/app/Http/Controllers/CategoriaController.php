<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use sicloud\Categoria;
use illuminate\Support\Facades\Redirect;
use sicloud\http\Requests\CategoriaFormRequest;
use DB;

class CategoriaController extends Controller
{
    //
    //
   

   public function __construct(Rerquest $request)
   {
   		if ($request){
   			$query=trim($request -> get ('searchText'));
   			$categorias=DB::table('categoria')->where('nombre', 'LIKE',)

   		}

   }



   public function index(Request $request )
   {
   	if ($request){
   		$query=trim($request -> get('searchText'));
   		$categorias=DB::table('categoria')->where('nombre','LIKE','%'.$query.'%')
   		->orderBy('ID_categoria','desc')
   		->paginate(7);
   		return view ('almace.categoria.index',["categorias"=>$categorias, "searchText" => $query]);
   	}


   }

   public function create()
   {
   	return view ("almace.categoria.create");
   }

   public function store (CategoriaFormRequest $request)
   {
   	 $categoria=new Categoria;
   	 $categoria->nombre=$request->get('nombre');
   }

   public function show() 
   {

   }

public function edit()
{

}

public function update()
{

}

public function detroy()
{

}

}



