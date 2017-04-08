$(document).ready(function() {    
    $("#clockedInDialog").dialog({
        autoOpen: false,
        draggable: false,
        title: "Success",
        buttons: {
         'Ok' : function() {
          $(this).dialog("close");
         }
        }
    });

	$("#clockedOutDialog").dialog({
        autoOpen: false,
        draggable: false,
        title: "Success",
        buttons: {
         'Ok' : function() {
          $(this).dialog("close");
         }
        }
    });

  $("#wrongPasswordDialog").dialog({
        autoOpen: false,
        draggable: false,
        title: "Login Failed",
        buttons: {
         'Ok' : function() {
          $(this).dialog("close");
         }
        }
    });

    $("#user").select2();
});