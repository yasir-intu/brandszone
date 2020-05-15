<?php



/*
|--------------------------------------------------------------------------
| Website Routes
|--------------------------------------------------------------------------
*/
// Home Route
Route::get('/','WebsiteController@index')->name('');
// About Route
Route::get('/about','WebsiteController@about')->name('');

// privacy route
Route::get('/privacy','WebsiteController@privacy')->name('');
// Error page Route
Route::get('/error/404','WebsiteController@errorPage')->name('');
// Search Route
Route::get('search','SearchController@search')->name('');
// Contact Routes
Route::get('/contact','ContactController@index')->name('');
Route::Post('/contact','ContactController@store')->name('');
// Subscriber Route
Route::Post('/subscribe','SubscriberController@store')->name('');
// Customer login and Register Routes
Route::get('/customer/register','RegisterController@index')->name('');
Route::post('/customer/register','RegisterController@register')->name('');
Route::get('/customer/signup','LoginController@signup')->name('');
Route::post('/customer/guest','LoginController@guest')->name('');
Route::get('/customer/login','LoginController@index')->name('');
Route::post('/customer/login','LoginController@login')->name('');
Route::get('/customer/logout','LoginController@logout')->name('');
// Customer Account Routes
Route::get('/customer/dashboard','CustomerController@index')->name('');
Route::get('/customer/account','CustomerController@account')->name('');
Route::post('/customer/account/edit','CustomerController@update')->name('');
Route::get('/customer/orders','CustomerController@order')->name('');
Route::get('/customer/order/details/{order}','CustomerController@show')->name('');
// Product Routes
Route::get('/product/category/{slug}','ProductController@productByMainCategory')->name('');
Route::get('/product/category/{category}/{slug}','ProductController@productByCategory')->name('');
Route::get('/product/brand/{slug}','ProductController@productByBrand')->name('');
Route::get('/product/details/{product}/{slug}','ProductController@productDetails')->name('');
// Cart routes
Route::get('/shopping/cart','CartController@index')->name('');
Route::post('/cart/add/{product}','CartController@store')->name('');
Route::post('/cart/update','CartController@update')->name('');
Route::delete('/cart/remove/{rowId}','CartController@destroy')->name('');
// Ajax request
Route::get('/cart/items','CartController@cartItem')->name('');
// Payment method route
Route::get('/payment/method','PaymentController@index')->name('');
Route::post('/payment/method','PaymentController@store')->name('');
// Delivery method route
Route::get('/delivery/method','CheckoutController@index')->name('');
Route::post('/delivery/method','CheckoutController@store')->name('');
// Order Confirm Route
Route::get('/order/confirm','OrderController@index')->name('');
Route::post('/order/confirm','
OrderController@store')->name('');
Route::get('/order/success','OrderController@orderSuccess')->name('');

// Website layout data compact
View::composer('layouts.website', function ($view) {
    $basicinfo = App\Basicinfo::first();
    $sociallink = App\Sociallink::first();
    $maincategories = App\Maincategory::limit(7)->get();
    $cartItems = Cart::content();
    $view->with('basicinfo', $basicinfo)->with('sociallink', $sociallink)->with('maincategories', $maincategories)->with('cartItems', $cartItems);
});


/*
|--------------------------------------------------------------------------
| Admin Panel Routes
|--------------------------------------------------------------------------
*/
Auth::routes();

Route::group(['prefix'=>'admin','namespace'=>'Admin','middleware'=>'auth'], function (){
    Route::get('/','AdminController@index')->name('');
    //Bank routes
    Route::get('bank','BankController@index')->name('');
    Route::get('bank/create','BankController@create')->name('');
    Route::post('bank/create','BankController@add')->name('');
    Route::get('bank/details/{id}','BankController@create')->name('');
    // Products Search route
    Route::get('search','SearchController@search')->name('');
    // Contact messages routes
    Route::get('contacts','ContactController@index')->name('');
    Route::get('contacts/{contactmessage}','ContactController@show')->name('');
    Route::delete('contacts/{contactmessage}','ContactController@destroy')->name('');
    // Order routes
    Route::get('orders','OrderController@index')->name('');
    Route::get('deliveries','OrderController@deliveries_index')->name('');
    Route::get('orders/{order}','OrderController@show')->name('');
    Route::delete('orders/{order}','OrderController@destroy')->name('');
    Route::get('order/cancel/{order}','OrderController@orderCancel')->name('');
    Route::get('order/stop/{order}','OrderController@orderStop')->name('');
    Route::get('order/delivered/{order}','OrderController@orderDelivered')->name('');
    Route::get('invoice/{order}','OrderController@invoice')->name('');
    // Customers routes
    Route::get('customers','CustomerController@index')->name('');
    Route::get('customers/{customer}','CustomerController@show')->name('');
    Route::delete('customers/{customer}','CustomerController@destroy')->name('');
    // Subscribers routes
    Route::get('subscribers','SubscriberController@index')->name('');
    Route::delete('subscribers/{subscriber}','SubscriberController@destroy')->name('');
    // Products route
    Route::get('products/topsale','ProductController@topsale')->name('');
    Route::get('products/draft','ProductController@draft')->name('');
    Route::get('products/stockout','ProductController@stockout')->name('');
    Route::get('products/type/{slug}','ProductController@productType')->name('');
    // Retrive subcategories ajax request route
    Route::get('subcategories/{id}','CategoryController@subcategory')->name('');
    // Basic Info routes
    Route::get('about','AboutController@index')->name('');
    Route::put('about','AboutController@update')->name('');

    Route::get('privacy','PrivacyController@index')->name('');
    Route::put('privacy','PrivacyController@update')->name('');
    // Basic Info routes
    Route::get('basicinfo','BasicinfoController@index')->name('');
    Route::put('basicinfo','BasicinfoController@update')->name('');
    // Social media routes
    Route::get('sociallink','SociallinkController@index')->name('');
    Route::put('sociallink','SociallinkController@update')->name('');
    // User premission update
    Route::get('users/permission/{user}','UserController@permission')->name('');
    Route::put('users/permission/{user}','UserController@permissionUpdate')->name('');
    Route::resources([
        'users' => 'UserController',
        'maincategory' => 'MaincategoryController',
        'subcategory' => 'SubcategoryController',
        'category' => 'CategoryController',
        'brands' => 'BrandController',
        'products' => 'ProductController',
        'banners' => 'BannerController',
        'recycle/users' => 'RecycleUserController',
        'recycle/orders' => 'RecycleOrderController',
        'recycle/contacts' => 'RecycleContactController',
        'recycle/products' => 'RecycleProductController',
        'recycle/customers' => 'RecycleCustomerController',
        'recycle/banners' => 'RecycleBannerController',
    ]);
});

// Admin layout data  compact
View::composer('layouts.admin', function ($view) {
    $orders = App\Order::all();
    $thisMonthTotalOrder = App\Order::thismonth()->count();
    $unreadedMessages = App\Contact::unreaded()->count();
    $contactMessages = App\Contact::latest()->get();
    $totalProduct = App\Product::all()->count();
    $topSaleProduct = App\Product::topsale()->count();
    $draftProduct = App\Product::inactive()->count();
    $stockoutProduct = App\Product::stockout()->count();
    $types = App\Type::all();
    $totalMaincategory = App\Maincategory::all()->count();
    $totalSubcategory = App\Subcategory::all()->count();
    $totalCategory = App\Category::all()->count();
    $view->with('orders', $orders)->with('unreadedMessages', $unreadedMessages)->with('contactMessages', $contactMessages)->with('totalProduct', $totalProduct)->with('topSaleProduct', $topSaleProduct)->with('draftProduct', $draftProduct)->with('stockoutProduct', $stockoutProduct)->with('types', $types)->with('totalMaincategory', $totalMaincategory)->with('totalSubcategory', $totalSubcategory)->with('totalCategory', $totalCategory);
});


Route::get('/ssl/payment','PaymentController@payment')->name('');
Route::post('/payment/success','PaymentController@success')->name('');
Route::post('/payment/failed','PaymentController@failed')->name('');
Route::post('/payment/canceled','PaymentController@canceled')->name('');
