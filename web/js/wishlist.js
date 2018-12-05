
$(document).ready(function () {
    $(".add-to-whishlist").on("click", function () {
        var id = $(this).data("id");
        addToWishlist(id, this);
    });

    $(".add-to-whishlist").each(function () {
        var id = $(this).data("id");
        checkWishlist(id, this);
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

function addToWishlist(id, object) {
    $.ajax({
        url: "http://localhost:8084/ECommerce/AddToWishlist",
        data: {productId: id},
        success: function (result) {
            if (result == "success") {
                var style = $(object).attr("style");
                if (style != null && style.includes("color:red")) {
                    $(object).removeAttr("style");
                    $(object).attr("data-original-title", "wishlist");
                } else {
                    $(object).attr("style", "color:red");
                    $(object).attr("data-original-title", "Added to wishlist");
                }

            } else if (result == "login") {
                $("#popup-modal-input").click();
            }
            console.log(result);
        },
        error: function (e) {
            console.log(e);
        }
    });
}

function checkWishlist(id, object) {
    $.ajax({
        url: "http://localhost:8084/ECommerce/CheckInWishlist",
        data: {productId: id},
        success: function (result) {
            if (result == "success") {
                $(object).attr("style", "color:red");
                $(object).attr("data-original-title", "Added to wishlist");
            }
        },
        error: function (e) {
            console.log(e);
        }
    });
}
