<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
 
<script>
$.fn.setPreview = function(opt){
    "use strict"
    var defaultOpt = {
        inputFile: $(this),
        img: null,
        w: 200,
        h: 200
    };
    $.extend(defaultOpt, opt);
 
    var previewImage = function(){
        if (!defaultOpt.inputFile || !defaultOpt.img) return;
 
        var inputFile = defaultOpt.inputFile.get(0);
        var img       = defaultOpt.img.get(0);
 
        // FileReader
        if (window.FileReader) {
            // image 파일만
            if (!inputFile.files[0].type.match(/image\//)) return;
 
            // preview
            try {
                var reader = new FileReader();
                reader.onload = function(e){
                    img.src = e.target.result;
                    img.style.width  = defaultOpt.w+'px';
                    img.style.height = defaultOpt.h+'px';
                    img.style.display = '';
                }
                reader.readAsDataURL(inputFile.files[0]);
            } catch (e) {
                // exception...
            }
        // img.filters (MSIE)
        } else if (img.filters) {
            inputFile.select();
            inputFile.blur();
            var imgSrc = document.selection.createRange().text;
 
            img.style.width  = defaultOpt.w+'px';
            img.style.height = defaultOpt.h+'px';
            img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";            
            img.style.display = '';
        // no support
        } else {
            // Safari5, ...
        }
    };
 
    // onchange
    $(this).change(function(){
        previewImage();
    });
};
 
 
$(document).ready(function(){
    var opt = {
        img: $('#img_preview'),
        w: 300,
        h: 300
    };
 
    $('#input_file').setPreview(opt);
});
</script>
</head>
<body>

	<h2>작품 올리기</h2>
	
	<form:form action="complete_upload" method="post" enctype="multipart/form-data" commandName="itemRegisterRequest">
	<p>
		<label>작품 주제:<br>
		<form:input path="ItemTheme" />
		<form:errors path="ItemTheme"/>
		</label>
	</p>
		<p>
		<label>작품 해설:<br>
		<form:input path="ItemInfo" />
		<form:errors path="ItemInfo"/>
		</label>
	</p>
		<p>
		<label>작품 크기:<br>
		<form:input path="ItemSize" />
		<form:errors path="ItemSize"/>
		</label>
	</p>
		<p>
		<label>작품 가격:<br>
		<form:input path="ItemPrice" />
		<form:errors path="ItemPrice"/>
		</label>
	</p>
	
	<p>
					<label>파일<br>
					<input type="file" name="file" required="required" id="input_file" /></br>
					<img id="img_preview" style="display:none;"/>
					
	</p>
	
	
	<!--<p>
	
		
		<label>그림 파일:<br>
		<form:input type="file" path="file" id="input_file"/>
		</label>
	</p>
	<p>
		<img id="img_preview" style="display:none;"/>
	</p>
	-->
	
	<p>
		<label>작품 스타일:<br>
		<form:input path="ItemStyle" />
		<form:errors path="ItemStyle"/>
		</label>
	</p>


	<input type="submit" value="준비 완료">
	</form:form>

</body>
</html>