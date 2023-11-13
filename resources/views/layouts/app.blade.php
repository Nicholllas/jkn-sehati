<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>@yield('title')</title>

  @stack('prepend-style')
  @include('includes.style')
  @stack('addon-style')

</head>

<body>
    <div class="fab">
        <img src="frontend/images/ic_remove.png" alt="Close">
    </div>

    <div class="box">
        <a href="https://api.whatsapp.com/send/?phone=628118165165&text&type=phone_number&app_absent=0" target="_blank" rel="noopener noreferrer" class="item item1"><img src="frontend/images/icon_float/floating-pandawa.svg" alt="pandawa"></a>
        <a href="https://bpjskes-chika.onx.co.id/" target="_blank" rel="noopener noreferrer" class="item item2"><img src="frontend/images/icon_float/floating-chika.svg" alt="chika"></a>
        <a href="https://widgetvoip-bpjs.netlify.app/" target="_blank" rel="noopener noreferrer" class="item item3"><img src="frontend/images/icon_float/floating-165.svg" alt="165"></a>
    </div>
  @include('includes.navbar')
  @yield('content')
  @include('includes.footer')
  @stack('prepend-script')
  @include('includes.script')
  @stack('addon-script')
</body>
</html>
