$(document).ready(function(){
	$('.hover-effect').click(function(){
		title = $(this).attr('data-title');
		name = $(this).attr('data-contact-name');
		job = $(this).attr('data-contact-occupation');
		phone = $(this).attr('data-contact-phone');
		description = $(this).attr('data-contact-description');

		$('h4#project-modal-label').html('<strong>' + title + '</strong>');
		$('span.c-name').text(name);
		$('span.c-occupation').text(job);
		$('span.c-phone').text(phone);
		$('p.contact-description').text(description);
	})
})