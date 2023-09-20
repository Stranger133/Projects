<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Chap2.Information" %>
<%@ PreviousPageType VirtualPath="~/ex3.aspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        <asp:Label ID="name" runat="server" Text="_____________"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name Customer:"></asp:Label>
        <asp:TextBox ID="name2" runat="server" ReadOnly="True"></asp:TextBox>
    
    </div>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Age Customer:"></asp:Label>
        <asp:Label ID="age" runat="server" Text="_______________"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
        <asp:Label ID="city" runat="server" Text="__________"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Nom de La rue:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="15"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
