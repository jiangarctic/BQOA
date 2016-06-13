<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div id='cssmenu'>
          <ul>
			<c:forEach var="menu" items="${allmenuList }">
			<c:if test="${menu.hasMenu }">
				<c:if test="${menu.MENU_NAME==currentMain_Menu }"><li class="active"></c:if>
				<c:if test="${menu.MENU_NAME!=currentMain_Menu }"><li></c:if>
              <a href='${menu.MENU_URL }'>
                <i class="fa fa-dashboard"></i>
                ${menu.MENU_NAME }
              </a>
              <ul>
              <c:forEach var="sub" items="${menu.subMenu }">
              <c:if test="${sub.hasMenu }">
              	<li><a href='${sub.MENU_URL }'>${sub.MENU_NAME }</a></li>
              </c:if>
              	
              </c:forEach>
              </ul>
            </li>
            </c:if>
			</c:forEach>
          </ul>
        </div>
        <!-- Top Nav End -->

        <!-- Sub Nav End -->
        <div class="sub-nav hidden-sm hidden-xs">
          <ul>
          <c:forEach var="menus" items="${allmenuList}">
   
         	<c:if test="${menus.MENU_NAME==currentMain_Menu }">
         		<c:forEach var="sub" items="${menus.subMenu }">
         		<c:if test="${sub.hasMenu }">
         		<c:if test="${sub.MENU_NAME==currentSub_Menu }">
         			<li class="hidden-sm hidden-xs">
              			<a href="${sub.MENU_URL }" class="selected">${sub.MENU_NAME }</a>
            		</li>
         			</c:if>
         			<c:if test="${sub.MENU_NAME!=currentSub_Menu }">
         			<li class="hidden-sm hidden-xs">
              			<a href="${sub.MENU_URL }">${sub.MENU_NAME }</a>
            		</li>
         			</c:if>
         		</c:if>
         			
         		</c:forEach>
         	</c:if>
          </c:forEach>
          </ul>

        </div>
