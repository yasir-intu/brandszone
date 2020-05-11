    @if(Session::has('success'))
    <script>
        $.toast({
            heading: 'Success',
            text: '{{session("success")}}',
            position: 'top-center',
            // loaderBg:'#ff5050',
            bgColor: '#217B18',
            icon: 'success',
            hideAfter: 2000, 
            stack: 10
        });
    </script>
    @endif
    @if(Session::has('error'))
    <script>
        $.toast({
            heading: 'Error',
            text: '{{session("error")}}',
            position: 'top-right',
            // loaderBg:'#ff5050',
            bgColor: '#222',
            icon: 'error',
            hideAfter: 2000, 
            stack: 6
        });
    </script>
    @endif