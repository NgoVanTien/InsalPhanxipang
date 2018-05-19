$('#datepicker').datepicker({ format: 'yyyy-mm-dd' })
$("#show").on("click", '.id-bt', function() {
  var id_bt = $(this).attr("id-bt");
  var url = "/admin/bills/";
  $.ajax({
    url: url,
    type: "GET",
    dataType: "script",
    data: { "id_bt": id_bt },
  });
})
