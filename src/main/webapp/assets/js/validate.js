//validation init
function setValid(){
	$.validator.setDefaults({
		onkeyup:false,
		onclick:false,
		onfocusout:false,
		showErrors:function(errorMap, errorList) {
			if(errorList[0] != null){
				alert( errorList[0].message );	
			}
		}
	});

    $.validator.addMethod("valueNotEquals", function(value, element, arg){
        return arg != value;
    }, "");
    
};


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
};

function combineEmail()
{
	$("#member_email").attr({
		value: $("#email1").val() + "@" + $("#email2").val()
	});
};

function combineCel()
{
	$("#member_cel").attr({
		value: $("#member_cel1").val() + "-" + $("#member_cel2").val() + "-" + $("#member_cel3").val()
	});
};

function loginValidateCall(){
	//로그인 validate 체크
	$("#login").validate({
		rules: {
			id: "required", 
			pwd: "required"
		},
		messages: {
			id: "아이디를 입력하세요.",
			pwd: "비밀번호를 입력하세요."
		}
	});
};
	
function findValidateCall(){
	//아이디 / 비밀번호 찾기 validate 체크
	$("#memberFind-tel").validate({
		rules: {
			member_id: "required",
			member_nm: "required",
		},
		messages: {
			member_id: "아이디를 입력하세요.",
			member_nm: "이름를 입력하세요.",
		}
	});
	
	$("#memberFind-email").validate({
		rules: {
			member_id: "required",
			member_nm: "required",
			member_email: {
				required: true,
				email: true
			}
		},
		messages: {
			member_id: "아이디를 입력하세요.",
			member_nm: "이름를 입력하세요.",
			member_email: {
				required: "이메일 주소를 입력해 주세요",
				email: "이메일 주소를 정확이 입력해 주세요"
			}
		}
	});

	$("#memberFind-birth").validate({
		rules: {
			member_id: "required",
			member_nm: "required",
			member_year: { valueNotEquals: "년도" },
			member_month: { valueNotEquals: "월" },
			member_day: { valueNotEquals: "일" },
			member_gender: "required"
		},
		messages: {
			member_id: "아이디를 입력하세요.",
			member_nm: "이름를 입력하세요.",
			member_year: { valueNotEquals: "년도를 선택해 주세요." },
			member_month: { valueNotEquals: "월을 선택해 주세요." },
			member_day: { valueNotEquals: "일을 선택해 주세요." },
			member_gender: "성별을 입력하세요."
		}
	});
};

function signUpValidateCall(){
	//회원가입 validate 체크
	$("#joinForm").validate({
		rules: {
			member_id: "required",
			member_nm: "required",
		    member_pw: {
		    	required: true,
		        rangelength: [6, 10]
		    },
		    member_pw_again: {
		      equalTo: "#member_pw"
		    },
			member_email: {
				required: true,
				email: true
			},
			member_addr_1: "required",
			member_addr_2: "required",
			member_gender: "required",
			member_year: { valueNotEquals: "년도" },
			member_month: { valueNotEquals: "월" },
			member_day: { valueNotEquals: "일" }
		},
		messages: {
			member_id: "아이디를 입력해 주세요.",
			member_nm: "이름을 입력해 주세요.",
			member_pw: {
				required: "비밀번호를 입력해 주세요.",
				rangelength: "6-10자리를 입력해 주세요."
			},
			member_pw_again: "비밀번호가 서로 다릅니다.",
			email: "이메일 주소를 정확히 입력해 주세요",
			member_addr_1: "주소를 입력해 주세요",
			member_addr_2: "상세주소를 입력해 주세요",
			member_gender: "성별을 입력하세요.",
			member_year: { valueNotEquals: "년도를 선택해 주세요." },
			member_month: { valueNotEquals: "월을 선택해 주세요." },
			member_day: { valueNotEquals: "일을 선택해 주세요." }
		}
	});
};

function findIdCel2Func(){

	$("#cel2").rules("add",{
		required: true,
		maxlength: 8,
	    number: true,
		messages: { 
			required: "휴대폰 번호를 입력해 주세요",
			maxlength: "8자리 이하로 입력해 주세요",
			number: "숫자만 입력해 주세요"
		}
	});
};

function signUpCelFunc(){
	$("#member_cel2").rules("add",{
		required: true,
		maxlength: 4,
	    number: true,
		messages: { 
			required: "휴대폰 앞자리 번호를 입력해 주세요",
			maxlength: "4자리 이하로 입력해 주세요",
			number: "숫자만 입력해 주세요"
		}
	});
	$("#member_cel3").rules("add",{
		required: true,
		maxlength: 4,
	    number: true,
		messages: { 
			required: "휴대폰 뒷자리 번호를 입력해 주세요",
			maxlength: "4자리 이하로 입력해 주세요",
			number: "숫자만 입력해 주세요"
		}
	});
};
