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

function combineTel()
{
	$("#member_tel").attr({
		value: $("#tel1").val() + "-" + $("#tel2").val() + "-" + $("#tel3").val()
	});
}