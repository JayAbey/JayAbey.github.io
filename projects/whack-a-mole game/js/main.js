var holes = document.querySelectorAll(".hole"),
    moles = document.querySelectorAll(".mole"),
    startButton = document.querySelector(".start_button"),
    scoreBoard = document.querySelector(".score"),
    startingScore = '0',
    interval = '10000',
    time = '1000',
    timesUp = false,
    lastHole;

startButton.addEventListener('click', startWhacking);
moles.forEach(mole => mole.addEventListener('click', whackMole));

function startWhacking() {
    scoreBoard.textContent = '0';
    startingScore = '0',
        timesUp = false,
        startButton.style.visibility = 'hidden';
    showMole();

    setInterval(() => {
        timesUp = true;
        startButton.innerHTML = "Try again?";
        startButton.style.visibility = 'visible';
    }, interval);
}

function showMole() {
    var hole = selectRandomHole(holes);

    hole.classList.add('up');
    setInterval(() => {
        hole.classList.remove('up');
        if (!timesUp) showMole();
    }, time);
}

function whackMole(evt) {
    if (!evt.isTrusted) return;
    startingScore++;
    this.classList.remove('up');
    scoreBoard.textContent = startingScore;
}

function selectRandomHole(holes) {
    var i = Math.floor(Math.random() * holes.length);
    var hole = holes[i];
    if (hole === lastHole) {
        return selectRandomHole(holes);
    }
    lastHole = hole;
    return hole;
}