// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.ui.datepicker
//= require jquery_nested_form
//= require foundation
//= require turbolinks

//= require_tree .

$(function(){ $(document).foundation(); });

// Datepicker code
$(function() {
  $(".datepicker").datepicker({
  	changeMonth: true,
    changeYear: true,
    //format: 'mm/dd/YYYY'
    dateFormat: "yy-mm-dd"
  });

  //FOR WALKTHROUGH
  //check which checkboxes/radio boxes need to be checked on load, then add css
  $( document ).ready(function(){

  	//iterate through radio boxes first
  	$('input:radio').each(function() {
  		
  		if(this.checked==true){

  			if($(this).val()=="Yes"){

				$(this).parent().addClass('radio-checked-yes');
			}
			else if($(this).val()=="No"){
				$(this).parent().addClass('radio-checked-no');
			}
			else{
				$(this).parent().addClass('radio-checked-dk');
			}
  		}

  	})

  	//iterate checkboxes
  	$('input:checkbox').each(function() {
  		if(this.checked==true){
  			console.log("!");
  			$(this).parent().addClass('boxed-checked');
  		}
  		

  	})

  });


  	// alternate css checkbox groups

	$('.checkbox').change(function(){
		$(this).toggleClass('boxed-checked');
	})

	
	// alternate css radio groups

	$('input:radio').change(function(){
		var theName = this.name;

		//Iterate through all other radio buttons with the same name
		//attribute to toggle their selection css.

		//NEED TO DO THIS FOR ALLLLLLL RADIO BUTTONS, not just ones with same name
		//except you can't use the radio-checked-xx thing because these don't cross over

		//basically need to go through all checkboxes on load and see if they're filled in
 //(check if attributed checked="checked". BUT can only run this once on load)		//and what their val is. Depending on that, add class.
		$('input:radio').each(function() {
			if(this.name==theName){
				if($(this).is(':checked')){
					if($(this).val()=="Yes"){
						
						$(this).parent().addClass('radio-checked-yes');
					}
					else if($(this).val()=="No"){
						$(this).parent().addClass('radio-checked-no');
						
					}
					else{
						$(this).parent().addClass('radio-checked-dk');
					}



				} 
				else{
					if($(this).val()=="Yes"){
						$(this).parent().removeClass('radio-checked-yes');
					}
					else if($(this).val()=="No"){
						$(this).parent().removeClass('radio-checked-no');
					}
					else{
						$(this).parent().removeClass('radio-checked-dk');
					}
					
				}

			};
		
		});

	});
	


});



// nav bar shrink

// $(document).scroll(function() {

//     if ($(this).scrollTop() >= 50) {

//     	// $(".contain-to-grid").addClass("padding-on-my-header");
//     	$(".top-margin").css("height", "45px");
//     	$(".top-margin").css("padding-top", "0px");
    	
//         // $('#logo-image').attr('src', 'img/Acme_Monogram_Colour.png')
        

//     }
//     if ($(this).scrollTop() < 50) {

//         // $(".contain-to-grid").removeClass("padding-on-my-header");
// 		$(".top-margin").css("height", "55px");
// 		$(".top-margin").css("padding-top", "5px");
        
//     }
// });

//bottom nav bar

//save form on click
$(document).ready(function(){

    $('.save-button').click(function(){
    	$('.form-sub').submit();
    });
});

//go to new note on page

