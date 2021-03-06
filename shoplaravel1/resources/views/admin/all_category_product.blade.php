@extends('admin_layout')
@section('admin_content')

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê danh mục sản phẩm
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
            
            <th> Id </th>
            <th>Tên danh mục</th>
            <th>Trạng thái</th>
            <th style="width:80px;"></th>

          </tr>
        </thead>
        <tbody>
            @foreach($all_category_product as $key => $cate_pro)

          <tr>
            <td>{{$cate_pro -> category_id}}</td>
            <td>{{$cate_pro -> category_name}}</td>
            <td><span class="text-ellipsis">
                <?php
                    if ($cate_pro -> category_status == 0){
                ?>
                    <a href ="{{URL::to('/unactive-category-product/'.$cate_pro ->category_id)}}"> <span style ="color: red; font-size: 20px" class =" fa fa-check"> </span></a>
                <?php
                    } else {
                ?>
                    <a href ="{{URL::to('/active-category-product/'.$cate_pro ->category_id)}}"> <span style ="color: green; font-size: 20px" class =" fa fa-check"> </span></a>
                <?php
                    }
                ?>


                

            </span></td>
         
            <td>
              <a href="{{URL::to('/edit-category-product/'.$cate_pro -> category_id)}}" class="active" ui-toggle-class=""><i class="fa fa-pencil-square-o text-success text-active" style ="font-size: 20px"></i> </a>

              <a onclick ="return confirm ('Bạn có chắc là muốn xóa không?')" href="{{URL::to('/delete-category-product/'.$cate_pro -> category_id)}}" class="active" ui-toggle-class=""><i class="fa fa-times text-danger text " style ="font-size: 20px"></i> </a>
            </td>
           
          </tr>
            @endforeach
        </tbody>
      </table>
    </div>

  </div>
</div>

@endsection