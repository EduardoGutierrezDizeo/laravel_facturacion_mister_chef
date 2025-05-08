@extends('layouts.app')

@section('title','Listado De Productos')

@section('content')

<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
        </div>
    </section>
    @include('layouts.partial.msg')
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header bg-secondary"
                            style="font-size: 1.75rem;font-weight: 500; line-height: 1.2; margin-bottom: 0.5rem;">
                            @yield('title')

                            <a href="#" class="btn btn-primary float-right" title="Nuevo"><i
                                    class="fas fa-plus nav-icon"></i></a>

                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nombre</th>
                                        <th>Gramaje</th>
                                        <th>Precio venta</th>
                                        <th>Estado</th>
                                        <th>Accion</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($productos as $producto)
                                    <tr>
                                        <td>{{$producto->id}}</td>
                                        <td>{{$producto->nombreProducto}}</td>
                                        <td>{{$producto->gramaje}}</td>
                                        <td>{{$producto->precioVenta}}</td>
                                        <td>
										
											<input data-type="producto" data-id="{{$producto->id}}" class="toggle-class" type="checkbox" data-onstyle="success" data-offstyle="danger" 
											data-toggle="toggle" data-on="Activo" data-off="Inactivo" {{ $producto->status ? 'checked' : '' }}>
										
										</td>
                                        <td>
                                            <form class="d-inline delete-form" action="{{ route('productos.destroy', $producto) }}"  method="POST">
												@csrf
												@method('DELETE')
												<button type="submit" class="btn btn-danger btn-sm" title="Eliminar"><i class="fas fa-trash-alt"></i></button>
											</form>
                                        </td>


                                        
                                    </tr>
                                    @endforeach
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection