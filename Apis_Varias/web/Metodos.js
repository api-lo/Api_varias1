var firebaseConfig = {
    apiKey: "AIzaSyDkJdyh2ZPJnNXq1_nxQ178PXpHsisKr2Q",
    authDomain: "apis-c62e2.firebaseapp.com",
    databaseURL: "https://apis-c62e2.firebaseio.com",
    projectId: "apis-c62e2",
    storageBucket: "apis-c62e2.appspot.com"
};

firebase.initializeApp(firebaseConfig);
ocultar();
ocultar();

function ocultar()
{
    var x = document.getElementById("login");
    var xy = document.getElementById("inf_personal");

    if (x.style.display === "none") {
        x.style.display = "block";
        xy.style.display = "none";
    } else {
        x.style.display = "none";
        xy.style.display = "block";
    }
}

function iniciaryahoo()
{
    var provider = new firebase.auth.OAuthProvider('yahoo.com');
    firebase.auth().signInWithPopup(provider)
            .then((result) => {
                const credential = result.credential;
                var accessToken = credential.accessToken;
                var idToken = credential.idToken;
                 console.log(result.user);
                console.log("enviar");
//                var user = result.user;
//                console.log(user);
                ocultar();
                document.getElementById("nombre").value = "Pedro Moreira";
                document.getElementById("email").value = "sada";
                document.getElementById("foto").src = "https://res.cloudinary.com/durxpegdm/image/upload/v1614413165/llr1gnuouvlx1pgeiecy.jpg";
                document.getElementById("inicio").value = "Yahoo!";
                document.getElementById("estado").value = result.user.emailVerified;

            })
            .catch((error) => {
                    console.log("asd");
            });
}

function iniciarGoogle()
{
    var provider = new firebase.auth.GoogleAuthProvider();
    firebase.auth()
            .signInWithPopup(provider)
            .then((result) => {
                var credential = result.credential;
                var token = credential.accessToken;
                var user = result.user;
                console.log(user);
                //cambiarDiseño();
                ocultar();
                document.getElementById("nombre").value = user.displayName;
                document.getElementById("email").value = user.email;
                document.getElementById("foto").src = user.photoURL;
                document.getElementById("inicio").value = "GOOGLE";
                document.getElementById("estado").value = user.emailVerified;

            }).catch((error) => {
        var errorCode = error.code;
        var errorMessage = error.message;
        var email = error.email;
        var credential = error.credential;
        // ...
    });
}

function loginWithGithub() {

    firebase.auth().setPersistence(firebase.auth.Auth.Persistence.LOCAL)
            .then((resul) => {
                var provider = new firebase.auth.GithubAuthProvider();
                return  firebase.auth().signInWithPopup(provider);
            })
            .catch((error) => {

                var errorCode = error.code;
                var errorMessage = error.message;
            });

    firebase.auth().onAuthStateChanged((usera) => {
        if (usera) {
            console.log(usera);
            ocultar();
            document.getElementById("nombre").value = usera.displayName;
            document.getElementById("email").value = usera.email;
            document.getElementById("foto").src = usera.photoURL;
            document.getElementById("inicio").value = "GitGub";
            document.getElementById("estado").value = usera.emailVerified;
        } else {
        }
    });

}
var loginWithFacebook = function () {
    var provider = new firebase.auth.FacebookAuthProvider();
    firebase.auth().signInWithPopup(provider).then(function (result) {
        var token = result.credential.accessToken;
        var user = result.user;
        console.log(user);
        ocultar();
        document.getElementById("nombre").value = user.displayName;
        document.getElementById("email").value = user.email;
        document.getElementById("foto").src = user.photoURL;
        document.getElementById("inicio").value = "Facebook";
        document.getElementById("estado").value = user.emailVerified;

    }).catch(function (error) {
        var errorCode = error.code;
        var errorMessage = error.message;
        var email = error.email;
        var credential = error.credential;

        console.log(errorMessage);
    });
}
