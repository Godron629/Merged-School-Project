 function selectText(divid) {
        if (document.selection) {
            var div = document.body.createTextRange();

            div.moveToElementText(document.getElementById(divid));
            div.select();
        }
        else {
            var div = document.createRange();
            div.setStartBefore(document.getElementById(divid));
            div.setEndAfter(document.getElementById(divid));

            window.getSelection().addRange(div);
        }
		$('divid').printElement();
		
    }