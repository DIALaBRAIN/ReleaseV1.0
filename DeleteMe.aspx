<%@ Page Title="" Language="C#" MasterPageFile="~/InteractiveBase.master" AutoEventWireup="true" CodeBehind="DeleteMe.aspx.cs" Inherits="IntelArcade.WebApp.DeleteMe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

    <br />
    <br />
    <br />

    <asp:Repeater runat="server" ID="Repeater1">
        <HeaderTemplate>
            <table border="0">
            <tr>
                <td>Subject</td><td>Date</td>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td style="width:300px;"><iac:NotImp runat="server">Where's my Money?!</iac:NotImp></td><td>4 March 2011</td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <tel:RadTreeView ID="RadTreeView1" runat="server" Skin="Windows7">
        <WebServiceSettings Path="AjaxCtrlSvc.asmx" Method="GetTreeViewSubjects" />
    </tel:RadTreeView> 

    <br />
    <br />
    <br />
    <iac:SubjectPicker runat="server" ID="SubjectPicker1" ShowFullPath="true" Width="400px"/>
</asp:Content>
