<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Producto;
use Illuminate\Support\Facades\Log;
use Illuminate\Database\QueryException;
use Exception;

class ProductoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $productos=Producto::all();
        // dd($productos);
        // var_dump($productos);
        // print_r($productos);
        
        return view('productos.index',compact('productos'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
{
    try {
        $producto = Producto::findOrFail($id);
        $producto->delete();

        return redirect()->route('productos.index')->with('successMsg', 'El registro se eliminó exitosamente');
    } catch (QueryException $e) {
        Log::error('Error al eliminar el producto: ' . $e->getMessage());
        return redirect()->route('productos.index')->withErrors('El registro que desea eliminar tiene información relacionada. Comuníquese con el Administrador');
    } catch (Exception $e) {
        Log::error('Error inesperado al eliminar el producto: ' . $e->getMessage());
        return redirect()->route('productos.index')->withErrors('Ocurrió un error inesperado al eliminar el registro. Comuníquese con el Administrador');
    }
}
public function cambioestadoproducto(Request $request)
	{
		$producto = Producto::find($request->id);
		$producto->estado=$request->estado;
		$producto->save();
	}

}