$(document).ready(function() { 	 
	$('tr[role=row]').bind('click', function(){  
        var contentWidth = 1150;
        $('body').css('zoom', $('body').width() / contentWidth);
    } 
	);
});