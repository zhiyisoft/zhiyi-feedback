$("#add_feedback").before("<%= j render :partial => "feedback/feedback_infos/feedback" %>");
$("#add_feedback").remove();
html2canvas( [ document.body ], {
  onrendered: function(canvas) {
    var imgData = $(canvas)[0].toDataURL();
    var w = $(canvas)[0].width,
        h = $(canvas)[0].height;
    $("#image").attr("src",imgData);
    $("#feedback_info_image").attr("value",imgData);
  }
});
$("#feedback_info_current_url").attr("value",window.location.href);
$("#feedback_dialog").click();