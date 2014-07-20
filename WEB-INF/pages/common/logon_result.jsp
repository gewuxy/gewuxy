<%
 String going_to = (String)session.getAttribute("prePage");
 
 if(going_to != null) {
  response.sendRedirect(going_to);
  }
 %>
