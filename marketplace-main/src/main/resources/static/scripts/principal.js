(function(){
    const listElement = document.querySelectorAll('.menu_item--show');
    const list = document.querySelector('.menu_links');
    const menu = document.querySelector('.menu_hamburguer');
    const addClick = ()=>{
        listElement.forEach(element =>{
            element.addEventListener('click', ()=>{
                
                let subMenu = element.children[1];
                let height = 0;
                element.classList.toggle('menu_item--active')
                console.log(subMenu.clientHeight);
                if (subMenu.clientHeight ===0) {
                    height = subMenu.scrollHeight;
                }
                subMenu.style.height = '${height}px';
            });
        });
    }
    addClick();

    const deleteStyleHeight = () =>{
        listElement.forEach(element =>{
            if (element.children[1].getAttribute('style')) {
                element.children[1].removeAttribute('style');
                element.classList.remove() 
            }
        });
    }
    window.addEventListener ('resize', ()=>{
    if (window.innerWidth >800) {
        deleteStyleHeight();
        if (list.classList.contains('menu_links--show')) 
            list.classList.remove('menu_links--show');
    } else {
        addClick();
    }
    })
    if (window.innerWidth <= 800) {
        addClick();
    }
    menu.addEventListener('click', () => list.classList.toggle('menu_links--show'));
})();
function App(){}
    window.onload = function(event){
        var app = new App();
        window.app = app;
    }
    App.prototype.processingButton = function(event){
        const btn = event.currentTarget;
        const carruselList = event.currentTarget.parentNode;
        const track = event.currentTarget.parentNode.querySelector('#track');
        const carrusel = track.querySelectorAll('.carrusel');
        const carruselWidth = carrusel[0].offsetWidth;
        const listWidth = carruselList.offsetWidth;
        const trackWidth = track.offsetWidth;

        track.style.left == "" ? leftPosition = track.style.left = 0 : leftPosition = parseFloat(track.style.left.slice(0,-2) * -1);

        btn.dataset.button == "button-prev" ? prevAction(leftPosition,carruselWidth, track) : nextAction(leftPosition, trackWidth , listWidth, carruselWidth, track)
    }

    let prevAction = (leftPosition, carruselWidth, track) => {
        if (leftPosition > 0) {
            track.style.left = `${-1 * (leftPosition - carruselWidth)}px`;
        }
    }
    let nextAction = (leftPosition, trackWidth, carruselWidth ,listWidth , track) => {
        if (leftPosition < (trackWidth - listWidth)) {
            track.style.left = `${-1 * (leftPosition + carruselWidth)}px`;
        }
    }
