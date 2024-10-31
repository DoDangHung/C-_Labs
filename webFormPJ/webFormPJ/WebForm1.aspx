<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="webFormPJ.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="StyleSheet1.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
            width: 370px;
        }
        .auto-style2 {
            width: 199px;
            background-color: #00CCFF;
        }
        .auto-style4 {
            height: 30px;
            width: 199px;
            background-color: #00CCFF;
        }
        .auto-style5 {
            background-color: #00CCFF;
            width: 370px;
        }
        .auto-style6 {
            background-color: #00CCFF;
            width: 44%;
        }
        .auto-style7 {
            height: 24px;
            width: 199px;
        }
        .auto-style8 {
            height: 24px;
            width: 370px;
        }
        .auto-style9 {
            height: 36px;
            width: 199px;
        }
        .auto-style10 {
            height: 36px;
            width: 370px;
        }
        .auto-style15 {
            width: 199px;
            background-color: #00CCFF;
            height: 23px;
        }
        .auto-style16 {
            background-color: #00CCFF;
            width: 370px;
            height: 23px;
        }
        .auto-style17 {
            height: 581px;
        }
    </style>
</head>
<body style="width: 1355px; height: 765px">
    <form id="form1" runat="server">
        <div class="page">

                            <asp:ScriptManager ID ="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" Width="275px"></asp:GridView>
                    <br />
            
         <table class="auto-style6">
    <tr>
        <td class="auto-style2">Student Form</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
             <tr>
                 <td class="auto-style2">Student PKL</td>
                 <td class="auto-style5">
                     <asp:Label ID="stuPK" runat="server" Text="----------------"></asp:Label>
                 </td>
             </tr>
    <tr>
        <td class="auto-style15">Name</td>
        <td class="auto-style16">
            <asp:TextBox ID="TbName" runat="server" Width="379px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Last Name</td>
        <td class="auto-style1">
            <asp:TextBox ID="TbLastName" runat="server" Width="378px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Student No</td>
        <td class="auto-style8">
            <asp:TextBox ID="TbStuNo" runat="server" Width="377px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
        </td>
        <td class="auto-style10">
            <asp:Button ID="btnSearch" runat="server" OnClick="Button2_Click" Text="Search" Width="140px" />
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="110px" />
        </td>
    </tr>
             <tr>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style10">
                     <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="139px" />
                     <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Width="109px" />
                 </td>
             </tr>
    </table>
   </ContentTemplate>
</asp:UpdatePanel>
        </div>
            
            
               
  
    </form>
</body>
</html>
