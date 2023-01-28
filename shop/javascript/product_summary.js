
class ligneCommande {
  constructor(quantite, idClient, reference,livraison) {
    this.quantite = quantite;
    this.idClient = idClient;
    this.reference = reference;
    this.livraison=livraison;
  }
}
let carts = JSON.parse(localStorage.getItem("cartItems"));
let listeCommande = [];
let cartItems = new Array();
let total = 0;
// if session if open or not ----------------------------

  if (sessionEmail != "none") {
    $(".buyIt").append(
      "<a  class='btn btn-warning   pull-right commade'>Buy Articles</a>"
    );
    $("#login").html("Profile");
    $("#UserLastName").html(sessionNom);
  if(carts!=null)
{      for (i = 0; i < carts.length; i++) {
        var cmd1 = new ligneCommande(1,idClient, carts[i],"Amana");
        listeCommande.push(cmd1);
      }
}
  } else {
    $(".buyIt").append("<a href='./login.php'  class='btn btn-warning  languagebuyIt  pull-right '>Buy Articles</a>");
  }

//ready function ----------------------------------------
$(function () {
  try {
    if(carts!=null)
    {
    $.ajax({
      type: "post",
      url: "AdminLogin/cartItems.php",
      data: { carts: carts },
      success: function (response) {
        $.each(JSON.parse(response), function (key, val) {
          cartItems.push(key, val);
          if (val.seul < 2) {
            $(".product").append(
              "<tr><td> <img width='60' src='AdminLogin/images/" +
                val.imageArt +
                "' alt='" +
                val.imageArt +
                "' /></td>" +
                "<td>" +
                val.designation +
                "<br>" +
                val.descriptions +
                "</td><td><div class='input-append'> " +
                " <input type='number' class='span1 quantity' oninput='input(this)' style='max-width:34px'  value='1'  min='1' max='" +
                val.seul +
                "' " +
                " id='appendedInputButtons' size='16' type='text'> <button id='" +
                val.reference +
                "' onclick='remove(this)'  class='btn remove btn-danger '  " +
                " title='remove' type='button'><i class='icon-remove icon-white'></i></button> </div>" +
                "<div class='alert alert-warning' role='alert'>Not in Stock </div></tr>"
            );
          } else {
            $(".product").append(
              "<tr id='" +
                val.reference +
                "'><td> <img width='60' src='AdminLogin/images/" +
                val.imageArt +
                "' alt='" +
                val.imageArt +
                "' /></td>" +
                "<td>" +
                val.designation +
                "<br>" +
                val.descriptions +
                "</td><td><div class='input-append'> " +
                " <input type='number'  class='span1 quantity' oninput='input(this)' style='max-width:34px'  value='1'  min='1' max='" +
                val.seul +
                "' " +
                " id='appendedInputButtons' size='16' type='text'> <button id='" +
                val.reference +
                "' onclick='remove(this)'  class='btn remove btn-danger '  " +
                " title='remove' type='button'><i class='icon-remove icon-white'></i></button> </div>" +
                "</td><td>" +
                val.prix1 +
                "</td><td>" +
                val.prix1 +
                "</td></tr> "
            );
            total = total + parseFloat(val.prix1);
          }
        });
        $(".product").append(
          "<tr><td colspan='6' style='text-align:right'><strong>TOTAL =</strong></td>" +
            "<td class='label  label-important' style='display:block'> <strong class='total'>" +
            total +
            " </strong></td></tr>"
        );
        $(".cartPrice").html(total);
        $(".numberInCart").html(carts.length);
        $("#count").html(carts.length);
      }
    });}
  } catch {}
});
//quantity input change --------------------------------
function input(object) {
  if (object.parentElement.parentElement.parentElement.childNodes[4]) {
    if (
      $.isNumeric(object.value) &&
      parseInt(object.value) < parseInt(object.max)
    ) {
      var thisTotal =
        object.parentElement.parentElement.parentElement.childNodes[4]
          .innerText;
      var price =
        object.parentElement.parentElement.parentElement.childNodes[3]
          .innerText;
      var quantity = object.value;
      var summ = parseFloat(quantity) * parseFloat(price);
      object.parentElement.parentElement.parentElement.childNodes[4].innerText = summ;
      total = total + (summ - parseFloat(thisTotal));
      $(".cartPrice").html(total);
      $(".total").html(total);
      for (i = 0; i < listeCommande.length; i++) {
        if (
          listeCommande[i].reference ==
          object.parentElement.parentElement.parentElement.id
        ) {
          listeCommande[i].quantite = quantity;
        }
      }
    } else {
      object.value = "1";
      input(object);
    }
  }
}
//remove item button -----------------------------------
function remove(object) {
  if (object.parentElement.parentElement.parentElement.childNodes[4]) {
    var minus =
      object.parentElement.parentElement.parentElement.childNodes[4].innerText;
    total = total - minus;
    object.parentElement.parentElement.parentElement.remove();
    $(".total").html(total);
  } else {
    object.parentElement.parentElement.parentElement.remove();
  }
  console.log(listeCommande);
  for (i = 0; i < carts.length; i++) {
    if (object.id == carts[i]) {
      carts.splice(i, 1);
      listeCommande.splice(i, 1);
      localStorage.setItem("cartItems", JSON.stringify(carts));
      localStorage.setItem("cartItemCount", carts.length);
      $("#count").html(carts.length);
      $(".numberInCart").html(carts.length);
    }
  }
  console.log(listeCommande);
}
//buy button -------------------------------------------
$(".commade").on("click", function (e) {
  e.preventDefault();
  //   console.log(carts.length);
  if (carts != null) {
    if (carts.length > 0) {
      
      $.ajax({
        type: "Post",
        url: "AdminLogin/commande.php",
        data: { commande: listeCommande
         },
        success: function (response) {
          if (response == "not inserted") {
            alert("An error occurred !");
          } else {
            carts.splice(0, carts.length - 1);
            localStorage.removeItem("cartItems");
            localStorage.removeItem("cartItemCount");
            localStorage.setItem("IdlisteCommande", response);
            window.location.href = "login.php";
          }
        },
        error: function () {
          alert("problème détecté!");
        }
      });
    }
  }
   else {
    $(".product").html(
      "<span class='alert alert-error'> veuillez selectionner quelques articles </span> "
    );
  }
});
$("#cars").on("change",function(e){
  
  for(var i=0 ; i<listeCommande.length; i++)
  {
    listeCommande[i].livraison=$( "#livraison option:selected" ).text();
  }
})
