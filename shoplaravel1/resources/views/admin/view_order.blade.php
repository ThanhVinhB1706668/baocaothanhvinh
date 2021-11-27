<?php 
// dd($order_by_id);
// die();
?>

@extends('admin_layout')
@section('admin_content')


<br>

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Thông tin vận chuyển
    </div>
    
    <div class="table-responsive">
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th>Tên người nhận hàng</th>
            <th>Số điện thoại</th>
            <th>Địa chỉ</th>
            <th>Ghi chú</th>


          </tr>
        </thead>
        <tbody>
        @foreach($order_by_id as $or)

          <tr>
            <td>{{$or-> shipping_name}}</td>
            <td>{{$or -> shipping_phone}}</td>
            <td>{{$or -> shipping_address}}</td>
            <td>{{$or -> shipping_notes}}</td>

          </tr>
          @endforeach
        </tbody>
      </table>
    </div>

  </div>
</div>

<br> <br>

 <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Chi tiết đơn hàng
    </div>
  
    <div class="table-responsive">
      
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
         
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Thành tiền</th>
            


            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
          @foreach($order_by_id as $or_th)
          <tr>
            <td>{{$or_th -> product_name}}</td>
            <td>{{$or_th -> product_sales_quantity}}</td>
            <td>{{$or_th-> product_price}}</td>
            <td>{{$or_th-> product_price * $or_th->product_sales_quantity}}</td>

          </tr>

          @endforeach
          @foreach($order_by_id as $or_tt)
          <tr style ="text-align: center;">
  
            <td colspan ="4">Tổng tiền: {{$or_tt-> order_total}}</td>
          

          </tr>
          @endforeach

        </tbody>
      </table>
    </div>
   
  </div> 
</div>

@endsection