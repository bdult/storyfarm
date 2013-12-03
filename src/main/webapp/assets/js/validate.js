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
    
    $.validator.addMethod("specialLetter", function(value, element){
    	return this.optional(element) || !/[^a-z0-9ㄱ-ㅎ가-힣]/i.test(value);
    	
    }, "");
    
    $.validator.addMethod("numberAndAlphabet", function(value, element){
    	return this.optional(element) || !/[^a-z0-9]/i.test(value);
    	
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
		value: $("#cel1").val() + "-" + $("#cel2").val() + "-" + $("#cel3").val()
	});
};

function loginValidateCall(){
	//로그인 validate 체크
	$("#login").validate({
		rules: {
			id: {
				required: true,
				numberAndAlphabet: true
			},
			pwd: "required"
		},
		messages: {
			id: {
				required: "아이디를 입력하세요.",
				numberAndAlphabet: "영문 및 숫자만 입력해 주세요."
			},
			pwd: "비밀번호를 입력하세요."
		}
	});
};
	
function findValidateCall(){
	//아이디 / 비밀번호 찾기 validate 체크
	$("#memberFind-tel").validate({
		rules: {
			member_id: {
				required: true,
				numberAndAlphabet: true
			},
			member_nm: {
				required: true,
				specialLetter: true
			},
			cel1: { valueNotEquals: "선택" },
			cel2: {
				required: true,
				maxlength: 8,
			    number: true
			}
		},
		messages: {
			member_id: {
				required: "아이디를 입력하세요.",
				numberAndAlphabet: "영문 및 숫자만 입력해 주세요."
			},
			member_nm: {
				required: "이름를 입력하세요.",
				specialLetter: "특수문자는 입력불가 합니다."
			},
			cel1: { valueNotEquals: "휴대폰 번호를 선택해 주세요" },
			cel2: {
				required: "휴대폰 번호를 입력해 주세요",
				maxlength: "휴대폰 번호 8자리 이하로 입력해 주세요",
				number: "숫자만 입력해 주세요"
			}
		}
	});
	
	$("#memberFind-email").validate({
		rules: {
			member_id: {
				required: true,
				numberAndAlphabet: true
			},
			member_nm: {
				required: true,
				specialLetter: true
			},
			member_email: {
				required: true,
				email: true
			}
		},
		messages: {
			member_id: {
				required: "아이디를 입력하세요.",
				numberAndAlphabet: "영문 및 숫자만 입력해 주세요."
			},
			member_nm: {
				required: "이름를 입력하세요.",
				specialLetter: "특수문자는 입력불가 합니다."
			},
			member_email: {
				required: "이메일 주소를 입력해 주세요",
				email: "이메일 주소를 정확이 입력해 주세요"
			}
		}
	});

	$("#memberFind-birth").validate({
		rules: {
			member_id: {
				required: true,
				numberAndAlphabet: true
			},
			member_nm: {
				required: true,
				specialLetter: true
			},
			member_year: { valueNotEquals: "년도" },
			member_month: { valueNotEquals: "월" },
			member_day: { valueNotEquals: "일" },
			member_gender: "required"
		},
		messages: {
			member_id: {
				required: "아이디를 입력하세요.",
				numberAndAlphabet: "영문 및 숫자만 입력해 주세요."
			},
			member_nm: {
				required: "이름를 입력하세요.",
				specialLetter: "특수문자는 입력불가 합니다."
			},
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
			member_id: {
				required: true,
				specialLetter: true,
				rangelength: [4, 15]
			},
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
			cel1: { valueNotEquals: "선택" },
			cel2: {
				required: true,
				maxlength: 4,
			    number: true
			},
			cel3: {
				required: true,
				maxlength: 4,
			    number: true
			},
			member_addr_1: "required",
			member_addr_2: "required",
			member_gender: "required",
			member_year: { valueNotEquals: "년도" },
			member_month: { valueNotEquals: "월" },
			member_day: { valueNotEquals: "일" }
		},
		messages: {
			member_id: {
				required: "아이디를 입력하세요.",
				specialLetter: "특수문자는 입력불가 합니다.",
				rangelength: "아이디를 4자리 이상 15자리 이하로 입력해 주세요."
			},
			member_nm: "이름을 입력해 주세요.",
			member_pw: {
				required: "비밀번호를 입력해 주세요.",
				rangelength: "비밀번호 6-10자리를 입력해 주세요."
			},
			member_pw_again: "비밀번호가 서로 다릅니다.",
			member_email: "이메일 주소를 정확히 입력해 주세요",
			cel1: { valueNotEquals: "휴대폰 번호를 선택해 주세요" },
			cel2: {
				required: "휴대폰 앞자리 번호를 입력해 주세요",
				maxlength: "4자리 이하로 입력해 주세요",
				number: "숫자만 입력해 주세요"
			},
			cel3: {
				required: "휴대폰 뒷자리 번호를 입력해 주세요",
				maxlength: "4자리 이하로 입력해 주세요",
				number: "숫자만 입력해 주세요"
			},
			member_addr_1: "주소를 입력해 주세요",
			member_addr_2: "상세주소를 입력해 주세요",
			member_gender: "성별을 입력하세요.",
			member_year: { valueNotEquals: "년도를 선택해 주세요." },
			member_month: { valueNotEquals: "월을 선택해 주세요." },
			member_day: { valueNotEquals: "일을 선택해 주세요." }
		}
	});
};

