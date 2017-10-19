var screens = [['', '#FAFAFA'],['warm', '#d89073'], ['nice', '#388E3C'], ['cool', '#800080'],['sexy', '#d50000' ], ['funny', '#FFD600']];
var descriptorEl = document.querySelector('.descriptor');

function changeScreen(index){
    if(!index){
        index = 0;
    }
    descriptorEl.innerHTML = screens[index][0];
    document.body.style.backgroundColor = screens[index][1];
}

function start(){
        var index = 0;
    setInterval(function (){
        if(index >= screens.length){
            index = 0;
        }
        changeScreen(index);
        index ++;
    }, 1500);
}
start();
changeScreen();