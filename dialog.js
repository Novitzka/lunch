/**
 * Created by Paulina on 2016-05-30.
 */
$(document).ready(function() {
    $(function() {
        $("#dialog").dialog({
            autoOpen: false
        });
        $("#button").on("click", function() {
            $("#dialog").dialog("open");
        });
    });
// Validating Form Fields.....
    $("#submit").click(function(e) {
        var restaurant = $("#restaurant").val();
        var meal = $("#meal").val();
        var price = $("#price").val();

        if (restaurant === '' || meal === ''||price==='') {
            alert("Please fill all fields...!!!!!!");
            e.preventDefault();

        } else {
            alert("Order Submitted Successfully......");
        }


        $('<li>').text("Restaurant: "+restaurant).appendTo('.posts');
        $('<li>').text("Meal: "+meal).appendTo('.posts');
        $('<li>').text("Price: "+price).appendTo('.posts');


        JSON.stringify(restaurant,meal,price)

    });



});


