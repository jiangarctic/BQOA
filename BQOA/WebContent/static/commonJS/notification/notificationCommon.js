/**
 * 
 */

      $('.btn').tooltip('hide');

      //Popover
      $('.btn').popover('hide');

      //Dropdown
      $('.dropdown-toggle').dropdown();

      //Tiny Scrollbar
      $('#scrollbar').tinyscrollbar();
      $('#scrollbar-two').tinyscrollbar();


      //Alertify JS
      $ = function (id) {
        return document.getElementById(id);
      },
      reset = function () {
        $("toggleCSS").href = "css/alertify.core.css";
        alertify.set({
          labels: {
            ok: "OK",
            cancel: "Cancel"
          },
          delay: 5000,
          buttonReverse: false,
          buttonFocus: "ok"
        });
      };

      // Standard Dialogs
      $("alert").onclick = function () {
        reset();
        alertify.alert("This is an alert Dialog");
        return false;
      };

      $("confirm").onclick = function () {
        reset();
        alertify.confirm("This is a confirm dialog", function (e) {
          if (e) {
            alertify.success("You've clicked OK");
          } else {
            alertify.error("You've clicked Cancel");
          }
        });
        return false;
      };

      $("prompt").onclick = function () {
        reset();
        alertify.prompt("This is a prompt dialog", function (e, str) {
          if (e) {
            alertify.success("You've clicked OK and typed: " + str);
          } else {
            alertify.error("You've clicked Cancel");
          }
        }, "Default Value");
        return false;
      };

      // Standard Dialogs
      $("notification").onclick = function () {
        reset();
        alertify.log("Standard log message");
        return false;
      };

      $("success").onclick = function () {
        reset();
        alertify.success("Success log message");
        return false;
      };

      $("error").onclick = function () {
        reset();
        alertify.error("Error log message");
        return false;
      };

      // Custom Properties
      $("delay").onclick = function () {
        reset();
        alertify.set({
          delay: 10000
        });
        alertify.log("Hiding in 10 seconds");
        return false;
      };

      $("forever").onclick = function () {
        reset();
        alertify.log("Will stay until clicked", "", 0);
        return false;
      };