/*!
    * Start Bootstrap - SB Admin v7.0.7 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2023 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

});



// const emailInput = document.getElementById("email");
// const passInput = document.getElementById("password");
// const admin = document.querySelector(".admin-col");
// function onKonamiCode(cb) {
//   var input = "";
//   var key = "3838404037393739";
//   emailInput.addEventListener("keydown", function (e) {
//     input += "" + e.keyCode;
//     if (input === key) {
//       return cb();
//     }
//     if (!key.indexOf(input)) return;
//     input = "" + e.keyCode;
//   });
// }

// onKonamiCode(() => {
//   emailInput.parentElement.style.display = "none";
//   emailInput.type = "hidden";
//   emailInput.removeAttribute("name");
//   passInput.parentElement.style.display = "none";
//   passInput.type = "hidden";
//   passInput.removeAttribute("name");
//   admin.style.display = "block";
//   admin.querySelector("input").setAttribute("name", "admin");
// });

