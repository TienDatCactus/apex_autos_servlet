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
        ? value.includes(getPass())
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
      return /(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/.test(value) ? undefined : "Please enter a real phone number ! ( if you are a vietnamese... )";
    }
  }
}


const termAccept = document.querySelector('.terms');

["change", "DOMContentLoaded"].forEach((e) => document.addEventListener(e, function () {
  if (termAccept.checked) {
    document.querySelector("button[type='submit']").style = "opacity: 1; cursor: pointer;";
    document.querySelector("button[type='submit']").disabled = false;
  } else {
    document.querySelector("button[type='submit']").style = "opacity: 0.6; cursor: not-allowed;";
    document.querySelector("button[type='submit']").disabled = true;
  }
}))