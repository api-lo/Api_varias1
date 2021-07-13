<!DOCTYPE html>
<html>
    <head>
        <title>Google Login</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
              crossorigin="anonymous">
        <link href="recursos/Estilos.css" rel="stylesheet" type="text/css"/>
        
    <body class="text-center">
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>       
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-analytics.js"></script>        
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-auth.js"></script>
        <script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-firestore.js"></script>

        <script type="text/javascript" >
            var firebaseConfig = {
                apiKey: "AIzaSyDkJdyh2ZPJnNXq1_nxQ178PXpHsisKr2Q",
                authDomain: "apis-c62e2.firebaseapp.com",
                databaseURL: "https://apis-c62e2.firebaseio.com",
                projectId: "apis-c62e2",
                storageBucket: "apis-c62e2.appspot.com",
            };
            firebase.initializeApp(firebaseConfig);
        </script>
        
        
        
        <div class="container">
            <div class="login" >
                <div class="row p-5">
                    <div class="col-12">
                        
                    </div>
                    <div class="col-12 mt-5">
                        <label>Email o UserName</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="col-12 mt-5">
                        <label>Password</label>
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
                            <div class="col-4">
                                <input  type="submit" class="btn btn-light imgM ajuste" value="" />
                            </div>
                            <div class="col-4">
                                 <input  type="submit" onclick="" class="btn btn-light imgY ajuste" value="" />
                            </div>
                            <div class="col-4">
                                 <input  type="submit" onclick="" class="btn btn-light imgP ajuste " value="" />
                            </div>
                        </div>
                    </div>
                    
                </div>  
            </div>
            
        </div>       
                
        <script type="text/javascript" >
            function iniciarGoogle()
            {
                var provider = new firebase.auth.GoogleAuthProvider();

                firebase.auth()
                        .signInWithPopup(provider)
                        .then((result) => {
                            var credential = result.credential;
                            var token = credential.accessToken;
                            var user = result.user;
                            console.log(token);
                            console.log(credential);
                            console.log(user);

                            location.href = "Principal.jsp";

                        }).catch((error) => {                   
                    var errorCode = error.code;
                    var errorMessage = error.message;                    
                    var email = error.email;                    
                    var credential = error.credential;
                    // ...
                });
            }
           
            function loginWithGithub() {

        var provider = new firebase.auth.GithubAuthProvider();       
        firebase.auth().setPersistence(firebase.auth.Auth.Persistence.LOCAL)
                        .then(() => {
                            var provider = new firebase.auth.GithubAuthProvider();
//                            location.href = "Principal.jsp";
                            return  firebase.auth().signInWithPopup(provider);
                             
                        })
                        .catch((error) => {
                            // Handle Errors here.
                            var errorCode = error.code;
                            var errorMessage = error.message;
                        });
            }
            
            
            
    var loginWithFacebook= function(){
        var provider = new firebase.auth.FacebookAuthProvider();
        firebase.auth().signInWithPopup(provider).then(function(result){
            var token=result.credential.accessToken;
            var user=result.user;
        }).catch(function(error){
            var errorCode=error.code;
            var errorMessage=error.message;
            var email=error.email;
            var credential=error.credential;
            
            console.log(errorMessage);
        });}

//            firebase.auth().onAuthStateChanged((user) => {
//                if (user) {
//                    updateUser(user)
//                } else {
//                }
//            });
        </script>
       
        
        


    </body>
</html>