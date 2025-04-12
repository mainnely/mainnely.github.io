<?php

$page = "groups";

if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case "groups":
            $page = "groups";
            break;
        case "members":
            $page = "members";
            break;
        case "discography":
            $page = "discography";
            break;
        default:
            header("Location: ?page=groups");
            break;
    }
} else {
    header("Location: ?page=groups");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>A02</title>
    <link rel="icon" href="../../img/Logo.png">
    <link rel="stylesheet" href="../../style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<style>
    .groups,
    .members,
    .discog {
        background-color: #FEFEBE;
        color: #171717 !important;
        font-size: xx-large;
    }

    a {
        text-decoration: none !important;
        color: #171717 !important;
    }

    html {
        scroll-behavior: smooth;
    }

    .bpImg,
    .ikonImg,
    .treasureImg {
        max-width: 400px !important;
        height: auto;
        display: block;
    }

    .btnGroup,
    .btnMembers,
    .btnDiscog {
        font-size: 1rem;
    }

    @media (min-width: 768px) {

        .btnGroup,
        .btnMembers,
        .btnDiscog {
            font-size: 2rem;
        }
    }

    @media (min-width: 992px) {

        .btnGroup,
        .btnMembers,
        .btnDiscog {
            font-size: 2.5rem;
        }
    }

    .sideTitle {
        font-size: 1.5rem;
      
    }

    @media (min-width: 768px) {
        .sideTitle {
            font-size: 2.5rem;
         
        }
    }

    @media (min-width: 992px) {
        .sideTitle {
            font-size: 3.5rem;
            
        }
    }
</style>

<body>
    <!-- Section of Navbar -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary shadow-lg p-0 mb-4">
        <div class="container-fluid nav" style="background-color: #FFEE8C; position: fixed; z-index: 1; top: 0;">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="ms-auto">
                    <ul class="navbar-nav pb-4">
                        <li class="nav-item">
                            <a class="nav-link naviHome" style="color: #171717 !important;" aria-current="page"
                                href="../../#home">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link naviProjects" style="color: #171717 !important;"
                                href="../../#projects">PROJECTS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link naviAbout" style="color: #171717 !important;"
                                href="../../#about">ABOUT</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!-- MVC Content Here -->

    <div class="container-fluid mt-5 pt-5 px-auto">
        <div class="row">
            <div class="col-4 col-md-4 col-lg-4 mt-3">
                <div class="card shadow p-4"
                    style="height:85vh; overflow-y:hidden; background-color: rgb(246, 249, 251);">
                    <div class="sideTitle display-4 text-center py-3 mb-4 fw-bold">
                        My K-POP Faves
                    </div>
                    <div class="card groups p-3 mb-5 text-center shadow rounded-5">
                        <a href="?page=groups" class="btnGroup d-block">GROUPS</a>
                    </div>
                    <div class="card members p-3 mb-5 text-center shadow rounded-5">
                        <a href="?page=members" class="btnMembers d-block">MEMBERS</a>
                    </div>

                    <div class="card discog p-3 mb-5 text-center shadow rounded-5">
                        <a href="?page=discography" class="btnDiscog  d-block">DISCOGRAPHY</a>
                    </div>
                </div>
            </div>

            <div class="col-8 col-md-8 col-lg-8 mt-3 ">
                <div class="card shadow p-3"
                    style="height:85vh; overflow-y:auto; overflow-x: hidden; background-color: rgb(246, 249, 251);">

                    <?php include("shared/" . $page . ".php"); ?>

                </div>
            </div>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>