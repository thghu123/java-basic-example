<%@page import="pm.dao.EmpDAO"%>
<%@page import="pm.vo.EmpVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>������</h1>
	<article>
		<table border = "1" style = "width : 250px">
			<colgroup>
				<col width = "80px"/>
				<col width = "*"/>
			</colgroup>
			
			<thead>
			
				<th>���</th>
				<th>�̸�</th>
			</thead>	
			<tbody>
				<%
				//empDAO�� ���Ͽ� ǥ���� ������ list<EmpVO>�� �޾Ƴ���.
				List<EmpVO> list = EmpDAO.getTotal();//static�̴ϱ� ������ �ʿ�� ����
				 if(list != null)
				 {
					 for(EmpVO vo : list){
				%>
						<tr>
							<td><%=vo.getEmpno() %></td>
							<td><%=vo.getEname() %></td>
						
						</tr>
						 
				<%
					 }//for��
					 
					 
				 }//if��
				 %>


				<td></td>
				<td></td>
			</tbody>	
			
			
		</table>
	</article>

</body>
</html>