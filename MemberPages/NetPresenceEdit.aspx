<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NetPresenceEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MemberPages.NetPresenceEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <h2 style="font-size:1.2em"><%=PageTitle %></h2>
        <iac:FieldSet runat="server" ID="FieldSet1" Title="Internet Link" class="formData">            
            <div style="padding-top:10px; padding-left:15px"><img src="~/images/netPresence-50x.png" alt="Image" title="Image" class="leftImage" style="width:50px;height:50px;" runat="server" />
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Site">
                    <iac:InternetLinkTypeDropDown ID="drpnetProviders" runat="server" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalNetProviders" ControlToValidate="drpnetProviders" RenderAsBlockElement="false" />
                </Item>
				<Item Text="Full Url"><asp:TextBox runat="server" ID="txtUrl" Width="100%" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalURL" ControlToValidate="txtUrl" RenderAsBlockElement="false" /></Item>
            </iac:InputContainer></div>
        </iac:FieldSet>
        <div class="buttonContainer" style="float:left; padding-left:106px"><%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%>
        <table class="smallButton"><tr>
        <td class="updateButton"><asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
        <td><td style="padding-left:10px;" class="cancelButton">
        <%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%>
        <asp:LinkButton ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
        </td></tr></table></div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
