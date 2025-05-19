<?php


class Navbar
{
    private string $activeName;

    private array $menu;


    public function __construct($activeName)
    {
        $basePath = "http://localhost/perpustakaan";
        $this->menu = [
            [
                "label" => "home",
                "url" => $basePath . "/index.php",
            ],
            [
                "label" => "bahasa",
                "url" => $basePath . "/bahasa/index.php",
            ],
            [
                "label" => "kategori buku",
                "url" => $basePath . "/category/index.php",
            ],
            [
                "label" => "penerbit",
                "url" => $basePath . "/penerbit/index.php",
            ],
            [
                "label" => "penulis",
                "url" => $basePath . "/penulis/index.php",
            ],
            [
                "label" => "buku",
                "url" => $basePath . "/buku/index.php",
            ],
            [
                "label" => "anggota",
                "url" => $basePath . "/anggota/index.php",
            ],
            [
                "label" => "peminjaman buku",
                "url" => $basePath . "/peminjaman-buku/index.php",
            ],
            [
                "label" => "riwayat peminjaman",
                "url" => $basePath . "/riwayat-peminjaman/index.php",
            ],

        ];
        $this->activeName = $activeName;
    }

    private function getActiveName(string $label): string
    {
        if (strtolower($label) == strtolower($this->activeName)) {
            return "active";
        }
        return "";
    }
    private function printMenu()
    {
        $html = '';
        foreach ($this->menu as $item) {
            $active = $this->getActiveName($item['label']);
            $html .= <<<HTML
            <li class="nav-item text-capitalize">
                <a class="nav-link $active" aria-current="page" href="{$item['url']}">{$item['label']} </a>
            </li>
        HTML;
        }
        return $html;
    }

    public function showNavbar(): string
    {

        return <<<HTML
            <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
                <div class="container">
                    <a class="navbar-brand" href="index.php">Perpustakaan</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                          {$this->printMenu()}
                        </ul>
                    </div>
                </div>
            </nav>
        HTML;
    }
}
