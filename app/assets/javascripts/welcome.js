function show_sign_up(){
  $('#side-box').show();
}

function join_modul(controller_name, user_id){
  var parameters = 'id=' + user_id + '&controller_name=' + controller_name;
  var url = '/module_users';
  $.ajax(url, {
	  method: 'post',
	  data: parameters,
	  asynchronous: true
	});
}
