/**********JQuery plugins**********/
/*aos*/
AOS.init();
/********************/

//once all HTML has loaded
$(function () {
    var videos = null,
        categories = null;

    //find DOM elements
    var videoList = $('.video-list'),
        categoryList = $('.category-list'),
        searchbox = $('#search'),
        player = $('#player'),
        screenLinks = $('.screen-link'),
        screens = $('.screen'),
        about = $('#about'),
        advancedSearch = $('#advancedSearch'),
        searchPanel = $('.dropdown-menu'),
        videoStyles = {
            display: "block"
        };

    function init() {
        //get videos from json file
        $.getJSON('json/videos.json', function (data) {
            videos = data.videos;
            displayVideos(videos);
        });
        $.getJSON('json/categories.json', function (data) {
            categories = data.categories;
            displayCategories(categories);
        });
        // $.getJSON('json/about.json', function (data) {
        //     aboutSection = data.author;
        //     displayAboutSection(aboutSection);
        // });

        searchbox.on('keyup', function (evt) {
            evt.preventDefault();
            if (evt.which === 13) {
                var video = getVideoByID($(this).val());
                if (video) {
                    displayVideos([video]);
                } else {
                    displayVideoByTitle($(this).val());
                }
            }
        });

        //add event listeners to screen-links
        $.each(screenLinks, function (i, link) {
            $(this).on('click', changeScreen);
        });
        screens.eq(1).hide();
    }

    function getVideoByID(inputValue) {
        for (var i = 0; i < videos.length; i++) {
            var id = videos[i].id;
            if (id === inputValue) {
                return videos[i];
            }
        }
        return null;
    }

    //wouldn't work on IE cause of these ES6 strings are not compatible across
    function getHTMLItem(video) {
        return `<div data-id="${video.id}" class="video-list--item" data-aos="zoom-in-up">
                    <div>
                    <iframe width="550" height="400" src="https://www.youtube.com/embed/${video.id}" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="video-title">${video.title}</div>
                    <p class="video-category">${video.category}</p>
                </div>`;
    }

    function getCategoryItem(category) {
        return `<li data-category="${category.slug}" class="category-list--item">
        <input type="radio"> ${category.title}
                </li>`;
    }

    //loop through and display
    function displayVideos(videos) {
        var s = '';
        $.each(videos, function (i, video) {
            s = s + getHTMLItem(video);
        });
        //set inner html of video list container with items
        videoList.html(s);
        //target the videos
        var videos = $('.video-list--item');
        //loop through and add click event listeners
        $.each(videos, function (i, video) {
            $(this).on('click', function () {
                playVideo($(this));
            });
        });
    }

    function displayVideosByCategory(category) {
        var videoArray = [];
        $.each(videos, function (i, video) {
            if (video.category === category) {
                videoArray.push(video);
            }
        });
        displayVideos(videoArray);
    }

    function displayVideosByTitle(title) {
        //create an empty "filteredVideos" array
        var filteredVideos = [];
        //loop through the videos ("videos" variable is global so you can use it)
        $.each(videos, function (i, video) {
            //if video title includes inputted title, add the video to array
            if (video.title.includes(title)) {
                filteredVideos.push(video);
            }
        });

        //display the videos
        displayVideos(filteredVideos);
    }

    function displayCategories(categories) {
        var s = '';
        $.each(categories, function (i, category) {
            s = s + getCategoryItem(category);
        });
        categoryList.html(s);
        var categories = $('.category-list--item');
        $.each(categories, function (i, category) {
            $(this).on('click', function () {
                var category = $(this).data('category')
                displayVideosByCategory(category);
            });
        });
    }

    function playVideo(listItem) {
        var videoID = listItem.data('id');
        player.attr('src', "https://www.youtube.com/embed/" + videoID + '?autoplay=1');
        player.css(videoStyles);
    }

    function changeScreen() {
        //remove 'active' class from all links
        $.each(screenLinks, function (i, link) {
            $(this).removeClass("active");
        });
        //$(this) is the link that was clicked. add the 'active' classon the link clicked
        $(this).addClass("active");
        //change screen
        var screenName = $(this).data('screen');
        //hide all screens
        $.each(screens, function (i, screen) {
            $(this).hide();
        });
        //find the screen to be shown
        $('#' + screenName).show();
    }

    // function displayAboutSection(aboutSection) {
    //     var s = '';
    //     $.each(aboutSection, function (i, about) {
    //         s = s + getHTMLItem(about.fullName);
    //     });
    //     //set inner html of video list container with items
    //     about.html(s);
    // }

    // function getVideosInAdvancedSearch(advancedSearch, searchPanel) {
    //     advancedSearch.on('click', function () {
    //         searchPanel.css("display", "block");
    //         // searchPanel.css('display') === 'block' ? 'none' : 'block';
    //     });
    // }


    init();

});