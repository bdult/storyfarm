<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

                <h2 class="divTit"><img src="" alt="당첨자발표상세"></h2>
				<!-- location -->
				<div id="divLocation">
					<ul class="location">
						<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
							<c:choose>
								<c:when test="${ status.first }">
									<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
								</c:when>
								<c:when test="${ status.last }">
									<li class="current">${ obj.name }</li>
								</c:when>
								<c:otherwise>
									<li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
				</div>
				<!-- //location -->
                
              	<table class="view">
                <colgroup>
                <col width="98">
                <col width="*">
                </colgroup>
                <tbody>
                <tr>
               	  <th>제목</th>
                  <td colspan="3">${ writing.TITLE }</td>
                </tr>
                <tr>
					<th>게시일</th>
					<td scope="row">${ writing.REG_DT }</td>
					<th>조회수</th>
					<td scope="row">${ writing.HITS }</td>
                </tr>
                <tr>
                	<th>내용</th>
                  	<td class="vewTd" colspan="3">
                    	${ writing.CONTENTS } 
                  	</td>
                </tr>
                </tbody>
              </table>
                
                <div class="btnSc">
                	<a href="javascript:history.back();"><img src="../assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a> 
                </div>
                
