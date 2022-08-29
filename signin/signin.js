var menu = document.querySelector('.menu');
var menulis = menu.children;
var content = document.querySelector('.content');
var mainlis = content.children;
for (let i = 0 ; i < menulis.length ; i++){
    menulis[i].onclick = function() {
        for (let j = 0; j < mainlis.length; j++){
            mainlis[j].style.display = 'none';
        }
        mainlis[i].style.display = 'block';
    }
}