function validator(opts) {
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }
    var selectorRules = {};
    function validate(inputElement, rule) {
        var error = getParent(inputElement, opts.inputSelector).querySelector(
                opts.errorSelector
                );
        var message;
        // takes out rules of selector
        var ruled = selectorRules[rule.selector];
        // loop through rules & check
        // if error exists , stop
        for (var i = 0; i < ruled.length; ++i) {
            switch (inputElement.type) {
                case "radio":
                case "checkbox":
                    message = ruled[i](form.querySelector(rule.selector + ":checked"));
                    break;
                default:
                    message = ruled[i](inputElement.value);
            }
            if (message)
                break;
        }
        if (error) {
            if (message) {
                error.innerText = message;
                getParent(inputElement, opts.inputSelector).classList.add("invalid");
            } else {
                error.innerText = " ";
                getParent(inputElement, opts.inputSelector).classList.remove("invalid");
            }
        }

        return !message;
    }
    var form = document.querySelector(opts.form);
    if (form) {
        form.onsubmit = function (e) {
            e.preventDefault();
            var isValid = true;
            opts.rules.forEach(function (rule) {
                var inputElement = form.querySelector(rule.selector);
                var valid = validate(inputElement, rule);
                if (!valid) {
                    isValid = false;
                }
            });
            if (isValid) {
// submit with js
                if (typeof opts.onSubmit === "function") {
                    var formData = form.querySelectorAll("[name]");
                    var formValue = Array.from(formData).reduce(function (values, input) {
                        switch (input.type) {
                            case "file":
                                getParent(input, opts.inputSelector).querySelector(
                                        ".custom-file-upload"
                                        ).innerHTML = "Your file is here !";
                                values[input.name] = input.files;
                                break;
                            case "checkbox":
                                if (input.matches(":checked"))
                                    return values;
                                if (!Array.isArray(values[input.name])) {
                                    values[input.name] = [];
                                }
                                values[input.name].push();
                                break;
                            case "radio":
                                values[input.name] = form.querySelector(
                                        'input[type="' + input.type + '"]:checked'
                                        ).value;
                                break;
                            default:
                                values[input.name] = input.value;
                        }
                        return values;
                    }, {});
                    opts.onSubmit(formValue);
                } // submit with default event
                else {
                    form.submit();
                }
            }
        };
        // loop through and process ( events )
        opts.rules.forEach(function (rule) {
            // save rules for each input
            if (Array.isArray(selectorRules[rule.selector])) {
                selectorRules[rule.selector].push(rule.test);
            } else {
                selectorRules[rule.selector] = [rule.test];
            }

            var inputElements = form.querySelectorAll(rule.selector);
            Array.from(inputElements).forEach(function (inputElement) {
                // blur out of input
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                };
                inputElement.onchange = function () {
                    var error = getParent(inputElement, opts.inputSelector).querySelector(
                            opts.errorSelector
                            );
                    getParent(inputElement, opts.inputSelector).classList.remove(
                            "invalid"
                            );
                    error.innerText = " ";
                };
                // while input
                inputElement.oninput = function () {
                    var error = getParent(inputElement, opts.inputSelector).querySelector(
                            opts.errorSelector
                            );
                    getParent(inputElement, opts.inputSelector).classList.remove(
                            "invalid"
                            );
                    error.innerText = " ";
                };
            });
        });
    }
}

// Định nghĩa rule
// 1. Khi có lỗi -> Trả ra msg lỗi
// 2. Khi ko có lỗi -> ko trả ra gì (undefined)
validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value ? undefined : "Please enter your information !";
        },
    };
};
validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
            return regex.test(value)
                    ? undefined
                    : "Please enter your Email correctly !";
        },
    };
};
validator.minLength = function (selector, min) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min
                    ? undefined
                    : `Please enter a minimum length of ${min}`;
        },
    };
};
validator.checkPass = function (selector, getPass) {
    return {
        selector: selector,
        test: function (value) {
            return value.length != 0
                    ? value === getPass()
                    ? undefined
                    : `Passwords do not match !`
                    : "Please enter your password first!";
        },
    };
};
validator.phone = (selector) => {
    return {
        selector: selector,
        test: function (value) {
            return /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/.test(value)
                    ? undefined
                    : "Please enter a real phone number ! ( if you are a vietnamese... )";
        },
    };
};
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

function addToCart(carId) {
    $.ajax({
        url: 'home?state=cart&action=add',
        type: 'POST',
        data: {
            state: 'cart',
            action: 'add',
            item: carId
        },
        success: function (response) {
            if (response.success) {
                showNoti("fa fa-check", "Success!", response.message, "info");
            } else {
                showNoti("fa fa-exclamation-triangle", "Failed!", response.message, "warning");
            }
        },
        error: function (xhr, status, error) {
            console.error("Error: ", status, error);
            showNoti("fa fa-times", "Error!", "Failed to add item to cart.", "danger");
        }
    });
}

function deleteCartItem(itemId) {
    $.ajax({
        url: 'home?state=cart&action=delete',
        type: 'POST',
        data: {
            state: 'cart',
            action: 'delete',
            item: itemId
        },
        success: function (response) {
            console.log(response)
            if (response.success) {
                $('#form-del-' + itemId).closest('.cart-item').remove(); // Example: Remove the item's container
                showNoti("fa fa-check", "Success!", response.message, "success");
            } else {
                showNoti("fa fa-exclamation-triangle", "Failed!", response.message, "warning");
            }
        },
        error: function (error) {
            console.log(error);
            showNoti("fa fa-times", "Error!", "Failed to delete item from cart.", "danger");
        }
    });
}

function showNoti(icon, title, msg, type) {
    var notificationIcon = icon;
    var notificationTitle = title;
    var notificationMessage = msg;
    var notificationType = type;
    var notificationDelay = 1000;
    var notificationAnimationEnter = "animated fadeInDown";
    var notificationAnimationExit = "animated fadeOutUp";
    $.notify({
        icon: notificationIcon,
        title: notificationTitle,
        message: notificationMessage,
    }, {
        element: "body",
        position: null,
        type: notificationType,
        allow_dismiss: true,
        newest_on_top: false,
        placement: {
            from: "top",
            align: "right",
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
        delay: notificationDelay,
        animate: {
            enter: notificationAnimationEnter,
            exit: notificationAnimationExit,
        },
        icon_type: "class",
        template: '<div class="toast" role="alert" aria-live="assertive" aria-atomic="true">' +
                '<div class="toast-header">' +
                '<i class="' + notificationIcon + '" aria-hidden="true"></i>' +
                '  <strong class="m-auto">' + notificationTitle + '</strong>' +
                '  <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>' +
                '</div>' +
                '<div class="toast-body">' +
                notificationMessage +
                '</div>' +
                '</div>',
    });
}


function autocomplete(inp, arr) {
    var currentFocus;
    inp.addEventListener("input", function (e) {
        var dropdown,
                item,
                i,
                val = this.value;
        closeAllLists();
        if (!val) {
            return false;
        }
        currentFocus = -1;
        dropdown = document.getElementById(this.id + "Dropdown");
        dropdown.innerHTML = "";
        dropdown.style.display = "block";
        for (i = 0; i < arr.length; i++) {
            if (arr[i].substr(0, val.length).toUpperCase() === val.toUpperCase()) {
                item = document.createElement("li");
                item.classList.add("dropdown-item");
                item.innerHTML =
                        "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                item.innerHTML += arr[i].substr(val.length);
                item.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                item.addEventListener("click", function (e) {
                    inp.value = this.getElementsByTagName("input")[0].value;
                    closeAllLists();
                });
                dropdown.appendChild(item);
            }
        }
    });
    inp.addEventListener("keydown", function (e) {
        var x = document.getElementById(this.id + "Dropdown");
        if (x)
            x = x.getElementsByTagName("li");
        if (e.keyCode == 40) {
            currentFocus++;
            addActive(x);
        } else if (e.keyCode == 38) {
            currentFocus--;
            addActive(x);
        } else if (e.keyCode == 13) {
            e.preventDefault();
            if (currentFocus > -1) {
                if (x)
                    x[currentFocus].click();
            }
        }
    });
    function addActive(x) {
        if (!x)
            return false;
        removeActive(x);
        if (currentFocus >= x.length)
            currentFocus = 0;
        if (currentFocus < 0)
            currentFocus = x.length - 1;
        x[currentFocus].classList.add("autocomplete-active");
    }

    function removeActive(x) {
        for (var i = 0; i < x.length; i++) {
            x[i].classList.remove("autocomplete-active");
        }
    }

    function closeAllLists(elmnt) {
        var x = document.getElementsByClassName("dropdown-menu");
        for (var i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
    }

    document.addEventListener("click", function (e) {
        closeAllLists(e.target);
    });
}


const searchBox = document.getElementById("searchBox");
const searchProp = document.getElementById("searchProp");
const carCards = document.querySelectorAll(".car-card");
const alert = document.querySelector(".noCar");
const brandItems = document.querySelectorAll(".brandItems");
const cateItems = document.querySelectorAll(".cateItems");
searchBox.addEventListener("input", function () {
    const searchTerm = searchBox.value.toLowerCase();
    carCards.forEach((card) => {
        const dataName = card.getAttribute("data-name").toLowerCase();

        return dataName.includes(searchTerm)
                ? ((card.style.display = "block"), (alert.style.display = "none"))
                : ((card.style.display = "none"), (alert.style.display = "block"));
    });
});
searchProp.addEventListener("input", function () {
    const searchTerm = searchProp.value.toLowerCase();
    let dataName = "";
    brandItems.forEach((brand) => {
        dataName = brand.getAttribute("data-name").toLowerCase();
        console.log(dataName)
        return dataName.includes(searchTerm)
                ? (brand.style.display = "block")
                : (brand.style.display = "none");
    });
    cateItems.forEach((cate) => {
        dataName = cate.getAttribute("data-name").toLowerCase();
        console.log(dataName)
        return dataName.includes(searchTerm)
                ? (cate.style.display = "block")
                : (cate.style.display = "none");
    });
});
$(document).ready(function () {
    const items = $('.car-card');
    const applyFilters = () => {
        const selectedCategories = [];
        const selectedBrands = [];
        const origin = $('#originInput').val().toLowerCase();
        const priceRange = $('#priceInput').val();
        const yearStart = $('#yearStartInput').val();
        const yearEnd = $('#yearEndInput').val();
        $('.checkbox_animated:checked').each(function () {
            const cateId = $(this).data('cate-id');
            const brandId = $(this).data('brand-id');
            if (cateId) {
                const label = this.closest('div').querySelector('label');
                const cateName = label.querySelector('.name').textContent;
                selectedCategories.push(cateName);
            }
            if (brandId) {
                const label = this.closest('div').querySelector('label');
                const brandName = label.querySelector('.name').textContent;
                selectedBrands.push(brandName);
            }
        });
        if (selectedCategories.length == 0 && selectedBrands.length == 0 && !origin && !priceRange && !yearStart && !yearEnd) {
            items.removeClass('hidden');
        } else {
            items.each(function () {
                const item = $(this);
                const itemCategory = item.data('cate');
                const itemBrand = item.data('brand');
                const itemOrigin = item.data('origin');
                const itemPrice = parseFloat(item.data('price'));
                const itemYear = parseInt(item.data('year'));
                console.log(itemOrigin)
                console.log(itemCategory)
                console.log(itemBrand)
                let isMatch = true;
                if (selectedCategories.length && !selectedCategories.includes(itemCategory)) {
                    isMatch = false;
                }
                if (selectedBrands.length && !selectedBrands.includes(itemBrand)) {
                    isMatch = false;
                }
                if (origin && !itemOrigin.includes(origin)) {
                    isMatch = false;
                }
                if (priceRange) {
                    const [minPrice, maxPrice] = priceRange.split(';').map(Number);
                    if (itemPrice < minPrice || itemPrice > maxPrice) {
                        isMatch = false;
                    }
                }
                if (yearStart && yearEnd) {
                    const yearStartInt = parseInt(yearStart);
                    const yearEndInt = parseInt(yearEnd);
                    if (itemYear < yearStartInt || itemYear > yearEndInt) {
                        isMatch = false;
                    }
                }

                if (isMatch) {
                    item.removeClass('hidden');
                } else {
                    item.addClass('hidden');
                }
            });
        }
    };
    const resetFilters = () => {
        $('.checkbox_animated').prop('checked', false);
        $('#originInput').val('');
        $('#priceInput').val('');
        $('#yearStartInput').val('');
        $('#yearEndInput').val('');
        items.removeClass('hidden');
    };
    $('.checkbox_animated').on('change', applyFilters);
    $('#originInput').on('input', applyFilters);
    $('#priceInput').on('input', applyFilters);
    $('#yearStartInput, #yearEndInput').on('change', applyFilters);
    $('#resetFilters').on('click', resetFilters);
});
