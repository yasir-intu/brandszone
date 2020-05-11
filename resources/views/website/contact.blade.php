@extends('layouts.website')
@section('title', 'Contact Us')
@section('content')

    <!-- satrt contact map area -->
    <section id="contact_map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14610.93858125084!2d90.37954405!3d23.72116825!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1554235496067!5m2!1sen!2sbd" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
    <!-- satrt contact  main content -->
    <section id="contact_main_content">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4">
                    <div class="contact_page_info">
                        <h3>Store information</h3>
                        <ul>
                            <li>
								<div class="row">    
									<div class="col-1">
										<span><i class="icofont-location-pin"></i></span>
									</div>
									<div class="col-10">
										{{$basicinfo->address}}
									</div>
								</div>
							</li>
                            <li>
								<div class="row">    
									<div class="col-1">
										<span><i class="icofont-ui-call"></i></span> 
									</div>
									<div class="col-10">
										Call us: <a href="tel:{{$basicinfo->phone}}">{{$basicinfo->phone}}</a>
									</div>
								</div>
							</li>
                            <li>
								<div class="row">    
									<div class="col-1">		
										<span><i class="icofont-email"></i></span> 
									</div>
									<div class="col-10">	
										Email us: <a href="mailto:{{$basicinfo->email}}">{{$basicinfo->email}}</a>
									</div>
								</div>
							</li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8">
                    <div class="contact_form_form">
                        <form action="{{url('contact')}}" method="post">
                            @csrf

                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name="name" type="text" class="form-control" placeholder="Enter Your Name" value="{{old('name')}}" required="">

                                        @if ($errors->has('name'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6">
                                    <div class="form-group">
                                        <input name="email" type="email" class="form-control" placeholder="Enter Your Email" value="{{old('email')}}" required=""> 

                                        @if ($errors->has('email'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="form-group">
                                        <input name="subject" type="text" class="form-control" placeholder="Enter Your Subject" value="{{old('Subject')}}" required="">

                                        @if ($errors->has('subject'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('subject') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="form-group">
                                        <textarea name="message" class="form-control" required="">{{old('message')}}</textarea>

                                        @if ($errors->has('message'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('message') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
