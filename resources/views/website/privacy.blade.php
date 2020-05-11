@extends('layouts.website')

@section('content')

    
    
    <!-- privacy main content start -->
    <section id="about_main_content">
        <div class="container">
            <div class="row">
                {!! $privacy->description !!}
                
            </div>
        </div>
    </section>
@endsection