// faq   
$(function(){
	/* faq.jsp에서 따로 사용
		//리스트 on & off ==========================
		$(".fa").css("cursor","pointer");
 
		$(".fa").click(function(){
			var num = $(".fa").index(this);
 
			if($(this).attr("id") == "out"){
				$(".fa").each(function(i, e){
					if(i == num){
						$(this).attr("id","on");
						$("#dpno"+i).show();
					}else{
						$(this).attr("id","out");
						$("#dpno"+i).hide();
					}
				});
			}else{
				$(".fa").eq(num).attr("id","out");
				$("#dpno"+num).hide();
			}
		});
		//리스트 on & off ==========================
	});
	 * */
//

// roll over
 $(function() {
   $("img.rollimg").mouseover(function() {
     $(this).attr("src", $(this).attr("src").replace("_off","_on"));

   });
   $("img.rollimg").mouseout(function() {
     $(this).attr("src", $(this).attr("src").replace("_on", "_off"));
   });
 });



// layer show
function showHide(layer){ 
      if (document.getElementById(layer).style.display=="none"){ 
      document.getElementById(layer).style.display = "block" ;
      } else {
      document.getElementById(layer).style.display = "none" ;
      } 
   } 

// input placeholder
(function($){
    $(document).ready(function(){
        var inTxt = $('.placeholder').find('input');
         
        //기본적으로 value값을 가지고 있을때 
        inTxt.each(function(){
            if($(this).val() != ''){
                $(this).addClass('focus');  
            };
        });
 
        //포커스가 있을때
        inTxt.on('focusin', function(){
            $(this).addClass('focus');
        });
         
        //포커스가 사라졌을때
        inTxt.on('focusout', function(){
            if($(this).val() === '') {
                $(this).removeClass('focus');   
            } else {
                $(this).addClass('focus');      
            }
        });
 
         
        $('.placeholder').on('click', function(){
            $(this).find('input').focus();
        });
    });
})(window.jQuery);

(function($){
    $(document).ready(function(){
        var inTxt = $('.placeholder').find('textarea');
         
        //기본적으로 value값을 가지고 있을때 
        inTxt.each(function(){
            if($(this).val() != ''){
                $(this).addClass('focus');  
            };
        });
 
        //포커스가 있을때
        inTxt.on('focusin', function(){
            $(this).addClass('focus');
        });
         
        //포커스가 사라졌을때
        inTxt.on('focusout', function(){
            if($(this).val() === '') {
                $(this).removeClass('focus');   
            } else {
                $(this).addClass('focus');      
            }
        });
 
         
        $('.placeholder').on('click', function(){
            $(this).find('textarea').focus();
        });
    });
})(window.jQuery);


