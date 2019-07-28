var button = document.getElementById('done');
var coordsContainer = document.getElementById(('coordsContainer'));
button.addEventListener('click',function(e){
    console.log(`[${coordsContainer.innerText.slice(0,coordsContainer.innerText.length - 1)}]`);
    console.log(`"poiBounds":"[${coordsContainer.innerText.slice(0,coordsContainer.innerText.length - 1)}]",`);
});