@extends('layouts.admin')
@section('title', 'Orders')
@section('content')
    <!-- Bread crumb and right sidebar toggle -->

    @component('admin.dashboard.breadcumb')
    <li class="breadcrumb-item"><a href="{{url('admin/invoice/'.$order->id)}}">Invoice</a></li>
    @endcomponent

    <!-- End Bread crumb and right sidebar toggle -->
    <div class="page-content container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card card-body printableArea">
                    <h3><b>INVOICE</b> <span class="pull-right">#{{$order->id}}</span></h3>
                    <hr>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-left">
                                <address>
                                    <h3> &nbsp;<b class="text-danger">BrandsZone</b></h3>
                                    <p class="text-muted ml-1" style="width: 130px">{{$companyInfo->address}}</p>
                                    <span class="text-muted"><small>Phone:</small> {{$companyInfo->phone}}</span><br>
                                    <span class="text-muted"><small>Email:</small> {{$companyInfo->email}}</span>
                                </address>
                            </div>
                            <div class="pull-right text-right">
                                <address>
                                    <h3>To,</h3>
                                    <h4 class="font-bold">{{$order->shipping->first_name}} {{$order->shipping->last_name}}</h4>
                                    <p class="text-muted ml-4">{{$order->shipping->address}},
                                        <br/> {{$order->shipping->city->name}}, {{$order->shipping->country->name}} - {{$order->shipping->zip_code}}</p>
                                    <p class="mt-4">Date : </i> {{Carbon\Carbon::today()->format('d M Y')}}</p>
                                </address>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="table-responsive mt-5" style="clear: both;">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Name</th>
                                            <th>Code</th>
                                            <th>Size</th>
                                            <th>Color</th>
                                            <th>Price</th>
                                            <th>Qty</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                            @foreach($order->products as $key=>$product)
                                            @php
                                                $productCode = App\Product::find($product->product_id);
                                            @endphp
                                            <tr>
                                                <td>{{$key+1}}</td>
                                                <td>{{$product->name}}</td>
                                                <td>{{$productCode->code}}</td>
                                                <td>{{$product->size != NULL ? $product->size : '--'}} </td>
                                                <td>{{$product->color != NULL ? $product->color : '--'}} </td>
                                                <td>{{$product->price}}</td>
                                                <td>{{$product->qty}}</td>
                                                <td>{{$product->qty * $product->price}}</td>
                                            </tr>
                                            @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mt-4 mr-5 text-right">
                                <p>Sub - Total amount: Tk {{$order->order_total}}</p>
                                <p>Delivery charge : Tk {{$order->shipping_charge}} </p>
                            </div>
                            <hr>
                            <h3 class="text-right mr-5"><b>Total :</b> Tk {{$order->order_total + $order->shipping_charge}}</h3>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card card-body">
                    <button id="print" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Print</span> </button>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('js')
<script src="{{asset('contents/admin/dist/js/pages/samplepages/jquery.PrintArea.js')}}"></script>
<script>
    $(function() {
        $("#print").click(function() {
            var mode = 'iframe'; //popup
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            };
            $("div.printableArea").printArea(options);
        });
    });
</script>
@endpush