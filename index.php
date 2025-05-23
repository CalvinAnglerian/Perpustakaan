<?php
include 'Layouts/layout.php';

function printStatus($status)
{
    if ($status == 1) {
        return 'Active';
    } else {
        return 'Inactive';
    }
    return "";
}
ob_start()
?>

<div class="row mt-3 mb-3">
  <h1>Selamat datang di aplikasi perpustakaan</h1>
</div>
<div class="row justify-content-center">
    <div class="col-8 order">
        <img src="https://img.pikbest.com/png-images/20211011/people-in-library-flat-vector-illustration_6140321.png!sw800" alt="" class="w-100"/>
    </div>
</div>
<div class="row">
    <h3>Identitas Pembuat</h1>
</div>
<div class="row">
    <table class="table">
  <thead>
    <tr>
      <th scope="col">Nama</th>
      <th scope="col">NPM</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Jefli Jonathan</td>
      <td>2327240094</td>
    </tr>
    <tr>
      <td>Michael Felix Chandra</td>
      <td>2327240030</td>
    </tr>
    <tr>
      <td>Nicholas Tan</td>
      <td>2327240005</td>
    </tr>
    <tr>
      <td>Calvin Anglerian Susanto</td>
      <td>2327240059</td>
    </tr>
    
  </tbody>
</table>
</div>
<?php

$partial = ob_get_clean();
$layout = new Layout(
    $partial,
    'Halaman home',
    'home'
);

echo $layout->render();
