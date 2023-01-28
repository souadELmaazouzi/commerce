$.ajax({
    type: "post",
    url: "AdminLogin/pointsSummary.php",
    data: {points:pointcartArray},
    success: function (response) {
        console.log(response);

        $.each(JSON.parse(response), function (key, val) {
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
                  "</td><td>" + val.nombrePoints + "</td> "+
                  "<td><div class='input-append'> " +
                  "<button id='" + val.reference +
                  "' onclick='remove(this)'  class='btn remove btn-danger '  " +
                  " title='remove' type='button'><i class='icon-remove icon-white'></i></button> </div>" +
                  "</td></tr>"
              );
              //total = total + parseFloat(val.prix1);
            }
          });
          $(".product").append(
            "<tr><td colspan='6' style='text-align:right'><strong>TOTAL =</strong></td>" +
              "<td class='label  label-important' style='display:block'> <strong class='total'>" +
             // total +
              " </strong></td></tr>"
          );
          $(".cartPrice").html(total);
          $(".numberInCart").html(carts.length);
          $("#count").html(carts.length);

    }
});
