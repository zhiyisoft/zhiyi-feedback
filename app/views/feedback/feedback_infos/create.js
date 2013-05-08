<% if @flag %>
  $('#myModal').modal('hide');
  alert("提交成功！");
<% else %>
  $(".alert").show();
  $(".alert").html('<p>提交失败，请填写完整重试！</p>');
<% end %>
