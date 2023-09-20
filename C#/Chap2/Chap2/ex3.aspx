<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex3.aspx.cs" Inherits="Chap2.ex3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 116px;
        }
        .style3
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td rowspan="2">
                    <asp:ListBox ID="city" runat="server">
                        <asp:ListItem>--City--</asp:ListItem>
                        <asp:ListItem>Akkar</asp:ListItem>
                        <asp:ListItem>Beirut</asp:ListItem>
                        <asp:ListItem>Tripoli</asp:ListItem>
                        <asp:ListItem>Bekaa</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Age:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="age" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="City:"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pass1" runat="server" EnableViewState="False" 
                        ForeColor="#0066FF" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="pass1" ControlToValidate="pass2" 
                        ErrorMessage="Incorrect Password" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Retype Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="pass2" runat="server" ForeColor="#FF3300" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="val" runat="server" CssClass="style3" onclick="val_Click" 
                        Text="Validate" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="clear" runat="server" CssClass="style3" onclick="clear_Click1" 
                        Text="Clear" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <h2>
        <asp:Label ID="msg" runat="server" ForeColor="#9933FF" Text="Welcome!"></asp:Label>
    </h2>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="insert" runat="server" CssClass="style3" onclick="insert_Click" 
                    Text="Insert" />
            </td>
            <td>
                <asp:Button ID="del" runat="server" CssClass="style3" onclick="del_Click" 
                    Text="Delete" />
            </td>
            <td>
                <asp:Button ID="delall" runat="server" CssClass="style3" onclick="delall_Click" 
                    Text="Delete All" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Server Evts:"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
            </td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Other Evts:"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox3" runat="server"></asp:ListBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" CssClass="style3" 
        PostBackUrl="~/ex1.aspx" Text="Go to Price Quotation Webform" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Information.aspx" 
        style="font-weight: 700" Text="Go to Information" />
    </form>
</body>
</html>
