<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iis_demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello Docker!<br />
            <br />
            Configuration:<br />
            env1=<%= Env1 %> (from appSettings in web.config)<br />
            env2=<%= Env2 %> (from OS environment variable)<br />
        </div>
        <br />
        <div>
            Content of C:\Windows\System32\drivers\etc\hosts:
            <pre><%= Hosts %></pre>
        </div>
    </form>
</body>
</html>
