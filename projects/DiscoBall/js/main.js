$(function () {

// discoball from https://codepen.io/msaetre/pen/fDuzC
var t = 1;
var radius = 50;
var squareSize = 6.5;
var prec = 19.55;
var fuzzy = 0.001;
var inc = (Math.PI - fuzzy) / prec;
var discoBall = document.getElementById("discoBall");

for (var t = fuzzy; t < Math.PI; t += inc) {
  var z = radius * Math.cos(t);
  var currentRadius =
    Math.abs(
      radius * Math.cos(0) * Math.sin(t) -
        radius * Math.cos(Math.PI) * Math.sin(t)
    ) / 2.5;
  var circumference = Math.abs(2 * Math.PI * currentRadius);
  var squaresThatFit = Math.floor(circumference / squareSize);
  var angleInc = (Math.PI * 2 - fuzzy) / squaresThatFit;
  for (var i = angleInc / 2 + fuzzy; i < Math.PI * 2; i += angleInc) {
    var square = document.createElement("div");
    var squareTile = document.createElement("div");
    squareTile.style.width = squareSize + "px";
    squareTile.style.height = squareSize + "px";
    squareTile.style.transformOrigin = "0 0 0";
    squareTile.style.webkitTransformOrigin = "0 0 0";
    squareTile.style.webkitTransform =
      "rotate(" + i + "rad) rotateY(" + t + "rad)";
    squareTile.style.transform = "rotate(" + i + "rad) rotateY(" + t + "rad)";
    if ((t > 1.3 && t < 1.9) || (t < -1.3 && t > -1.9)) {
      squareTile.style.backgroundColor = randomColor("bright");
    } else {
      squareTile.style.backgroundColor = randomColor("any");
    }
    square.appendChild(squareTile);
    square.className = "square";
    squareTile.style.webkitAnimation = "reflect 2s linear infinite";
    squareTile.style.webkitAnimationDelay =
      String(randomNumber(0, 20) / 10) + "s";
    squareTile.style.animation = "reflect 2s linear infinite";
    squareTile.style.animationDelay = String(randomNumber(0, 20) / 10) + "s";
    squareTile.style.backfaceVisibility = "hidden";
    var x = radius * Math.cos(i) * Math.sin(t);
    var y = radius * Math.sin(i) * Math.sin(t);
    square.style.webkitTransform =
      "translateX(" +
      Math.ceil(x) +
      "px) translateY(" +
      y +
      "px) translateZ(" +
      z +
      "px)";
    square.style.transform =
      "translateX(" + x + "px) translateY(" + y + "px) translateZ(" + z + "px)";
    discoBall.appendChild(square);
  }
}

function randomColor(type) {
  var c;
  if (type == "bright") {
    c = randomNumber(130, 255);
  } else {
    c = randomNumber(110, 190);
  }
  return "rgb(" + c + "," + c + "," + c + ")";
}

function randomNumber(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}


// disco background
  var blackboardHeight = $(".blackboard").height(),
    blackboardWidth = $(".blackboard").width(),
    blackboardArea = blackboardHeight * blackboardWidth,
    viewportWidth = Math.max(
      document.documentElement.clientWidth,
      window.innerWidth || 0
    ),
    expandedWidth = viewportWidth * 1.1,
    viewportHeight = Math.max(
      document.documentElement.clientHeight,
      window.innerHeight || 0
    ),
    expandedHeight = viewportHeight * 1.1,
    viewportArea = viewportWidth * viewportHeight,
    expandedArea = expandedWidth * expandedHeight,
    initialRight = 0,
    initialBottom = 0;

  function circleMaker(
    size,
    margin,
    color,
    opacity,
    blur,
    spread,
    positionLeeway,
    opacityLeeway,
    name
  ) {
    var lsCellSide = size + margin * 2,
      lsRows = Math.floor(expandedHeight / lsCellSide),
      lsColumns = Math.floor(expandedWidth / lsCellSide),
      lsQuantity = lsRows * lsColumns;
    console.log(name + " rows=" + lsRows);
    console.log(name + " columns=" + lsColumns);
    console.log(name + " quantity=" + lsQuantity);

    var paneHTML =
      '<div id="' +
      name +
      '-1" class=" ' +
      name +
      '-pane pane" style="top: 0; left: 0;' +
      " width:" +
      lsColumns * lsCellSide +
      "px; height:" +
      lsRows * lsCellSide +
      'px;"></div>';
    $(".window").append(paneHTML);

    var columnBlock = Math.floor(lsColumns / 3);
    var columnBlockRemainder = lsColumns % 3;

    console.log("columnBlock = " + columnBlock);
    console.log("columnBlockRemainder = " + columnBlockRemainder);

    for (var i = 0; i < lsQuantity; i++) {
      var thisRow = Math.floor(i / lsColumns) + 1;
      var thisCol = i % lsColumns + 1;

      var thisColBlock = 0;

      if (thisCol <= columnBlock) {
        thisColBlock = 1;
      } else if (thisCol <= columnBlock * 2) {
        thisColBlock = 2;
      } else if (thisCol <= columnBlock * 3 + columnBlockRemainder) {
        thisColBlock = 3;
      }

      var initTranslateX = thisCol * lsCellSide;
      var initTranslateY = thisRow * lsCellSide;

      var randomRight = Math.floor(Math.random() * (positionLeeway + 1)),
        randomRight = (randomRight *=
          Math.floor(Math.random() * 2) == 1 ? 1 : -1);

      var randomBottom = Math.floor(Math.random() * (positionLeeway + 1)),
        randomBottom = (randomBottom *=
          Math.floor(Math.random() * 2) == 1 ? 1 : -1);

      var randomOpacity = Math.random() * opacityLeeway,
        randomOpacity = (randomOpacity *=
          Math.floor(Math.random() * 2) == 1 ? 1 : -1),
        randomOpacity = opacity + randomOpacity;

      var lsHTML =
        '<div class="ls-' +
        name +
        " ls-col-" +
        thisColBlock +
        '" style="' +
        "height:" +
        size +
        "px; " +
        "width:" +
        size +
        "px;" +
        "left:" +
        (initialRight + randomRight - (margin + size) + initTranslateX) +
        "px;" + //LOOK HERE FOR INITIAL POSITIONING
        "top:" +
        (initialBottom + randomBottom - (margin + size) + initTranslateY) +
        "px;" +
        "background-color:" +
        color +
        ";" +
        "opacity:" +
        randomOpacity +
        ";" +
        "box-shadow: 0 0 " +
        blur +
        "px " +
        spread +
        "px " +
        color +
        ";" +
        '"></div>';

      $("#" + name + "-1").append(lsHTML);
    }

    for (var i = 2; i < 3; i++) {
      var leftPosition = (i - 1) * (lsColumns * lsCellSide);
      $("#" + name + "-1")
        .clone()
        .attr("id", name + "-" + i)
        .css("left", leftPosition)
        .appendTo(".window");
      //$('#' + name + '-1').clone().attr("id", name + "-duplicate-" + i).removeClass("pane").addClass("duplicate-pane").css("left", leftPosition).appendTo('.window');
    }
  }

  circleMaker(60, 30, "#E9008D", 0.13, 20, 2, 10, 0.15, "purple");
  circleMaker(20, 17, "#F5BFE1", 0.1, 15, 3, 6, 0.15, "pink");
  //circleMaker(5, 80, "#FFFFFF", 0.1, 30, 3, 20, 0.1, "white");

});