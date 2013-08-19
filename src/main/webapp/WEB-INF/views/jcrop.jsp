<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-8">
		<img src="http://www2.hiren.info/desktopwallpapers/babies/cute-baby-with-nice-face.jpg" id="target" style="width: 300px; height: 300px;"/>

		<form name="thumbnail" action="/jquery/image_upload_crop.php" method="post">
			<input type="hidden" name="x1" value="" id="x1">
			<input type="hidden" name="y1" value="" id="y1">
			<input type="hidden" name="x2" value="" id="x2">
			<input type="hidden" name="y2" value="" id="y2">
			<input type="hidden" name="w" value="" id="w">
			<input type="hidden" name="h" value="" id="h">
			<input type="submit" class="button" name="upload_thumbnail" value="Save Thumbnail" id="save_thumb">
		</form>

	</div>
	<div class="col-lg-4">
		<div id="preview" style="width: 150px; height: 150px; overflow: hidden;">
			<img id="thumbnail" src="http://www2.hiren.info/desktopwallpapers/babies/cute-baby-with-nice-face.jpg" style="position: relative;" alt="Thumbnail Preview" style="width: 150px; height: 150px;" >
    </div>
	</div>
</div>

<script>
function preview(img, selection) { 

	var scaleX = 150 / selection.width;
  var scaleY = 150 / selection.height;

  $('#preview img').css({
      width: Math.round(scaleX * 300),
      height: Math.round(scaleY * 300),
      marginLeft: -Math.round(scaleX * selection.x1),
      marginTop: -Math.round(scaleY * selection.y1)
  });

	$('#x1').val(selection.x1);
	$('#y1').val(selection.y1);
	$('#x2').val(selection.x2);
	$('#y2').val(selection.y2);
	$('#w').val(selection.width);
	$('#h').val(selection.height);

} 


$(function(){
	 $('#target').imgAreaSelect({
     handles: true,
     onSelectEnd: preview,
     x1: 100, y1: 100, x2: 200, y2: 200
   });
});
</script>