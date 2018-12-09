$(document).ready(function () {
    $("#your-address-radio").on("click change", function () {
        if (!this.checked) {
            $.ajax({
                url: "http://localhost:8084/ECommerce/GetAddress",
                success: function (response) {
                    console.log(response);
                    var result = JSON.parse(response);
                    $("#your-full-name").val(result.FirstName + " " + result.LastName);
                    $("#your-email").val( result.Email);
                    $("#your-phone").val( result.Phone);
                    $("#your-address").val( result.Address);
                    
                },
                error: function (e) {
                    console.log(e);
                }
            });
        }
    });
});

