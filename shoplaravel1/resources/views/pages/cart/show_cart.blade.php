@extends('layout')
@section('content')

<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li class="active" style ="font-size:30px">Giỏ hàng của bạn</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<?php
					$content = Cart::content();
					
				?>
                
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu" >
							<td class="description">Sản phẩm</td>
							<td class="image"> Ảnh Sản phẩm</td>
                            <!-- <td class="capacity">Dung tích</td> -->
							<td class="price">Giá</td>
							<td class="quantity">Số lượng</td>
							<td class="total">Thành tiền</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						@foreach($content as $v_content)
						
					
						<tr>
							<td class="cart_description">
								<h4><a href="">{{$v_content ->name}}</a></h4>
							</td>

							<td class="cart_product">
								<img src="http://localhost/shoplaravel1/public/uploads/product/{{$v_content -> options -> image}}" alt="" height ="50px" />

							</td>
					
							<!-- <td class="cart_weight">
								<p>{{$v_content ->capacity}}</p>
							</td> -->
							<td class="cart_price">
								<p>{{number_format($v_content ->price).' '.'Vnđ'}}</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<form action ="{{URL::to('/update-cart-quantity')}}" method ="Post">
									{{csrf_field()}}
									
									<input class="cart_quantity_input" type="text" name="cart_quantity" value="{{$v_content ->qty}}">
									<input type ="hidden" value ="{{$v_content -> rowId}}" name ="rowId_cart" class="form-control">
									<input type ="submit" value ="Cập nhật" name ="update_qty" class ="btn btn-default btn-sm">

									</form>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">
									<?php
									$subtotal = $v_content -> price * $v_content -> qty;
									echo number_format($subtotal).' '.'Vnđ';
									?>

								</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href="{{URL::to('/delete-to-cart/'.$v_content -> rowId)}}"><i class="fa fa-times"></i></a>
							</td>
						</tr>

						@endforeach

					</tbody>
					
				</table>
						<ul>
							<li style ="margin-left: -30px">Tổng tiền: <span style ="font-size: 20px; padding-left: 3px">{{Cart::total(0,',','.').' '.'Vnđ'}}</span></li>
						</ul>

						<div class="total_area">
						
							<!-- <a class="btn btn-default update" href="">Update</a> -->
							<?php
									$customer_id = Session::get('customer_id');
									if($customer_id!=NULL) {

								?>
								<a class="btn btn-default check_out" href="{{URL::to('/checkout')}}" style ="margin: 10px">Tiến hành thanh toán</a>

								<?php
									}else{
								?>
								<a class="btn btn-default check_out" href="{{URL::to('/login-checkout')}}" style ="margin: 10px">Tiến hành thanh toán</a>
								<?php
									}
								?>

					</div>
			</div>
		</div>
	</section> <!--/#cart_items-->




@endsection