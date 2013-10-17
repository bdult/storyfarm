function birth()
{
	for(var i=2013; i >= 1900; i--){
		$("#yearBox").append("<option value=" + i +">" + i + "</option>");
	}
	for(var i=1; i <= 12; i++){
		$("#monthBox").append("<option value=" + i +">" + i + "</option>");
	}
	for(var i=1; i <= 31; i++){
		$("#dayBox").append("<option value=" + i +">" + i + "</option>");
	}
}

function combineEmail()
{
	$("#member_email").attr({
		value: $("#email1").val() + "@" + $("#email2").val()
	});
}

function combineCel()
{
	$("member_cel").attr({
		value: $("#cel1").val() + "-" + $("#cel2").val() + "-" + $("#cel3").val()
	});
}