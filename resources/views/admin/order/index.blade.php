@extends('layouts.admin')
@section('title', 'Orders')
@push('css')
<link href="{{asset('contents/admin/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css')}}" rel="stylesheet">
@endpush
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/contacts')}}">Order</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="material-card card">
                    <div class="card-header">
						<div class="pull-left">
							<h6 class="card-title mt-1">Order</h6>
						</div>
					</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped border">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Total</th>
                                        <th>Time</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($orders as $key=>$order)
                                        <tr>
                                            <td>{{$key + 1}}</td>
                                            <td>{{$order->shipping->first_name}} {{$order->shipping->first_name}}</td>
                                            <td>{{$order->shipping->email}}</td>
                                            <td>{{$order->shipping->phone}}</td>
                                            <td>Tk {{$order->order_total}}</td>
                                            <td>{{$order->created_at->diffForHumans()}}</td>
                                            <td>
                                                @if($order->status == 1)
                                                <a href="{{url('admin/order/delivered/'. $order->id)}}"><span class="badge badge-info">Delivary</span></a>
                                                <a href="{{url('admin/order/cancel/'. $order->id)}}"><span class="badge badge-info">Cancel</span></a>
                                                @elseif($order->status == 2)
                                                <span class="badge badge-success">Delivered</span>
                                                @else
                                                <span class="badge badge-danger">Canceled</span>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="{{url('admin/orders/'. $order->id)}}"><button class="btn btn-info btn-circle btn-sm"><i class="mdi mdi-eye"></i></button></a>
                                                <a href="{{url('admin/invoice/'. $order->id)}}"><button class="btn btn-info btn-circle btn-sm"><i class="mdi mdi-file-document-box"></i></button></a>
                                                <button data-url="{{url('admin/orders/'.$order->id)}}" class="btn-delete btn btn-danger btn-circle btn-sm" data-toggle="modal" data-target="#deleteModal"><i class="mdi mdi-delete"></i></button>
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
        <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form  method="post" id="delete-form">
                        @csrf
                        @method('delete')
                        <div class="modal-header">
                            <h4 class="modal-title" id="exampleModalLabel1">Are you sure to delete?</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancle</button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
<script src="{{asset('contents/admin/assets/extra-libs/DataTables/datatables.min.js')}}"></script>
<script src="{{asset('contents/admin/dist/js/pages/datatable/datatable-basic.init.js')}}"></script>
@endpush
