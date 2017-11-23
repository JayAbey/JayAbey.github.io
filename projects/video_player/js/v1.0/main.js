//once all HTML has loaded
$(function () {
    var videos = null,
        categories = null;

    //find DOM elements
    var videoList = $('.video-list'),
        categoryList = $('.category-list'),
        searchbox = $('#search'),
        player = $('#player'),
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

        searchbox.on('keyup', function (evt) {
            evt.preventDefault();
            if (evt.which === 13) {
                getVideoByID($(this));
                getVideoByTitle($(this));
            }
        });
    }

    function getVideoByID(searchbox) {
        var inputValue = searchbox.val();
        //find out if id exists in db
        $.each(videos, function (i, video) {
            var id = video.id;
            if (id === inputValue) {
                displayVideos([video]);
                return;
            }
        });
    }

    function getVideoByTitle(searchbox) {
        var inputTitleValue = searchbox.val();
        //find out if title exists in db
        $.each(videos, function (i, video) {
            var title = video.title;
            if (title === inputTitleValue) {
                displayVideos([video]);
            }
        });
    }

    //wouldn't work on IE cause of these ES6 strings are not compatible across
    function getHTMLItem(video) {
        return `<div data-id="${video.id}" class="video-list--item">
                    <div>
                        <iframe width="340" height="250" src="https://www.youtube.com/embed/${video.id}" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="video-title">${video.title}</div>
                    <p class="video-category">${video.category}</p>
                </div>`;
    }

    function getCategoryItem(category) {
        return `<li data-category="${category.slug}" class="category-list--item grid-item">
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

    function displayVideosByCategory(category) {
        var videoArray = [];
        $.each(videos, function (i, video) {
            if (video.category === category) {
                videoArray.push(video);
            }
        });
        displayVideos(videoArray);
    }

    init();





});

