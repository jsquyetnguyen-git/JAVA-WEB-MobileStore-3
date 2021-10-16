
// validate pay submit form
function validPayForm() {
    let name = document.payForm.name.value.trim();
    let address = document.payForm.address.value.trim();
	let phone = document.payForm.phone.value.trim();
    let result = true;

    if (name == ''||address == ''||phone=='') {
        alert("Name, address and phone can not be blank.");
		result = false;
    }else{
		alert("Thank you! Your order has been sent.");
	}

    return result;
}


// validate login form
function validForm() {
    let username = document.loginForm.username.value.trim();
    let password = document.loginForm.password.value.trim();
    let result = true;

    if (username == ''||password == '') {
        alert("Username and password can not be blank.");
		result = false;
    }

    return result;
}


// navbar shrink
var navbarShrink = function() {
    const navbarCollapsible = document.body.querySelector('#mainNav');
    if (!navbarCollapsible) {
        return;
    }
    if (window.scrollY === 0) {
        navbarCollapsible.classList.remove('navbar-shrink')
    } else {
        navbarCollapsible.classList.add('navbar-shrink')
    }

};

navbarShrink();
document.addEventListener('scroll', navbarShrink);

// activate Bootstrap scrollspy on the main nav element
const mainNav = document.body.querySelector('#mainNav');
if (mainNav) {
    new bootstrap.ScrollSpy(document.body, {
        target: '#mainNav',
        offset: 74,
    });
};

