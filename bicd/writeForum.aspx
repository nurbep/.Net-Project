<%@ Page Language="C#" AutoEventWireup="true" CodeFile="writeForum.aspx.cs" Inherits="writeForum" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblForumTitle" runat="server" Text="Enter forum title"></asp:Label><asp:TextBox ID="txtForumTitle" runat="server"></asp:TextBox>
        <br />
         <asp:Label ID="lblForumDes" runat="server" Text="Enter forum description"></asp:Label><asp:TextBox ID="txtForumDes" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
