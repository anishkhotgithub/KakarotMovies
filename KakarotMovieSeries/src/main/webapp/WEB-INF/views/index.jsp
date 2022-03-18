<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Allerta+Stencil&display=swap');

body {
    background:linear-gradient(to right, #8E0E00 , #1F1C18);
}

.navbar-nav>li>a {
    text-transform: uppercase;
    font-size: 12px;
    margin-right: 20px;
    color: #fff
}

.navbar-toggler {
    padding: .20rem .50rem;
    font-size: 1.25rem;
    line-height: 1;
    background-color: transparent;
    border: 1px solid white
}

.nav-link {
    color: #fff !important
}

/* .wrapper {
    width: 100%;
    position: absolute;
    height: 100%;
    background-color: #000;
    clip-path: polygon(81% 0, 100% 0, 100% 50%, 100% 100%, 71% 100%);
    transition: 1s all
} */

.navbar-brand {
    color: #fff;
    font-family: 'Allerta Stencil', sans-serif;
    margin-bottom: 4px;
    font-size: 27px
}

.navbar-red:hover .wrapper {
    clip-path: polygon(81% 0, 100% 0, 100% 50%, 100% 100%, 65% 100%)
}

.navbar-brand:hover {
    color: #fff
}

.navbar-red {
    background:linear-gradient(to right, #8E0E00 , #1F1C18);
    color: #fff
}

.all-show {
    z-index: 10
}
</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-red navbar-dark">
        <div class="container-fluid all-show"> <a class="navbar-brand" href="#">KAkAroT <i class="fa fa-tripadvisor"></i></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link active" aria-current="page" href="/movies">Movie</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="#">Series</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="#">Anime</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="/movies/addmovies">Add Movies</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="#">Add Series</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="#">Add Anime</a> </li>
                    <li class="nav-item nav-item pl-4 pl-md-0 ml-0 ml-md-4"> <a class="nav-link" href="#"><i class="fa fa-search"></i></a> </li>
                </ul>
                <div class="d-flex flex-column sim"> </div>
            </div>
        </div>
    </nav>
</body>
</html>