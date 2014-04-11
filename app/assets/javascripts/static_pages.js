$(document).ready(function(){
	$('.hover-effect').click(function(){
		title = $(this).attr('data-title');
		$('h4#project-modal-label').text(title);
	})
})