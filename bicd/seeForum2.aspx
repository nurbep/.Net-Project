<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seeForum2.aspx.cs" Inherits="seeForum2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:GridView ID="gridComment" CellPadding="20" CssClass="Grid" runat="server" 
            GridLines="None" AutoGenerateColumns="False"   ShowHeader="false"
             
             Width="100%">
            <Columns>
            <asp:BoundField DataField="CommentDate"  DataFormatString="{0:MMMM d, yyyy}"/>
            <asp:BoundField DataField="FullName"/>
            <asp:BoundField DataField="Comment"  />
        
            
            </Columns>
            <headerstyle backcolor="LightCyan"
          forecolor="MediumBlue" Height="40px"/>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
