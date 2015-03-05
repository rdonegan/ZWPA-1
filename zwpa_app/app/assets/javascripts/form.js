$( document ).ready(function(){
	

	//alternate view of check boxes
	$('.checkbox').on('click',function() {
		$(this).toggleClass('radio-check');
		console.log(this);
    });
})



