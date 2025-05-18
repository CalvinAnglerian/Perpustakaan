<?php
include '../Layouts/layout.php';


ob_start()

?>

<div class="row mt-3 mb-3 text-capitalize">
    <a href="index.php" class="nav-link text-gray">Click back | List Penulis </a>
</div>

<div class="row mt-3 mb-3 justify-content-center">
    <div class="card p-0">
        <form action="proses/ProsesDaftar.php" method="POST">

            <div class="card-header">
                <h3>Form Pendaftaran Penulis</h3>
            </div>
            <div class="card-body">
                <div class="form-floating mb-3">
                    <input type="text" id="nama" name="nama" class="form-control" placeholder="Nama Penulis..." required />
                    <label for="nama" class="form-floatingInput">Nama Penulis</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="email" id="email" name="email" class="form-control" placeholder="Nama Penulis..." required />
                    <label for="email" class="form-floatingInput">Email</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="text" id="no_tlp" name="no_tlp" class="form-control" placeholder="Nama Penulis..." required />
                    <label for="no_tlp" class="form-floatingInput">No Telephon</label>
                </div>
            </div>

            <div class="card-footer">
                <button type="reset" class="btn btn-danger">Clear</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>

        </form>
    </div>
</div>

<?php

$partial = ob_get_clean();
$layout = new Layout(
    $partial,
    'Daftar Penulis',
    'penulis'
);

echo $layout->render();

