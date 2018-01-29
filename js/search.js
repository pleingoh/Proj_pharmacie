$(document).ready(function() {
    var categorie = localStorage.getItem('categorie');
    var commune = localStorage.getItem('commune');
    var q = localStorage.getItem('q');

  $('#find2').val(q).focus();

    $.ajax({
        url: 'php/enregistrement.php',
        type: 'get',
        data: { 'query': 'search', 'q': q, 'categorie': categorie, 'commune': commune },
        success: function(json) {
            if(json == "<p><b>Aucun résultat trouvé</b><p>"){
            swal({ title: "Refusé !", text: json, type: "error"});
                $('#content').empty().append(json);
            }else{
                $('#content').empty().append(json);
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            swal({ title: "Refusé !", text: "Une erreur s\'est produite. Veuillez réessayer plus tard", type: "error"});
        }
    });
    */

   /**  //search
    $('#find2').keyup(function(){
        var q = $('input[name=q]').val();

        $.ajax({
        url: 'php/enregistrement.php',
        type: 'get',
        data: { 'query': 'search2', 'q': q },
        success: function(json) {
             if(unescape(json) == "<p><b>Aucun résultat trouvé</b><p>"){
            swal({ title: "Refusé !", text: json, type: "error"});
                $('#content').empty().append(json);
            }else{
                $('#content').empty().append(json);
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            swal({ title: "Refusé !", text: "Une erreur s\'est produite. Veuillez réessayer plus tard", type: "error"});
        }
    });
    });


});


function getCommerce(id){
    localStorage.setItem('idCommerce',id);
    setTimeout(function(){
        window.location.href="commerce.html";
    },50);
}