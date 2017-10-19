/*Hamburger Menu*/
function openNav() {
    document.querySelector('.sidenav').style.left = '0';
    document.querySelector('.sidenav--overlay').style.height = '100%';
}

function closeNav() {
    document.querySelector('.sidenav').style.left = '-300px';
    document.querySelector('.sidenav--overlay').style.height = '0';
}

//Feedback - Post button
function showMessage() {
    document.getElementById('post-feedback').innerHTML = '<br/><br/><br/>We value all your comments. Thank you &amp; have a great day!';
    document.getElementById('post-feedback').setAttribute('style','background:black; z-index:4;text-align:center; padding:2%; color:white; font-size: 30px; font-family:Droid Sans, sans-serif; ');
}

//Language Selection - Maori button
function changeToMaori(a,b,c,d,e) {
    document.getElementById('maori').innerHTML = "<a href='#'>English</a>";

    //translate static text to Maori - translated using "http://maoridictionary.co.nz/" website
    //Header
    document.getElementById('feedback').innerHTML = "<a href='#'>Whakahoki kōrero</a>";
    document.getElementById('feedback').setAttribute('style', 'font-size:12px;');

    document.getElementById('search').setAttribute('placeholder', 'Whakataki');

    //Side Menu
    document.getElementById('sidenav--menu').innerHTML = "<li><a href='index.html'><i class=\"fa fa-home\" aria-hidden=\"true\"></i> &nbsp;&nbsp;&nbsp;Wā kāinga</a></li> <li><a href='view_menu.html'><i class=\"fa fa-cutlery\" aria-hidden=\"true\"></i> &nbsp;&nbsp;&nbsp;Pātene tiro rārangi kai</a></li> <li><a href='todays_special.html'><i class=\"fa fa-trophy\" aria-hidden=\"true\"></i> &nbsp;&nbsp;&nbsp;Nō nāia nei motuhake</a></li> <li><a href='special_offers.html'><i class=\"fa fa-gift\" aria-hidden=\"true\"></i> &nbsp;&nbsp;&nbsp;Motuhake whāngai hau</a></li>";
    document.getElementById('sidenav--menu').setAttribute('style', 'font-size:18px;');

    //index.html
    document.getElementById('viewMenu').innerHTML = "<a href='view_menu.html'>Pātene tiro rārangi kai</a>";
    document.getElementById('viewMenu').setAttribute('style', 'font-size: 18px;');

    document.getElementById('title').innerHTML = 'pēwhea?!';
    document.getElementById('title').setAttribute('style','margin-left: 46.5%;');

    document.getElementById('excellentP').innerHTML = 'rawe';
    document.getElementById('verygoodP').innerHTML = 'kāore he painga i [a Mea]';
    document.getElementById('verygood').setAttribute('style', 'margin-left: 30%;');
    document.getElementById('goodP').innerHTML = 'e hika';
    document.getElementById('averageP').innerHTML = 'taurite';
    document.getElementById('poorP').innerHTML = 'raupōtaranga';

    document.getElementById("excellent").src=a;
    document.getElementById("verygood").src=b;
    document.getElementById("good").src=c;
    document.getElementById("average").src=d;
    document.getElementById("poor").src=e;

    document.getElementById('commentBox').innerHTML = "<input class='comment' id='comment' type='text' name='tākupu' placeholder='tākupu'>";
    document.getElementById('post').innerHTML = 'tāuru';

    $('.col-smilleys img').click(function (){
    document.getElementById('feedback-message').innerHTML = "Wheriko! Wē ngākau whakaute tāu whakahoki kōrero.<br/>Ka kite anō au i a koe!";
    });
}




/*JQUERY*/
$(document).ready(function () {

// /*Modal*/
// Get the modal
    var modal = document.getElementById('myModal');

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = $('.container-s img, .container-SO img, .container-B img');
    var overlay = $('.overlay');
    var modalImg = $("#img01");
    var description = document.getElementById("description");

    $('.container-s img, .container-SO img, .container-B img').click(function () {
        modal.style.display = "block";
        var newSrc = this.src;
        modalImg.attr('src', newSrc);
        description.innerHTML = this.alt;
    });

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    /*Feedback - Post Smiley*/
    var postedFeedback = document.getElementById('posted-feedback');
    var smiley = $('.col-smilleys img');
    var feedbackSmiley = $("#img02");
    var feedbackMessage = document.getElementById("feedback-message");

    $('.col-smilleys img').click(function (){
        postedFeedback.style.display = "block";
        var newSrc2 = this.src;
        feedbackSmiley.attr('src', newSrc2);
        feedbackMessage.innerHTML = "Brilliant! We appreciate your feedback.<br/>See you soon!";
    });

});


