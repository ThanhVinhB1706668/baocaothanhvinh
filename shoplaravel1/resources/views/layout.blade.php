<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Điện máy</title>
    <link href="{{asset('public/frontend/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontend/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontend/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontend/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontend/css/animate.css')}}" rel="stylesheet">
	<link href="{{asset('public/frontend/css/main5.css')}}" rel="stylesheet">
	<link href="{{asset('public/frontend/css/responsive.css')}}" rel="stylesheet">
	<link href="{{asset('public/frontend/css/sweetalert.css')}}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="{{('public/frontend/images/ico/favicon.ico')}}">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="{{URL::to('/')}}"><img src="{{asset('public/frontend/images/logoshop.jpg')}}" alt="" style ="width:200px; height:80px" /></a>
						</div>
					
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
							
								<li><a href="{{URL::to('/show-cart')}}"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>

								<?php
									$customer_id = Session::get('customer_id');
									if($customer_id!=NULL) {

								?>
								<li><a href="{{URL::to('/logout-checkout')}}"><i class="fa fa-lock"></i> Đăng xuất</a></li>

								<?php
									}else{
								?>
								<li><a href="{{URL::to('/login-checkout')}}"><i class="fa fa-lock"></i> Đăng nhập</a></li>
								<?php
									}
								?>

								<li><a href="{{URL::to('/admin')}}"><i class="fa fa-lock"></i> Quản trị Website</a></li>
							
								
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-7">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="{{URL::to('/')}}" class="active">Trang chủ</a></li>
								
								<li class="dropdown"><a href="#">Tin tức</a></li> 
								<li><a href="#">Giới thiệu</a></li>
								<li><a href="#">Liên hệ</a></li>


							</ul>
						</div>
					</div>
					<div class="col-sm-5">
						<form action ="{{URL::to('tim-kiem')}}" method ="Post">
							{{csrf_field()}}
						<div class="search_box pull-right">
							<input type="text" name="keywords_submit" placeholder="Tìm kiếm sản phẩm..."/>
							<input type ="submit" name="search-items" class ="btn btn-basic btn-sm" value="Tìm kiếm" style ="width:80px; height:35.5px; margin-left:-5px; margin-top: -2px; background-color: #f0f0e9; border:1px solid #B2B2B2"> 

							<style>
								.search_box input {
								background: white;
								border: 1px solid #B2B2B2;
								color: #B2B2B2;
								font-family: 'roboto';
								font-size: 12px;
								font-weight: 300;
								height: 35px;
								outline: medium none;
								padding-left: 10px;
								width: 200px;
								background-image: url(../images/home/searchicon.png);
								background-repeat: no-repeat;
								background-position: 130px;
							}
							</style>	

						</div>
						</form>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-12">
										<img src="{{asset('public/frontend/images/slider-tivi.jpg')}}" class="girl img-responsive" alt="" style ="height: 370px; width: 950px"/>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-12">
								
								<img src="{{asset('public/frontend/images/slider-tulanh.jpg')}}" class="girl img-responsive" alt="" style ="height: 370px; width: 950px"/>
								</div>
							</div>
							
							<div class="item">
							<div class="col-sm-12">
								
								<img src="{{asset('public/frontend/images/slider-maylanh.jpg')}}" class="girl img-responsive" alt="" style ="height: 370px; width: 950px"/>
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Danh mục</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							@foreach($category as $key => $cate)
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="{{URL::to('/danh-muc-san-pham/'.$cate -> category_id)}}">{{$cate -> category_name}}</a></h4>
								</div>
							</div>
							@endforeach
						</div><!--/category-products-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Thương hiệu</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
								@foreach($brand as $key => $brand)
									<li><a href="{{URL::to('/thuong-hieu-san-pham/'.$brand -> brand_id)}}"> <span class="pull-right"></span>{{$brand -> brand_name}}</a></li>
								@endforeach
								</ul>
							</div>

						</div><!--/brands_products-->
						
					{{-- <div class="price-range"> <!--price-range-->
							<h2>Price Range</h2>
							<div class="well text-center">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						
						<div class="shipping text-center"><!--shipping-->
							<img src="images/home/shipping.jpg" alt="" />
						</div><!--/shipping--> --}}
					
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					@yield('content')

				</div>

			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Cám ơn thầy đã xem: </p>
					<p class="pull-right">Tên SV: Nguyễn Thanh Vình - MSSV: B1706668 - Khoa: CNTT & TT - Trường Đại Học Cần Thơ</p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
  
    <script src="{{asset('public/frontend/js/jquery.js')}}"></script>
	<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('public/frontend/js/jquery.scrollUp.min.js')}}"></script>
	<script src="{{asset('public/frontend/js/price-range.js')}}"></script>
    <script src="{{asset('public/frontend/js/jquery.prettyPhoto.js')}}"></script>
    <script src="{{asset('public/frontend/js/main.js')}}"></script>
	<script src="{{asset('public/frontend/js/sweetalert.min.js')}}"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


	<script type ="text/javascript"> 
		$(document).ready(function() {
			$('.add-to-cart').click(function() {
				 var id = $(this).data('id_product');
				 var cart_product_id = $('.cart_product_id_' + id).val();
				 var cart_product_name = $('.cart_product_name_' + id).val();
				 var cart_product_capacity = $('.cart_product_capacity_' + id).val();
				 var cart_product_image = $('.cart_product_image_' + id).val();
				 var cart_product_price = $('.cart_product_price_' + id).val();
				 var cart_product_qty = $('.cart_product_qty_' + id).val();
				 var _token = $('input[name="_token"]').val();
				

				 $.ajax({
					url: '{{url('/add-cart-ajax')}}',
                    method: 'POST',
					data:{cart_product_id:cart_product_id, cart_product_name:cart_product_name, cart_product_capacity:cart_product_capacity, 
						cart_product_image:cart_product_image, cart_product_price:cart_product_price, cart_product_qty:cart_product_qty, _token:_token},
					success:function(data){
						alert(data);
					}


		 		 });
			});
		});
	</script>

</body>
</html>