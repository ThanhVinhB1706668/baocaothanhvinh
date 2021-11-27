@extends('layout')
@section('content')


<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				  <p>Thanh toán</p>
			</div>

			<div class="table-responsive cart_info">
				<?php
					$content = Cart::content();
					
				?>
                
			</div>
		</div>

			<!-- <div class="register-req">
				<p>Đăng kí hoặc đăng nhập để thanh toán giỏ hàng và xem lại lịch sử mua hàng của bạn</p>
			</div>/register-req -->

			<div class="shopper-informations">
				<div class="row">
					
					<div class="col-sm-12 clearfix">
						<div class="bill-to">
							<p> Nhập thông tin nhận hàng</p>
							<div class="form-one">
								<form action="{{URL::to('/save-checkout-customer')}}" method ="POST" style ="margin-left:15px; width:560px">
									{{csrf_field()}}
									<input type="text" name="shipping_email" placeholder="Địa chỉ email">
									<input type="text" name="shipping_name" placeholder="Họ và tên">
									<input type="text" name="shipping_address" placeholder="Địa chỉ nhận hàng">
									<input type="text" name="shipping_phone" placeholder="Số điện thoại">
									<textarea name="shipping_notes"  placeholder="Ghi chú đơn hàng..." rows="8"></textarea> 
									<span style ="padding-right: 180px">
										<label><input name ="payment_option" value ="1" type="checkbox" style ="margin-left: 15px"> Thánh toán ATM</label>
									</span>
									<span>
										<label><input name ="payment_option" value ="2" type="checkbox"> Trả tiền mặt sau khi nhận hàng</label>
									</span>
									<input type="submit" name="send_order" value="Thanh toán" class="btn btn-primary">

								</form>
							</div>
							
						</div>
					</div>
									
				</div>
			</div>
			
	</section> <!--/#cart_items-->


			



		
		</div>
	</section> <!--/#cart_items-->

@endsection