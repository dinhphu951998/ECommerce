$(document).ready(function () {
    $("#your-address-radio").on("click change", function () {
        if (!this.checked) {
            $.ajax({
                url: "http://localhost:8084/ECommerce/GetAddress",
                success: function (response) {
                    console.log(response);
                    var result = JSON.parse(response);
                    $("#your-full-name").attr("value", result.FirstName + " " + result.LastName);
                    $("#your-email").attr("value", result.Email);
                    $("#your-phone").attr("value", result.Phone);
                    $("#your-address").attr("value", result.Address);
                    
                },
                error: function (e) {
                    console.log(e);
                }
            });
        }
    });
});

