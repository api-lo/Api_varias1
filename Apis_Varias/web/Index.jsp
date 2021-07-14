<!DOCTYPE html>
<html>
    <head>
        <title>Google Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
              crossorigin="anonymous">
        <link href="recursos/Estilos.css" rel="stylesheet" type="text/css"/>

    <body class="text-center" >
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>       
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-analytics.js"></script>        
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-firestore.js"></script> 
   
        <div class="container">
            <div id="inf_personal" class="p-3">
                <div class="row">
                    <div class="col-12 mt-5 mb-5">                                                
                        <img  id="foto" src="" width="100" height="100" />                        
                    </div>
                    <div class="col-12 mt-2">
                        <label style="position: relative; float: left;" >Nombre:</label>
                        <input id="nombre" type="text" disabled="" class="form-control" >
                    </div>
                    <div class="col- mt-2">
                        <label style="position: relative; float: left;" >Email:</label>
                        <input id="email" type="text" disabled="" class="form-control" >
                    </div>
                    <div class="col-12 mt-2">
                        <label style="position: relative; float: left;" >Inicio con:</label>
                        <input id="inicio" type="text" disabled="" class="form-control" >
                    </div>
                    <div class="col-12 mt-2">
                        <label style="position: relative; float: left;" >Verificado:</label>
                        <input id="estado" type="text" disabled="" class="form-control" >
                    </div>
                    <div class="col-12 mt-5">
                        <input style="width: 100%" onclick="location.reload();" class="btn btn-dark" type="button" value="Cerror Sesión" />
                    </div>
                </div>
            </div>
            
            <div id="login" class="login" >
                <div class="row p-5">
                    <div class="col-12">
                        <img width="100" height="100" src="https://res.cloudinary.com/durxpegdm/image/upload/v1626218830/logos/flame-bitcoin-p2p-1_phksw3.png"/>

                    </div>
                    <div class="col-12 mt-2">
                        <label style="font-weight: bold " >Email o UserName</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-12 mt-3">
                        <label  style="font-weight: bold " >Password</label>
                        <input type="password" class="form-control">
                    </div>
                    <div class="col-12 mt-5">
                        <input style="width: 100%" class="btn btn-block btn-dark" type="button" value="Iniciar Sesión" />
                    </div>

                    <div class="col-12 mt-5">
                        <div class="row">
                            <div class="col-4">
                                <input  type="submit" class="btn btn-light imgF ajuste" value="" onclick="loginWithFacebook()" />
                            </div>
                            <div class="col-4">
                                <input  type="submit" onclick="loginWithGithub()" class="btn btn-light imgG ajuste" value="" />
                            </div>
                            <div class="col-4">
                                <input  type="submit" onclick="iniciarGoogle()" class="btn btn-light imgGo ajuste" value="" />
                            </div>
                        </div>
                    </div>

                    <div class="col-12 mt-1">
                        <div class="row">
                            <div class="col-12">
                                <input  type="submit" onclick="iniciaryahoo()" class="btn btn-light imgY ajuste"  value="" />
                            </div>
<!--                            <div class="col-4">
                                <input  type="submit" onclick="" class="btn btn-light imgP ajuste " value="" />
                            </div>-->
                        </div>
                    </div>

                </div>  
            </div>

        </div>       
             <script src="Metodos.js" type="text/javascript"></script>
    </body>
</html>