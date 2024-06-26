<%@ Page Language="VB" AutoEventWireup="false" %>
<%@ Import Namespace="System.IO" %>

<%
Dim filePath As String = "c:\"

If File.Exists(filePath) Then
    ' If the file exists, send a 302 redirect to 127.0.0.1
    Response.StatusCode = 302
    Response.RedirectLocation = "http://127.0.0.1"
    Response.End()
Else
    ' If the file does not exist, return a 503 status code
    Response.StatusCode = 503
    Response.StatusDescription = "Service Unavailable"
    Response.Write("503 Service Unavailable")
    Response.End()
End If
%>
