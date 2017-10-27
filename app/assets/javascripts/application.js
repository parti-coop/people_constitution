//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require redactor2_rails/config
//= require redactor
//= require redactor2_rails/langs/ko

$(function(){
  // Initialize Redactor
  $('.redactor').redactor({
    buttons: ['format', 'bold', 'italic', 'deleted', 'lists', 'image', 'file', 'link', 'horizontalrule'],
    callbacks: {
      imageUploadError: function(json, xhr) {
        UnobtrusiveFlash.showFlashMessage(json.error.data[0], {type: 'notice'})
      }
    },
    toolbarFixed: true,
    plugins: ['fontcolor']
  });
  $('.redactor .redactor-editor').prop('contenteditable', true);
  $('select.dropdown').dropdown();
});
