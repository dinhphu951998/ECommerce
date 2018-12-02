
$(document).ready(function () {
    $(".add-to-whishlist").on("click", function () {
        var id = $(this).data("id");
        var style = $(this).attr("style");
        if (style != null && style.includes("color:red")) {
            $(this).removeAttr("style");
        } else {
            $(this).attr("style", "color:red");
        }
        addToWishlist(id);
    });

    $("#profile-button").click(function () {
        var wishlist = window.localStorage.getItem("wish");
        $('<input>').attr({
            "type": "hidden",
            "value": wishlist,
            "name": "wishlistString"
        }).appendTo('#profile-form');
        window.localStorage.removeItem("wish");
        $("#profile-form").submit();
    });

});

function addToWishlist(id) {
    $.ajax({
        url: "http://localhost:8084/ECommerce/AddToWishlist",
        data: {productId: id},
        success: function (result) {
            console.log(result);
        },
        error: function (e) {
            console.log(e);
        }
    });
}
