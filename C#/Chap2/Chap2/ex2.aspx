<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ex2.aspx.cs" Inherits="Chap2.ex2" %>

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
            width: 183px;
        }
        .style3
        {
            width: 281px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>
            <asp:Label ID="Label1" runat="server" ForeColor="#CC66FF" Text="Calculator"></asp:Label>
        </h1>
        <p>
            &nbsp;</p>
        <table class="style1" frame="border">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Value 1 :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="value1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Value 2 :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="value2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="value1" ErrorMessage="Give Value 1" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="value2" ErrorMessage="Give Value 2" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Operation :"></asp:Label>
                </td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Width="62px">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                        <asp:ListItem>sqrt</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ListBox1" ErrorMessage="Choose an Operation" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="cal" runat="server" onclick="cal_Click" Text="Calculate" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="clear" runat="server" onclick="clear_Click" Text="Clear" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Result :"></asp:Label>
                </td>
                <td>
                    <h2>
                        <asp:Label ID="result" runat="server" ForeColor="#0099FF" 
                            style="font-size: large" Text="0"></asp:Label>
                    </h2>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    <h1>
        <asp:Label ID="Label6" runat="server" ForeColor="#CC66FF" 
            Text="Control Validation"></asp:Label>
    </h1>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td>
                Year 1:</td>
            <td class="style2">
                <asp:TextBox ID="year1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="year1" ErrorMessage="Should be Integer" ForeColor="#FF3300" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Year 2:</td>
            <td class="style2">
                <asp:TextBox ID="year2" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="year2" ErrorMessage="Should be Integer" ForeColor="#FF3300" 
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:CompareValidator ID="CompareValidator3" runat="server" 
                    ControlToCompare="year1" ControlToValidate="year2" 
                    ErrorMessage="Year 2 &gt; Year 1" ForeColor="#FF3300" Operator="GreaterThan" 
                    Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Age:</td>
            <td class="style2">
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="age" 
                    ErrorMessage="Age &lt; 26" ForeColor="#FF3300" MaximumValue="26" 
                    MinimumValue="0" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                Phone:</td>
            <td class="style2">
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="phone" ErrorMessage="Should be like xx-xxx-xxx" 
                    ForeColor="#FF3300" ValidationExpression="\d{2}-\d{3}-\d{3}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td class="style2">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="email" ErrorMessage="Should be a Valid Email format" 
                    ForeColor="#FF3300" ValidationExpression="\w+@\w+.\w{2,3}"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
