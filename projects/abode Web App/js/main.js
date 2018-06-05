$(function () {

    var allAccommodations = null,
        accommodation = null,
        totalNightsOfStay = null;

    var accommodationList = $('.accommodation-list'),
        locationListItem = $('.locations'),
        checkinDropDownBox = $('#check-in'),
        checkoutDropDownBox = $('#check-out'),
        guestsDropDownBox = $('#guests-number'),
        priceDropDownBox = $('#price-range'),
        accommodationTypeDropDownBox = $('#accommodation-type'),
        modal = $('.modal'),
        modalDescription = $('.description'),
        swiperWrapper = $('.swiper-wrapper'),
        submitButton = $('.submitButton');

    /**
     */
    function init() {
        $.getJSON('json/accommodation.json', function (data) {
            allAccommodations = data.accommodation;
            accommodation = allAccommodations;
            displayAccommodationList(allAccommodations);
            setAccommodationInfo(allAccommodations);
            filteredAccommodation(accommodation);
        });
    }
    /**
     * @param  {} allAccommodations
     */
    function displayAccommodationList(allAccommodations) {
        var listItem = '';

        $.each(allAccommodations, function (i, accommodationItem) {
            listItem = listItem + getHTMLAccommodationListItem(accommodationItem);
        });
        accommodationList.html(listItem);

        var accommodationListItem = $('.accommodation-list-item');
        $.each(accommodationListItem, function (v, item) {
            $(this).on('click', function () {
                showModal($(this));
            });
        });
    }
    /**
     * @param  {} accommodationItem
     */
    function getHTMLAccommodationListItem(accommodationItem) {
        return `<div class="accommo-item">
        <img class="accommodation-list-item" data-aos="zoom-in" src="${accommodationItem.images[0]}" data-images="${accommodationItem.images[0]}">
        <div class="text-block">
        <p class="title">${accommodationItem.location}</p>
        <p class="price">NZD&nbsp;${accommodationItem.price}/night</p>
        </div>
        </div>`
    }
    /**
     * @param  {} item
     */
    function showModal(item) {
        modal.css('display', "block");
        var modalImage = '',
            modalInfo = '';

        $.each(allAccommodations, function (i, accommodationItem) {
            if (accommodationItem.images[0] === item.data('images')) {
                modalImage = modalImage + getModalImage(accommodationItem);
                modalInfo = modalInfo + getModalInfo(accommodationItem);
            }
        });
        swiperWrapper.html(modalImage);
        modalDescription.html(modalInfo);

        /*Image slider - copyright to "http://idangero.us/swiper/get-started/#.WcHn5bKg9aR" */
        var mySwiper = new Swiper('.swiper-container', {
            // pagination
            pagination: '.swiper-pagination',
            paginationClickable: true,
            autoplay: 2200,
            autoplayDisableOnInteraction: false
        });
        modal.on('click', function (event) {
            // event.preventDefault();
            modal.css('display', "none");
        });
    }
    /**
     * @param  {} accommodationItem
     */
    function getModalImage(accommodationItem) {
        var swiperHTML = '';
        for (var i = 0; i < accommodationItem.images.length; i++) {
            swiperHTML = swiperHTML + `<div class="swiper-slide">
            <span class="close" onclick="document.getElementById('modal').style.display='none'">&times;</span>
                    <img class="modal-content" id="modalImg" src="${accommodationItem.images[i]}">
                </div>`
        }
        return swiperHTML;
    }
    /**
     * @param  {} accommodationItem
     */
    function getModalInfo(accommodationItem) {
        var descriptionHTML = '';
        descriptionHTML = descriptionHTML + (`<section class="accommodation-general">
                <div>
                    <p class="accommodation-name">${accommodationItem.name}</p>
                    <p class="accommodation_type">${accommodationItem.type}</p>
                </div>
                <div><img src="images/bed.png">&nbsp;${accommodationItem.rooms}</div>
                <div><img src="images/shower.png">&nbsp;${accommodationItem.shower}</div>`)

        if (accommodationItem.wheelChairAccess === true) {
            descriptionHTML = descriptionHTML + `<div><img src="images/wheel_chair.png"></div>`
        }
        if (accommodationItem.petsAllowed === true) {
            descriptionHTML = descriptionHTML + `<div><img src="images/pets.png"></div>`
        }
        if (totalNightsOfStay !== null) {
            descriptionHTML = descriptionHTML + `</section><section class="accommodation-filtered">
                    <div>Total nights of stay &nbsp; ${totalNightsOfStay}</div><div><img src="images/lineSeparator.png"></div>`
        }
        descriptionHTML = descriptionHTML + `<div><img src="images/guests.png">&nbsp;${accommodationItem.guests}</div>`
        if (totalNightsOfStay !== null) {
            descriptionHTML = descriptionHTML + `<div><img src="images/lineSeparator.png"></div><div>Total &nbsp; NZD&nbsp;` + (accommodationItem.price * totalNightsOfStay);
            descriptionHTML = descriptionHTML + `</div>`
        }
        descriptionHTML = descriptionHTML + `</section>`
        if (accommodationItem.meals === true) {
            descriptionHTML = descriptionHTML + `<div class="meals"><img src="images/meals.png">&nbsp;Breakfast included</div>`
        }
        return descriptionHTML;
    }
    /**
     * @param  {} accommodation
     */
    function setAccommodationInfo(allAccommodations) {
        var venue = '',
            guest = '',
            price = '',
            type = '';
        $.each(allAccommodations, function (t, accomItem) {
            venue = venue + getLocationListItem(accomItem)
            guest = guest + getHTMLGuest(accomItem);
            price = price + getHTMLPrice(accomItem);
            type = type + getHTMLType(accomItem);
        });
        locationListItem.html(venue);
        guestsDropDownBox.html(guest);
        priceDropDownBox.html(price);
        accommodationTypeDropDownBox.html(type);
    }
    /**
     * @param  {} accomItem
     */
    function getLocationListItem(accomItem) {
        var locationsHTML = '';
        locationsHTML = locationsHTML + `<option></option>`
        locationsHTML = locationsHTML + `<option class="location-item" data-name="${accomItem.location}">${accomItem.location}</option>`
        return locationsHTML;
    }
    /**
     * @param  {} accomItem
     */
    function getHTMLGuest(accomItem) {
        var guestHTML = '';
        guestHTML = guestHTML + `<option></option>`
        guestHTML = guestHTML + `<option class="guest-item" data-name="${accomItem.guests}">${accomItem.guests}</option>`
        return guestHTML;
    }
    /**
     * @param  {} accomItem
     */
    function getHTMLPrice(accomItem) {
        var priceHTML = '';
        priceHTML = priceHTML + `<option></option>`
        priceHTML = priceHTML + `<option class="price-item" data-name="${accomItem.price}">${accomItem.price}</option>`
        return priceHTML;
    }
    /**
     * @param  {} accomItem
     */
    function getHTMLType(accomItem) {
        var typeHTML = '';
        typeHTML = typeHTML + `<option></option>`
        typeHTML = typeHTML + `<option class="type-item" data-name="${accomItem.type}">${accomItem.type}</option>`
        return typeHTML;
    }
    /**
     * @param  {} accommodation
     */
    function filteredAccommodation(accommodation) {
        locationListItem.on('change', function () {
            var accommodationArrayByLocation = [];

            var venueItem = $(this).find("option:selected").data('name');
            $.each(accommodation, function (l, accomoL) {
                if (venueItem !== null && accomoL.location === venueItem) {
                    accommodationArrayByLocation.push(accomoL);
                }
            });
            /*****Date picker JQuery plugin*****/
            checkinDropDownBox.on('click', function () {
                var minDate = $(this).datepicker('getDate');
                if (minDate) { minDate.setDate(minDate.getDate() + 3); }//min days requires
                checkoutDropDownBox.datepicker('option', 'minDate', minDate || 1); // Date + 1 or tomorrow by default

                var checkin = checkinDropDownBox.datepicker('getDate').getTime(),
                    checkout = checkoutDropDownBox.datepicker('getDate').getTime(),
                    formula = 24 * 60 * 60 * 1000,
                    periodOfStay = Math.round(Math.abs((checkout - checkin) / (formula)));

            }).datepicker();
            checkoutDropDownBox.on('click', function () {
                var maxDate = $(this).datepicker('getDate');
                if (maxDate) { maxDate.setDate(maxDate.getDate() - 1); }
                checkinDropDownBox.datepicker('option', 'maxDate', maxDate); // Date - 1   

                var checkin = checkinDropDownBox.datepicker('getDate').getTime(),
                    checkout = checkoutDropDownBox.datepicker('getDate').getTime(),
                    formula = 24 * 60 * 60 * 1000,
                    periodOfStay = Math.round(Math.abs((checkout - checkin) / (formula)));

                totalNightsOfStay = periodOfStay;

                var accommodationArrayByDates = [];

                $.each(accommodationArrayByLocation, function (d, accomoD) {
                    if (periodOfStay !== null && accomoD.period.includes(periodOfStay)) {
                        accommodationArrayByDates.push(accomoD);
                    }
                });
                guestsDropDownBox.on('change', function () {
                    var accommodationArrayByGuests = [];

                    var selectedGuestsLabel = $(this).find("option:selected").text(),
                        selectedGuests = $(this).find("option:selected").data('name'),
                        labelFor = $(this).attr("id"),
                        label = $("[for='" + labelFor + "']");
                    label.find(".guests").html(selectedGuestsLabel);

                    $.each(accommodationArrayByDates, function (g, accomoG) {
                        if (selectedGuests !== null && accomoG.guests === selectedGuests) {
                            accommodationArrayByGuests.push(accomoG);
                        }
                        else {
                            alert("No results found!");
                        }
                    });
                    priceDropDownBox.on('change', function () {
                        var accommodationArrayByPrice = [];

                        var selectedPriceLabel = $(this).find("option:selected").text(),
                            selectedPrice = $(this).find("option:selected").data('name'),
                            labelFor = $(this).attr("id"),
                            label = $("[for='" + labelFor + "']");
                        label.find(".price").html(selectedPriceLabel);

                        $.each(accommodationArrayByGuests, function (p, accomoP) {
                            if (selectedPrice !== null && accomoP.price === selectedPrice) {
                                accommodationArrayByPrice.push(accomoP);
                            }
                            else {
                                alert("No results found!");
                            }
                        });
                        accommodationTypeDropDownBox.on('change', function () {
                            var accommodationArrayByType = [];

                            var selectedTypeLabel = $(this).find("option:selected").text(),
                                selectedType = $(this).find("option:selected").data('name'),
                                labelFor = $(this).attr("id"),
                                label = $("[for='" + labelFor + "']");
                            label.find(".accommodation").html(selectedTypeLabel);

                            $.each(accommodationArrayByPrice, function (t, accomoT) {
                                if (selectedType !== null && accomoT.type === selectedType) {
                                    accommodationArrayByType.push(accomoT);
                                }
                                else {
                                    alert("No results found!");
                                }
                            });
                            displayFilteredAccommodation(accommodationArrayByType);
                        });
                    });
                });
            }).datepicker();
        });
    }
    /**
     * @param  {} accommodationArrayByType
     */
    function displayFilteredAccommodation(accommodationArrayByType) {
        submitButton.on('click', function () {
            displayAccommodationList(accommodationArrayByType);
        });
    }

    init();

    /*aos JQuery plugin*/
    AOS.init();

    /*****Select2 JQuery plugin*****/
    locationListItem.select2({
        placeholder: "Search by location",
        allowClear: true,
    });

    guestsDropDownBox.select2({
        placeholder: "Guests",
        allowClear: true,
    });

    priceDropDownBox.select2({
        placeholder: "Price/night NZD",
        allowClear: true,
    });

    accommodationTypeDropDownBox.select2({
        placeholder: "Accommodation type",
        allowClear: true,
    });
});