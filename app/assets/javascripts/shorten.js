function clearForm(input){
  $(input).val("");
}

$( document ).ajaxComplete(function() {
 clearForm($("#url"));
});

$("form").on("submit", function() {
  var urlInput = $(this).find("#url");
  clearForm(urlInput);
  $.ajax({
    url: $(this).action,
    headers: {
      Accept : "text/javascript; charset=utf-8",
      "Content-Type": 'application/x-www-form-urlencoded; charset=UTF-8'
    },
    type: "POST",
    data: {
      "url": urlInput.val(),
      "authenticity_token": $(this).find("#authenticity_token").val()
    }  
  });
});
