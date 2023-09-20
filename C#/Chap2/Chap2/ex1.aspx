<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex1.aspx.cs" Inherits="Chap2.ex1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Price Quotation</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            margin-right: 0px;
        }
        .style5
        {
            width: 587px;
        }
        .style6
        {
            width: 173px;
        }
        .style7
        {
            width: 262px;
        }
        .style8
        {
            width: 294px;
        }
        #Percent
        {
            width: 279px;
        }
        #Price
        {
            width: 279px;
        }
        .style9
        {
            width: 100%;
            margin-bottom: 29px;
        }
        .style10
        {
            width: 196px;
        }
        .style11
        {
            width: 339px;
        }
        #percent
        {
        }
        #price
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>
            <asp:Label ID="Label4" runat="server" Text="Exercice 1: Price Quotation"></asp:Label>
        </h2>
        <br />
        <br />
    
        <table class="style1">
            <tr>
                <td class="style8">
                    <asp:Label ID="Label1" runat="server" Text="Unit Price (in $) :" 
                        ToolTip="Unit price of the product"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="price" runat="server" type="text" Width="256px" ></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Give the Unit's Price" ControlToValidate="price" 
                        Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="style6" rowspan="5">
                    <asp:Image ID="Image1" runat="server" BorderColor="Red" BorderStyle="Dotted" 
                        Height="200px" ImageUrl="~\Images\logo.png" Width="207px" />
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Text="Discount Percentage :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="percent" runat="server" Width="254px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="percent" Display="Dynamic" 
                        ErrorMessage="Value Should be between 0 &amp; 100" ForeColor="#FF3300" 
                        MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label3" runat="server" Text="Discount Amount :"></asp:Label>
                </td>
                <td class="style7">
                    <asp:Label ID="disc" runat="server" ForeColor="#0066FF" 
                        style="font-family: Arial, Helvetica, sans-serif" Text="0"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    Price to pay (in $) :</td>
                <td class="style7">
                    <asp:Label ID="dol" runat="server" ForeColor="#0066FF" 
                        style="font-family: Arial, Helvetica, sans-serif" Text="0"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    Price to pay (in LP) :</td>
                <td class="style7">
                    <asp:Label ID="lp" runat="server" ForeColor="#0066FF" 
                        style="font-family: Arial, Helvetica, sans-serif" Text="0"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    <table class="style9">
        <tr>
            <td class="style11">
                <asp:Button ID="cal" runat="server" onclick="cal_Click" Text="Calculate" />
            </td>
            <td class="style10">
                <asp:Button ID="clear" runat="server" onclick="clear_Click" Text="Clear" />
            </td>
            <td>
                <a href="http://www.google.com/">Go to Google</a>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
