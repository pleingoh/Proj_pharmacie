$(document).ready(function() {

    //test user connected

    if (localStorage.getItem('user')) {
        $('#user').empty().append(localStorage.getItem('user'));
        $('#compte_off').css('display', 'none');
        $('#compte_on').css('display', 'block');
    } else {
        $('#compte_off').css('display', 'block');
        $('#compte_on').css('display', 'none');
    }

    //sign_out
    $('#sign-out').click(function() {
        localStorage.clear();
        $('#compte_off').css('display', 'block');
        $('#compte_on').css('display', 'none');
        alert('Déconnexion');
        window.location.href = "index.html";
    });


    setInterval(function() {
        $('#logo-').removeClass('animated shake');
        $('#logo-').addClass('animated pulse');
    }, 1000);
    setInterval(function() {
        $('#logo-').removeClass('animated pulse');
        $('#logo-').addClass('animated shake');
    }, 2000);

    // $('#find').click(function() {
    //     window.location.href = "liste-commerce.html";
    // })
    $('#logo').click(function() {
        window.location.href = "index.php";
    })

    $('#start_button').click(function() {
        $(this).css('display', 'none');
        $('#stop_button').css('display', 'block');
    })
    $('#stop_button').click(function() {
        $(this).css('display', 'none');
        $('#start_button').css('display', 'block');
    });

    //hide input utilisateur/commercant
    $('select[name=categorie]').change(function() {
        var categorie = $(this).val();
        $('#form').fadeOut();
        $('#confirmer').fadeOut();
        $('#service').fadeOut();
        $('#photoservice').fadeOut();
        $('#prixservice').fadeOut();
        $('#coordonnees').fadeOut();
        $('#password').fadeOut();

        if (categorie == "Utilisateur") {
            $('#form').fadeIn();
            $('#confirmer').fadeIn();
            $('#password').fadeIn();
            $('#photo').hide();
            $('#service').hide();
            $('#photoservice').hide();
            $('#prixservice').hide();
            $('#coordonnees').hide();
            $('#commune').hide();
        }
        if (categorie == "Commerçant") {
            $('#form').fadeIn();
            $('#confirmer').fadeIn();
            $('#photo').fadeIn();
            $('#service').fadeIn();
            $('#photoservice').fadeIn();
            $('#prixservice').fadeIn();
            $('#coordonnees').fadeIn();
            $('#password').fadeIn();
            $('#commune').fadeIn();
        }
    });


    //submit
    $('#submit').click(function() {


        var nomprenoms = $('input[name=nomprenoms]').val();
        var sexe = $('input[name=sexe]').val();
        var numero = $('input[name=numero]').val();
        var service = $('select[name=service]').val();
        var prixservice = $('input[name=prixservice]').val();
        var lat = $('input[name=lat]').val();
        var lng = $('input[name=lng]').val();
        var commune = $('select[name=commune]').val();
        // var photoservice = $('input[name=photoservice]').val();

        if (nomprenoms != "" & sexe != "" & numero != "") {

            $.ajax({
                url: 'php/enregistrement.php',
                type: 'get',
                // dataType: 'json',
                data: { 'query': 'sign_in_commercant', 'nomprenoms': nomprenoms, 'sexe': sexe, 'numero': numero, 'service': service, 'prixservice': prixservice, 'lat': lat, 'lng': lng, 'commune': commune },
                success: function(json) {
                    swal({ title: "Félicitation !", text: json, type: "success", confirmButtonText: "OK" }, function() {
                        window.location.href = "index.html";
                    });
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    swal({ title: "Refusé !", text: "Une erreur s\'est produite lors de l\'enregistrement. Veuillez réessayer plus tard ", type: "error" });
                }
            });

        } else {
            swal({ title: "Refusé !", text: "Veuillez renseigner tous les champs", type: "error" });
        }
    });


    //submit_connexion
    $('#submit_connexion').click(function() {
        var numero = $('input[name=numero]').val();
        var password = $('input[name=password]').val();

        if (numero != "" && password != "") {
            $.ajax({
                url: 'php/enregistrement.php',
                type: 'get',
                // dataType: 'json',
                data: { 'query': 'sign_up', 'numero': numero, 'password': password },
                success: function(json) {

                    if (json == 0) {
                        alert('Coordonnées incorrectes / compte inexistant !');
                    } else {
                        var user = json.split(',')[0].split(' ')[1];
                        var categorieuser = json.split(',')[1];
                        localStorage.setItem('user', user);
                        localStorage.setItem('categorieuser', categorieuser);
                        alert('Connexion réussie');
                        window.location.href = "index.html";
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    swal({ title: "Refusé !", text: "Une erreur s\'est produite. Veuillez réessayer plus tard", type: "error" });
                }
            });
        } else {
            alert('Veuillez renseigner tous les champs !');
        }


    });


    //search
    $('#find').click(function() {

        var categorie = $('select[name=commune]').val();
        var commune = $('select[name=ville]').val();
        var q = $('input[name=q]').val();

        if (q != "") {
            localStorage.setItem('commune', commune);
            localStorage.setItem('ville', ville);
            localStorage.setItem('q', q);
            window.location.href = "liste-commerce.html";
        } else {
            swal({ title: "Refusé !", text: "Veuillez renseigner votre recherche", type: "error" });
        }


    });

    $('#final_span').keyup(function() {

        var q = $(this).val();

        if (q != "") {
            $.ajax({
                url: 'php/enregistrement.php',
                type: 'get',
                data: { 'query': 'prop_q', 'q': q },
                success: function(json) {
                    if (json != "") {
                        $('#ulList').empty().append(json);
                        $('#ulListQ').fadeIn();
                    } else {
                        $('#ulListQ').fadeOut();
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    swal({ title: "Refusé !", text: "Une erreur s\'est produite. Veuillez réessayer plus tard", type: "error" });
                }
            });
        } else {
            $('#ulListQ').fadeOut();
        }
    });

});

function addQ(q) {
    $('#final_span').empty().val(q);
    $('#ulListQ').fadeOut();
}



//webkitSpeechRecognition

var final_transcript = '';
var recognizing = false;

if ('webkitSpeechRecognition' in window) {

    var recognition = new webkitSpeechRecognition();

    recognition.continuous = true;
    recognition.interimResults = true;

    recognition.onstart = function() {
        recognizing = true;
    };

    recognition.onerror = function(event) {
        console.log(event.error);
    };

    recognition.onend = function() {
        recognizing = false;
    };

    recognition.onresult = function(event) {
        var interim_transcript = '';
        $('#final_span').empty();
        for (var i = event.resultIndex; i < event.results.length; ++i) {
            if (event.results[i].isFinal) {
                final_transcript += event.results[i][0].transcript;
            } else {
                interim_transcript += event.results[i][0].transcript;
                document.getElementById("final_span").value = interim_transcript;

            }
        }
        console.log(final_transcript)
        document.getElementById("final_span").value = final_transcript;
        localStorage.setItem('q', final_transcript);
        setTimeout(function() {
            swal({ title: "OK !", text: "Votre recherche est en cours de traitement . . .", type: "success", confirmButtonText: "OK" });
            window.location.href = "liste-commerce.html";
        }, 2000);
    };
}

var two_line = /\n\n/g;
var one_line = /\n/g;

function linebreak(s) {
    return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
}

function capitalize(s) {
    return s.replace(s.substr(0, 1), function(m) { return m.toUpperCase(); });
}

function startDictation(event) {
    if (recognizing) {
        recognition.stop();
        return;
    }
    final_transcript = '';
    recognition.lang = 'fr-FR';
    recognition.start();
    document.getElementById("final_span").value = "";
}

function stopDictation(event) {
    recognition.stop();
    document.getElementById("final_span").value = "";
}

function itineraire(lat, lng) {
    var addressLongLat_dest = '5.3780604,-3.9985681';
    var addressLongLat_orig = '5.3891782,-4.0373063';

    swal({ title: "OK !", text: 'Le trajet va s\'ouvrir avec Google Maps. Rassurez-vous d\'avoir la connexion internet.', type: "success", confirmButtonText: "OK" });
        setTimeout(function() {
            window.open("https://www.google.ci/maps/dir/" + addressLongLat_orig + "/" + addressLongLat_dest);
        }, 3000);

    // var posOptions = { timeout: 10000, enableHighAccuracy: true };
    // // watchPosition

    // navigator.geolocation.getCurrentPosition(function(position) {
    //     lat = position.coords.latitude;
    //     lon = position.coords.longitude;
    //     var vlatitude = parseFloat(5.3484342);
    //     var vlongitude = parseFloat(-4.1197537, 11);
    //     if (lat != 0 && lng != 0 && lat != "" && lng != "") {
    //         vlatitude = parseFloat(lat);
    //         vlongitude = parseFloat(lng);
    //     }
    //     var addressLongLat_dest = vlatitude + ',' + vlongitude;
    //     var addressLongLat_orig = lat + ',' + lon;
    //         swal({ title: "OK !", text: 'Le trajet va s\'ouvrir avec Google Maps. Rassurez-vous d\'avoir la connexion internet.', type: "success", confirmButtonText: "OK" });
    //     setTimeout(function() {
    //         window.open("https://www.google.ci/maps/dir/" + addressLongLat_orig + "/" + addressLongLat_dest);
    //         window.open("https://www.google.ci/maps/dir/" + addressLongLat_orig + "/" + addressLongLat_dest);
    //     }, 3000);

    // }, function(err) {
    //     swal({ title: "Refusé !", text: "Une erreur s\'est produite. Veuillez réessayer plus tard", type: "error" });
    // }, posOptions);
}

function call(phone) {
    swal({ title: "OK !", text: 'Appeler le : ' + phone, type: "success", confirmButtonText: "OK" });
}

function sms(phone) {
    swal({ title: "OK !", text: 'Envoyer un message au : ' + phone, type: "success", confirmButtonText: "OK" });
}
