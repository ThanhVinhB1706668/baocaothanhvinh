<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();


class ProductController extends Controller
{

    public function AuthLogin() {
        $admin_id = session::get('admin_id');
        if($admin_id){
            Redirect::to('dashboard');
        } else {
            Redirect::to('admin') -> send();
        }
    }

    public function add_product() {
        $this -> AuthLogin();
        $cate_product = DB::table('tbl_category_product') -> orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand_product') -> orderby('brand_id','desc')->get();
        
        return view('admin.add_product') ->with('cate_product', $cate_product) -> with('brand_product',$brand_product);
        
    }

    public function all_product() {
        $this -> AuthLogin();
        $all_product = DB::table('tbl_product') 
        ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id') 
        ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id') 
        ->orderby('tbl_product.product_id','desc') ->get() ;

        $manager_product = view('admin.all_product') ->with ('all_product', $all_product);
        return view('admin_layout') ->with('admin.all_product', $manager_product); 

    }

    public function save_product(request $request) {
        $this -> AuthLogin();
        $data = array();
        $data ['product_name'] = $request -> product_name;
        $data ['product_price'] = $request -> product_price;
        $data ['product_desc'] = $request -> product_desc;
        $data ['product_content'] = $request -> product_content;
        $data ['product_status'] = $request -> product_status;
        $data ['product_image'] = $request -> product_image;

        $data ['brand_id'] = $request -> product_brand;
        $data ['category_id'] = $request -> product_cate;

        $get_image = $request-> file('product_image');
        if ($get_image) {
            $get_name_image = $get_image -> getclientoriginalname();
            $name_image = current(explode('.', $get_name_image));
            $new_image =  $name_image.rand(0,99) .'.'.$get_image -> getclientoriginalextension();
            $get_image -> move('public/uploads/product', $new_image);
            $data['product_image'] = $new_image; 
            DB::table('tbl_product') -> insert($data);
            session::put('message', 'Th??m s???n ph???m th??nh c??ng!');

            return redirect::to('add-product');

        }
        $data['product_image'] = ''; 
        DB::table('tbl_product') -> insert($data);
        session::put('message', 'Th??m s???n ph???m th??nh c??ng!');

        return redirect::to('add-product');

        
    }

    public function unactive_product($product_id){
        $this -> AuthLogin();
        DB::table('tbl_product') -> where ('product_id', $product_id) -> update(['product_status' => 1]);
        session::put ('message', '???? hi???n th??? s???n ph???m');
        return Redirect::to('all-product');
    }

    public function active_product($product_id){
        $this -> AuthLogin();
        DB::table('tbl_product') -> where ('product_id', $product_id) -> update(['product_status' => 0]);
        session::put ('message', '???? ???n s???n ph???m');
        return Redirect::to('all-product');
        
    }

    public function edit_product($product_id){
        $this -> AuthLogin();
        $cate_product = DB::table('tbl_category_product') -> orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand_product') -> orderby('brand_id','desc')->get();

        $edit_product = DB::table('tbl_product') ->where('product_id', $product_id) -> get();
        
        $manager_product = view('admin.edit_product') ->with ('edit_product', $edit_product) -> with('cate_product',$cate_product)
        ->with('brand_product',$brand_product);
        return view('admin_layout') ->with('admin.edit_product', $manager_product);


        
    }

    public function update_product(request $request, $product_id){
        $this -> AuthLogin();
        $data = array();
        $data ['product_name'] = $request -> product_name;
        $data ['product_price'] = $request -> product_price;
        $data ['product_desc'] = $request -> product_desc;
        $data ['product_content'] = $request -> product_content;
        $data ['brand_id'] = $request -> product_brand;
        $data ['category_id'] = $request -> product_cate;
        $get_image = $request-> file('product_image'); 

        if ($get_image) {
            $get_name_image = $get_image -> getclientoriginalname();
            $name_image = current(explode('.', $get_name_image));
            $new_image =  $name_image.rand(0,99) .'.'.$get_image -> getclientoriginalextension();
            $get_image -> move('public/uploads/product', $new_image);
            $data['product_image'] = $new_image; 
            DB::table('tbl_product') -> where('product_id', $product_id) ->update($data);
            session::put('message', 'C???p nh???t s???n ph???m th??nh c??ng!');

            return redirect::to('all-product');

        }
      
        DB::table('tbl_product') -> where('product_id', $product_id) ->update($data);
        session::put('message', 'C???p nh???t s???n ph???m th??nh c??ng!');

        return redirect::to('all-product');
        
        
    }

    public function delete_product($product_id){
        $this -> AuthLogin();
        
        DB::table('tbl_product') -> where('product_id', $product_id) ->delete();
        Session::put('message', 'X??a s???n ph???m th??nh c??ng!');
        return Redirect::to('all-product'); 
        
    }


    //End Admin Page

    public function details_product($product_id){
        $cate_product = DB::table('tbl_category_product') -> where('category_status','1') -> orderby('category_id','desc')->get();
        $brand_product = DB::table('tbl_brand_product') -> where('brand_status','1') -> orderby('brand_id','desc')->get();

        $details_product = DB::table('tbl_product') 
        ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id') 
        ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id') 
        ->where('tbl_product.product_id', $product_id) -> get() ;

        foreach($details_product as $key => $value) {
            $category_id = $value -> category_id;}


        $related_product = DB::table('tbl_product') 
        ->join('tbl_category_product','tbl_category_product.category_id','=','tbl_product.category_id') 
        ->join('tbl_brand_product','tbl_brand_product.brand_id','=','tbl_product.brand_id') 
        ->where('tbl_category_product.category_id', $category_id) -> whereNotIn('tbl_product.product_id',[$product_id])-> get() ;

       return view('pages.sanpham.show_details') -> with('category', $cate_product) ->with('brand',$brand_product) ->with('product_details', $details_product) 
       -> with('relate', $related_product);
        
    }

}
