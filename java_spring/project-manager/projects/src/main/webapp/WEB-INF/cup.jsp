<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Almarai:wght@300;400;700;800&display=swap" rel="stylesheet">

    <!-- SCRIPTS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.1.3/axios.min.js"></script>
    <title>Document</title>

    <style>
        body {
            font-family: 'Almarai', sans-serif;
        }

        .bg-primary {
            background-color: #8a1538 !important;
            color: white;
        }

        .bg-secondary {
            background-color: #5b0d25 !important;
            color: white;
        }

        #header {
            clip-path: polygon(0% 0%, 100% 0%, 100% 100%, 0% 80%);
            border-bottom: solid 20px #5b0d25;
        }

        #header-background {
            background-image: url("pattern.png");
        }

        #logo-header {
            position: absolute;
            z-index: 999;
            left: 100px;
            top: 60px;
        }

        #logo-img {
            -webkit-filter: drop-shadow(5px 5px 50px #222);
            filter: drop-shadow(5px 5px 30px #222);
        }

        #header-border {
            height: 200px;
            background: #5b0d25;
            position: relative;
            top: -203px;
            z-index: -9;
        }


    </style>
</head>
<body>
    <!-- HEADER -->
    <div id="logo-header">
        <img id="logo-img" src="logo.png" alt="" style="height: 300px;">
    </div>

    <div id="header" style="height: 20rem" class="bg-primary">
        <div id="header-background" style="height: 100%; width: 100%">
            <div style="direction: rtl; font-size: 50px; margin-right: 100px" class="p-5">
                <h1 style="font-weight: 800; font-size: 70px">
                    كأس
                </h1>

                <h1 style="font-weight: 800; font-size: 90px">
                    العالم
                </h1>
            </div>
        </div>
    </div>
    <!-- HEADER -->

    <!-- HEADER BORDER -->
    <!-- <div id="header-border">
    </div> -->
    
    <!-- // HEADER BORDER // -->

    <!-- QATAR WORD -->
    <div class="d-flex justify-content-center"style="margin-top: 30px">
        <img src="qatar-word.png" alt="" style="width: 400px; margin: 0px auto">
    </div>
    <!--// QATAR WORD //-->

    <!-- HEADER IMAGE -->
    <!-- <div>
        <img src="qatar.jpg" style="width: 100%" alt="">
    </div> -->

    <div class="container" style="margin-top: 50px">

        <!-- GROUPS -->
        <div  class="p-5 mt-1">

            <!-- TITLE ROW -->
            <div class="row" style="direction: rtl;">
                <h1>
                    <b>المجموعات</b>
                </h1>
                <hr>
            </div>
            <!--// TITLE ROW //-->

            <!-- STANDINGS ROW -->
            <div class="row" id="standings">

                <!-- GROUP COL -->
                <div class="col-lg-6">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

                <!-- GROUP COL -->
                <div class="col-lg-6">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

                <!-- GROUP COL -->
                <div class="col-lg-6 mt-3">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

                <!-- GROUP COL -->
                <div class="col-lg-6 mt-3">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

                <!-- GROUP COL -->
                <div class="col-lg-6 mt-3">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

                <!-- GROUP COL -->
                <div class="col-lg-6 mt-3">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>Group (A)</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2">
                                W
                            </div>
                            <div class="col-lg-2">
                                L
                            </div>
                            <div class="col-lg-2">
                                D
                            </div>
                            <div class="col-lg-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->

                            <!-- TEAM -->
                            <li class="list-group-item">
                                <div class="row">

                                    <!-- TEAM -->
                                    <div class="col-lg-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                alt=""
                                                style="width: 40px; height: 40px"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">KSA</h5>
                                    </div>
                                    <!--// TEAM //-->

                                    <!-- WIN -->
                                    <div class="col-lg-2">
                                        2
                                    </div>
                                    <!--// WIN //-->

                                    <!-- LOSS -->
                                    <div class="col-lg-2">
                                        1
                                    </div>
                                    <!--// LOSS //-->

                                    
                                    <div class="col-lg-2">
                                        0
                                    </div>

                                    <div class="col-lg-2">
                                        <b>7</b>
                                    </div>
                                </div>
                                
                            </li>
                            <!--// TEAM //-->
                        </ul>
                    </div>
                </div>
                <!--// GROUP COL //-->

            </div>
        </div>
        <!--// GROUPS //-->

        <!-- MATCHES -->
        <div id="matches " class="mt-5">
            <div class="row" style="margin:0px">
                <h1 style="direction: rtl;">
                    <b>المباريات</b>
                </h1>
                <hr>

                <div class="row mb-5" id="matches">

                    <!-- MATCH COL -->
                    <div class="col-lg-12" >

                        <div class="card shadow rounded-pill mt-5" style="overflow: hidden">
                            <!-- <div class="card-header bg-primary" style="text-align: center">
                                <b>Group (A)</b>
                            </div> -->

                            <!-- MATCH CARD -->
                            <div class="card-body p-0">
                                <div class="row">

                                    <!-- FIRST TEAM COL -->
                                    <div class="col-lg-3 bg-primary d-flex flex-direction-column justify-content-center align-items-center" style="border-right: solid 5px #5b0d25;">
                                        <div class="d-flex align-items-center justify-content-center" style="text-align: center; margin: auto 0">
                                        
                                            <div>
                                                <div class="flag">
                                                    <img 
                                                        class="rounded-circle border border-2" 
                                                        src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                        alt=""
                                                        style="width: 40px; height: 40px"
                                                    >
                                                </div>
                                                <h5 style="margin:auto 4px">KSA</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// FIRST TEAM COL //-->

                                    <!-- VERSUS COL -->
                                    <div class="col-lg-6" style="text-align: center">
                                        <h6>group (A)</h6>
                                        <h1>X</h1>                                        
                                        <h6>18:30</h6>
                                    </div>
                                    <!--// VERSUS COL //-->


                                    <!-- SECOND TEAM COL -->
                                    <div class="col-lg-3 bg-primary d-flex flex-direction-column justify-content-center align-items-center" style="border-left: solid 5px #5b0d25;">
                                        <div class="d-flex align-items-center justify-content-center" style="text-align: center; margin: auto 0">
                                        
                                            <div>
                                                <div class="flag">
                                                    <img 
                                                        class="rounded-circle border border-2" 
                                                        src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/560px-Flag_of_Saudi_Arabia.svg.png" 
                                                        alt=""
                                                        style="width: 40px; height: 40px"
                                                    >
                                                </div>
                                                <h5 style="margin:auto 4px">KSA</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// SECOND TEAM COL //-->
                                </div>
                            </div>
                            <!--// MATCH CARD //-->
                        </div>
                    </div>
                    <!--// MATCH COL //-->
    
                </div>
            </div>
        </div>
        <!--// MATCHES //-->
    </div>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<script>

    const token = "1f03d446703e470ba3bc872d47f6787c";
    let baseUrl = "https://api.football-data.org/v4"

    function getStandings()
    {
        const url = `${baseUrl}/competitions/2000/standings`
        axios.get(url, {
            headers: {
                "X-Auth-Token": `${token}`
            }
        })
        .then((response) => {
            
            const standings = response.data.standings

            document.getElementById("standings").innerHTML = ""
            for(standing of standings)
            {
                let tableContent = ``

                for(row of standing.table)
                {
                    tableContent += `
                        <li class="list-group-item">
                                <div class="row">
                                    <!-- TEAM & KSA -->
                                    <div class="col-lg-4 col-sm-4 d-flex align-items-center justify-content-center" style="text-align: center;">
                                        
                                        <span class="flag">
                                            <img 
                                                class="rounded-circle border border-2" 
                                                src="${row.team.crest}" 
                                                alt=""
                                                style="width: 40px; height: 40px; object-fit: cover"
                                            >
                                        </span>
                                        <h5 style="margin:auto 4px">${row.team.tla}</h5>
                                    </div>
                                    <!--// TEAM & KSA //-->
                                    <!-- WIN -->
                                    <div class="col-lg-2 col-sm-2">
                                        ${row.won}
                                    </div>
                                    <!--// WIN //-->
                                    <!-- LOSS -->
                                    <div class="col-lg-2 col-sm-2">
                                        ${row.lost}
                                    </div>
                                    <!--// LOSS //-->
                                    
                                    <div class="col-lg-2 col-sm-2">
                                        ${row.draw}
                                    </div>
                                    <div class="col-lg-2 col-sm-2">
                                        <b>${row.points}</b>
                                    </div>
                                </div>
                                
                        </li>
                        <!--// TEAM //-->
                            `
                }

                const content = `
                <div class="col-lg-6" style="margin-top: 20px">
                    <div class="card shadow border-none">
                        <div class="card-header bg-primary" style="text-align: center">
                            <b>${standing.group}</b>
                        </div>
                        <div class="row m-0 bg-secondary">
                            <div class="col-lg-4 col-sm-4" style="text-align: center;">
                                team
                            </div>
                            <div class="col-lg-2 col-sm-2">
                                W
                            </div>
                            <div class="col-lg-2 col-sm-2">
                                L
                            </div>
                            <div class="col-lg-2 col-sm-2">
                                D
                            </div>
                            <div class="col-lg-2 col-sm-2">
                                Pts
                            </div>
                        </div>
                        <ul class="list-group list-group-flush">
                                ${tableContent}
                        </ul>
                    </div>
                </div>
                `
                document.getElementById("standings").innerHTML += content
            }
        })
    }

    function getMatches()
    {
        const url = `${baseUrl}/competitions/2000/matches`

        console.log(url, token)
        axios.get(url, {
            headers: {
                "X-Auth-Token": `${token}`
            }
        })
        .then((response) => {
            const matches = response.data.matches
            
            document.getElementById("matches").innerHTML = ""

            for(match of matches)
            {
                const homeTeam = match.homeTeam
                const awayTeam = match.awayTeam

                if(homeTeam.name == null)
                {
                    continue
                }

                const comp = match.competition
                const dateUtc = match.utcDate
                const matchTime = new Date(dateUtc)
                const dateString = matchTime.getUTCFullYear() +"/"+ (matchTime.getUTCMonth()+1) +"/"+ matchTime.getUTCDate() + " " + matchTime.getUTCHours() + ":" + matchTime.getUTCMinutes() + ":" + matchTime.getUTCSeconds()
                

                
                const content = `
                    <!-- MATCH COL -->
                    <div class="col-lg-12" >
                        <div class="card shadow rounded-pill mt-5" style="overflow: hidden">                            
                            <!-- MATCH CARD -->
                            <div class="card-body p-0">
                                <div class="row">
                                    <!-- FIRST TEAM COL -->
                                    <div class="col-lg-3 bg-primary d-flex flex-direction-column justify-content-center align-items-center" style="border-right: solid 5px #5b0d25;">
                                        <div class="d-flex align-items-center justify-content-center" style="text-align: center; margin: auto 0">
                                        
                                            <div>
                                                <div class="flag">
                                                    <img 
                                                        class="rounded-circle border border-2" 
                                                        src="${homeTeam.crest}" 
                                                        alt=""
                                                        style="width: 40px; height: 40px; object-fit: cover"
                                                    >
                                                </div>
                                                <h5 style="margin:auto 4px">${homeTeam.tla}</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// FIRST TEAM COL //-->
                                    <!-- VERSUS COL -->
                                    <div class="col-lg-6" style="text-align: center">
                                        <div class="row">
                                            <div class="col-lg-4" style="margin: auto 0px">
                                                <h3>
                                                    ${match.score.fullTime.home}
                                                </h3>
                                            </div>
                                            <div class="col-lg-4">
                                                <h6>${match.group}</h6>
                                                <h1>X</h1>                                        
                                                <h6>${dateString}</h6>
                                            </div>
                                            <div class="col-lg-4" style="margin: auto 0px">
                                                <h3>
                                                    ${match.score.fullTime.away}
                                                </h3>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// VERSUS COL //-->
                                    <!-- SECOND TEAM COL -->
                                    <div class="col-lg-3 bg-primary d-flex flex-direction-column justify-content-center align-items-center" style="border-left: solid 5px #5b0d25;">
                                        <div class="d-flex align-items-center justify-content-center" style="text-align: center; margin: auto 0">
                                        
                                            <div>
                                                <div class="flag">
                                                    <img 
                                                        class="rounded-circle border border-2" 
                                                        src="${awayTeam.crest}" 
                                                        alt=""
                                                        style="width: 40px; height: 40px; object-fit: cover"
                                                    >
                                                </div>
                                                <h5 style="margin:auto 4px">${awayTeam.tla}</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <!--// SECOND TEAM COL //-->
                                </div>
                            </div>
                            <!--// MATCH CARD //-->
                        </div>
                    </div>
                    <!--// MATCH COL //-->
                    
                `
                document.getElementById("matches").innerHTML += content
            }
        })
    }

    getStandings()
    getMatches()
</script>
</html>

