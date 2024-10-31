<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="webFormPJ.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                               
    <asp:ScriptManager ID ="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
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
</asp:Content>