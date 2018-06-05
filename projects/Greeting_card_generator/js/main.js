$(document).ready(function () {
    var image = $("#image");
    var background = $("#background");
    var font = $("#font");
    var border = $("#border");
    var message = $("#message");
    var card = $(".card");
    var frontImage = $(".card-image");
    var cardFont = $(".card-font");
    var cardBorder = $(".card-border");
    var submitButton = $(".pure-button");
    var form = $(".pure-form");

    image.change(function () {
        var cardImageSource = "";
        $("#image option:selected").each(function () {
            cardImageSource += "images/" + $(this).val() + ".jpg";
        });
        frontImage.attr('src', cardImageSource);
    });

    background.change(function () {
        var backgroundClassName = "";
        $("#background option:selected").each(function () {
            backgroundClassName += $(this).val() + "Background";
        });
        card.addClass(backgroundClassName);
    });

    font.change(function () {
        var fontClassName = "";
        $("#font option:selected").each(function () {
            fontClassName += $(this).val();
        });
        cardFont.addClass(fontClassName);
    });

    border.change(function () {
        var borderClassName = "";
        $("#border option:selected").each(function () {
            borderClassName += $(this).val() + "Border";
        });
        cardBorder.addClass(borderClassName);
    });

    message.keyup(function () {
        $("h1").text($(this).val());
    });

    submitButton.on('click', function (e) {
        e.preventDefault();
        $(".container").hide();
    });

















});
