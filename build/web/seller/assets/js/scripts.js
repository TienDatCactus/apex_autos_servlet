/*!
 * Start Bootstrap - SB Admin v7.0.7 (https://startbootstrap.com/template/sb-admin)
 * Copyright 2013-2023 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
 */
//
// Scripts
//

window.addEventListener("DOMContentLoaded", (event) => {
  // Toggle the side navigation
  const sidebarToggle = document.body.querySelector("#sidebarToggle");
  if (sidebarToggle) {
    // Uncomment Below to persist sidebar toggle between refreshes
    // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
    //     document.body.classList.toggle('sb-sidenav-toggled');
    // }
    sidebarToggle.addEventListener("click", (event) => {
      event.preventDefault();
      document.body.classList.toggle("sb-sidenav-toggled");
      localStorage.setItem(
        "sb|sidebar-toggle",
        document.body.classList.contains("sb-sidenav-toggled")
      );
    });
  }
});

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
      if (message) break;
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
                if (input.matches(":checked")) return values;

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
    if (x) x = x.getElementsByTagName("li");
    if (e.keyCode == 40) {
      currentFocus++;
      addActive(x);
    } else if (e.keyCode == 38) {
      currentFocus--;
      addActive(x);
    } else if (e.keyCode == 13) {
      e.preventDefault();
      if (currentFocus > -1) {
        if (x) x[currentFocus].click();
      }
    }
  });

  function addActive(x) {
    if (!x) return false;
    removeActive(x);
    if (currentFocus >= x.length) currentFocus = 0;
    if (currentFocus < 0) currentFocus = x.length - 1;
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
