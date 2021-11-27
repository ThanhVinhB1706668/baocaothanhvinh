@extends('admin_layout')
@section('admin_content')

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê đơn hàng
    </div>
  
    <div class="table-responsive">
        <?php 
            $message = Session::get('message');
            if ($message) {
                echo  '<span style ="color:red; width:100%"> '.$message.' </span>';
                Session::put('message', null);
                                }
                ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
           
            <th>Tên người đặt</th>
            <th>Tổng giá tiền</th>
            <th>Xem chi tiết</th>


            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
            @foreach($all_order as $key => $order)

          <tr>
            <td>{{$order -> customer_name}}</td>
            <td>{{$order -> order_total}}</td>

         
            <td>
              <a href="{{URL::to('/view-order/'.$order -> order_id)}}" class="active" ui-toggle-class=""><i class="fa fa-eye text-success text-active" style ="font-size: 20px"></i> </a>
            </td>
            

          </tr>
            @endforeach
        </tbody>
      </table>
    </div>
 
  </div>
</div>

@endsection