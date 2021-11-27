@extends('admin_layout')
@section('admin_content')

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê  sản phẩm
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
        <div class="input-group">
          <input type="text" class="input-sm form-control" placeholder="Tên sản phẩm...">
          <span class="input-group-btn">
            <button class="btn btn-sm btn-default" type="button"> Tìm kiếm sản phẩm</button>
          </span>
        </div>
      </div>
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
            <th>Id</th>
            <th>Tên sản phẩm</th>
            <th>Giá cả</th>
            <th>Hình ảnh</th>
            <th>Danh mục</th>
            <th>Thương hiệu</th>
            <th>Trạng thái</th>
            <th style="width:80px;"></th>


          </tr>
        </thead>
        <tbody>
            @foreach($all_product as $key => $pro)

          <tr>
            <td>{{$pro -> product_id}}</td>
            <td>{{$pro -> product_name}}</td>
            <td>{{$pro -> product_price}}</td>
            <td><img src="http://localhost/shoplaravel1/public/uploads/product/{{$pro -> product_image}}" height = "100px" width = "100px"  > </td>
            <td>{{$pro -> category_name}}</td>
            <td>{{$pro -> brand_name}}</td>
            <td><span class="text-ellipsis">
                <?php
                    if ($pro -> product_status == 0){
                ?>
                    <a href ="{{URL::to('/unactive-product/'.$pro ->product_id)}}"> <span style ="color: red; font-size: 20px" class =" fa fa-check"> </span></a>
                <?php
                    } else {
                ?>
                    <a href ="{{URL::to('/active-product/'.$pro ->product_id)}}"> <span style ="color: green; font-size: 20px" class =" fa fa-check"> </span></a>
                <?php
                    }
                ?>


            </span></td>
         
            <td>
              <a href="{{URL::to('/edit-product/'.$pro -> product_id)}}" class="active" ui-toggle-class=""><i class="fa fa-pencil-square-o text-success text-active" style ="font-size: 20px"></i> </a>
              <a onclick ="return confirm ('Bạn có chắc là muốn xóa không?')" href="{{URL::to('/delete-product/'.$pro -> product_id)}}" class="active" ui-toggle-class=""><i class="fa fa-times text-danger text " style ="font-size: 20px"></i> </a>

            </td>
        
          </tr>
            @endforeach
        </tbody>
      </table>
    </div>
  
  </div>
</div>

@endsection