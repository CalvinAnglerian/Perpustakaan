<?php
include '../Layouts/layout.php';

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
    <a href="daftar.php" class="btn btn-primary w-25">Tambah Bahasa</a>
</div>
<div class="row mt-3 mb-3">
    <h3>List Bahasa</h3>
</div>
<div class="row mt-3 mb-3">
    <table class="table">
        <thead>
            <tr>
                <th scope="col">no</th>
                <th scope="col">Bahasa</th>
                <th scope="col">Status</th>
                <th scope="col">Created at</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $perintah  = "SELECT * FROM tb_bahasa";
            $hasil = mysqli_query($koneksi, $perintah);
            $i = 1;

            foreach ($hasil as $data) {
            ?>

                <tr>
                    <th scope="row"><?= $i ?></th>
                    <td><?= $data["Nama_Bahasa"] ?></td>
                    <td><?= printStatus($data["Status"]) ?? "" ?></td>
                    <td><?= $data["Created_At"] ?></td>
                    <td><a class="btn btn-warning" href=<?= "ubah.php?id=" . $data["ID_Bahasa"] ?>>Ubah</a></td>
                </tr>

            <?php
                $i++;
            }
            ?>
        </tbody>
    </table>
</div>

<?php

$partial = ob_get_clean();
$layout = new Layout(
    $partial,
    'List Bahasa',
    'bahasa'
);

echo $layout->render();
