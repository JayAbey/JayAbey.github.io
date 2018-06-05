/**********JQuery plugins**********/
/*Shepherd*/
var tour = new Shepherd.Tour({
    defaults: {
        classes: 'shepherd-element shepherd-open shepherd-theme-arrows',
        showCancelLink: true
    }
});

tour.addStep('welcome', {
    text: 'Sweet Tooth is a local company with fresh home baked goodies. This web App will guide you to get a quote from us to cater for your next event!',
    attachTo: '.heading bottom',
    buttons: [{
        text: 'Next',
        action: tour.next
    },
    {
        text: 'Exit',
        action: tour.cancel
    }
    ]
});
tour.addStep('treat', {
    text: 'First select your treat category',
    attachTo: '.select-1 bottom',
    buttons: [{
        text: 'Next',
        action: tour.next
    },
    {
        text: 'Exit',
        action: tour.cancel
    }
    ]
});
tour.addStep('event', {
    text: 'Now select your event type',
    attachTo: '.select-2 bottom',
    buttons: [{
        text: 'Next',
        action: tour.next
    },
    {
        text: 'Exit',
        action: tour.cancel
    }
    ]
});
tour.addStep('display of treats', {
    text: 'These are the treats we will cater for this choice of event',
    attachTo: '.treats-list bottom',
    buttons: [{
        text: 'Next',
        action: tour.next
    },
    {
        text: 'Exit',
        action: tour.cancel
    }
    ]
});
tour.addStep('click for treat details', {
    text: 'Click on the treats to get a quote for your event',
    attachTo: '.treat-details bottom',
    buttons: [
        {
            text: 'Exit',
            action: tour.cancel
        }
    ]
});

tour.start();

/*Moment - clock*/
var currentLang = 'en',
    snippets = [];

function createSnippets() {
    var i;
    moment.locale(currentLang);
    for (i = 0; i < snippets.length; i++) {
        snippets[i].render();
    }
}
function updateSnippets() {
    var i;

    moment.locale(currentLang);

    for (i = 0; i < snippets.length; i++) {
        snippets[i].update();
    }
}
function updateClock() {
    var now = moment(),
        second = now.seconds() * 6,
        minute = now.minutes() * 6 + second / 60,
        hour = ((now.hours() % 12) / 12) * 360 + 90 + minute / 12;

    $('#hour').css("transform", "rotate(" + hour + "deg)");
    $('#minute').css("transform", "rotate(" + minute + "deg)");
    $('#second').css("transform", "rotate(" + second + "deg)");
}
function timedUpdate() {
    updateClock();
    updateSnippets();
    setTimeout(timedUpdate, 1000);
}
createSnippets();
timedUpdate();
/********************/

$(function () {

    var treats = null,
        events = null;

    var treatsDropDownBox = $('#treats'),
        eventsDropDownBox = $('#events'),
        formItems = $('.drop-down-items'),
        treatsList = $('.treats-list'),
        treatDetails = $('.treat-details'),
        eventdetails = $('.event-details');
    /**
     */
    function init() {
        $.getJSON('json/treats.json', function (data) {
            treats = data.treats;
            displayTreats(treats);
        });
        $.getJSON('json/events.json', function (data) {
            events = data.events;
            displayEvents(events);
        });
    }
    /**
     * @param  {} treats
     */
    function displayTreats(treats) {
        var t = '';
        $.each(treats, function (i, treat) {
            t = t + getHTMLTreat(treat);
        });
        treatsDropDownBox.html(t);
        treatsDropDownBox.on('change', function () {
            treatsList.empty();
            treatDetails.empty();
            eventdetails.empty();

            var selectedTreatLabel = $(this).find("option:selected").text(),
                selectedTreatCategory = $(this).find("option:selected").data('name'),
                labelFor = $(this).attr("id"),
                label = $("[for='" + labelFor + "']");
            label.find(".selection-choice").html(selectedTreatLabel);
            selectEvent(selectedTreatCategory);
        });
    }
    /**
     * @param  {} treat
     */
    function getHTMLTreat(treat) {
        return `<option data-name="${treat.name}" class="treat-category">${treat.category}</option>`;
    }
    /**
     * @param  {} events
     */
    function displayEvents(events) {
        var e = '';
        $.each(events, function (i, event) {
            e = e + getHTMLEvent(event);
        });
        eventsDropDownBox.html(e);
    }
    /**
     * @param  {} event
     */
    function getHTMLEvent(event) {
        return `<option data-name="${event.name}" class="event-name">${event.name}</option>`;
    }
    /**
     * @param  {} selectedTreatCategory
     */
    function selectEvent(selectedTreatCategory) {
        eventsDropDownBox.on('change', function () {
            var selectedEventLabel = $(this).find("option:selected").text(),
                selectedEvent = $(this).find("option:selected").data('name'),
                labelFor = $(this).attr("id"),
                label = $("[for='" + labelFor + "']");
            label.find(".selection-choice").html(selectedEventLabel);
            displayTreatNameList(selectedTreatCategory, selectedEvent);
        });
    }
    /**
     * @param  {} selectedTreatCategory
     * @param  {} selectedEvent
     */
    function displayTreatNameList(selectedTreatCategory, selectedEvent) {
        treatsList.html("<h3>Treats included:</h3><br/><p>" + selectedTreatCategory + "</p>");
        treatsList.on('click', function () {
            displayTreatDetails(selectedTreatCategory);
            displayEventDetails(selectedEvent);
        });
    }
    /**
     * @param  {} selectedTreatCategory
     */
    function displayTreatDetails(selectedTreatCategory) {
        var p = '';
        $.each(treats, function (i, treat) {
            if (treat.name === selectedTreatCategory) {
                p = p + getHTMLTreatDetails(treat);
            }
        });
        treatDetails.html(p);
    }
    /**
     * @param  {} treat
     */
    function getHTMLTreatDetails(treat) {
        return `<ul><li>Cost of item selected:&nbsp;${treat.price}</li></ul>`;
    }
    /**
     * @param  {} selectedEvent
     */
    function displayEventDetails(selectedEvent) {
        var q = '';
        $.each(events, function (i, event) {
            if (event.name === selectedEvent) {
                q = q + getHTMLEventDetails(event);
            }
        });
        eventdetails.html(q);
    }
    /**
     * @param  {} event
     */
    function getHTMLEventDetails(event) {
        var sum = parseInt(event.transportFee) + parseInt(event.labourFee);
        return `<ul>
    <li>Cost of getting to event:&nbsp;$${event.transportFee}</li>
    <li>Cost of labour:&nbsp;$${event.labourFee}</li>
    <li><h2>Total Cost: &nbsp;$`+ sum + `</h2></li>
    </ul>`;
    }

    init();

});