@extends('layout')
@section('content')
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
			<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký thành viên </h2>
						<form action="{{URL::to('/add-customer')}}" method ="POST">
							{{csrf_field()}}
							<input type="email" name ="customer_email" placeholder="Địa chỉ Email"/>
							<input type="text" name ="customer_name" placeholder="Họ và tên"/>
							<input type="password" name ="customer_password" placeholder="Password"/>
							<input type="text" name ="customer_phone" placeholder="Số điện thoại..."/>
							<button type="submit" class="btn btn-default">Đăng ký thành viên</button>
						</form>
					</div><!--/sign up form-->
				</div>

				<div class="col-sm-4">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập</h2>
						<form action="{{URL::to('/login-customer')}}" method ="Post">
							{{csrf_field()}}
							<input type="text" name="email_account" placeholder="Tài khoản" />
							<input type="password" name ="password_account" placeholder="Password" />
						
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				
			</div>
		</div>
	</section><!--/form-->
	


@endsection