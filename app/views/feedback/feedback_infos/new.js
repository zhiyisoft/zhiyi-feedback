$("#add_feedback").before("<%= j render :partial => "feedback/feedback_infos/feedback" %>");
$("#add_feedback").remove();
$("#feedback_dialog").click();