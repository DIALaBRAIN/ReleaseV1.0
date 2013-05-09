<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="IntelArcade.WebApp.Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2><%=PageTitle %></h2>
    <div style="float:right;padding-right:5px;"><iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Resources" class="formData" >
        <div style="margin-bottom:15px;float:right;"><asp:LinkButton runat="server" ID="AddLink" CommandName="Add" CommandArgument="" Text="Add Resource" /></div>
        <div style="clear:both;">
        <asp:Repeater runat="server" ID="ResourceRepeater">
            <HeaderTemplate>
            </HeaderTemplate>
            <SeparatorTemplate>
                <hr style="margin-top:10px;margin-bottom:10px;" />
            </SeparatorTemplate>
            <ItemTemplate>
                <table>
                <tr>
                    <td style="vertical-align:top;"><img src="/images/image.gif" class="leftImage" alt="Image" /></td>
                    <td style="width:100%;">
                        <div><label>Title:</label>&nbsp;<span><%# Eval("Title") %></span></div>
                        <div><label>Resource Type:</label>&nbsp;<span><%# GetResourceType(Container.DataItem) %></span></div>
                        <div><label>Price:</label>&nbsp;<span><%# Eval("Price") %></span></div>
                        <div><label>Available To:</label>&nbsp;<span>All Seekers</span></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label>Description:</label>
		                <p>
                        <%# Eval("Description") %>
                        </p>

                        <fieldset class="subFormData">
                        <legend>Associated Subjects</legend>
                            <asp:Literal runat="server" Text="<%# GetCategories(Container.DataItem) %>"></asp:Literal>
                        </fieldset>
                        <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit" CommandArgument='<%# Eval("ResourceID") %>' Text="Edit Resource" />&nbsp;|&nbsp;<iac:ConfirmationLinkButton runat="server" ID="RemoveLink" CommandName="Delete" OnCommand="EditLink_Command" Text="Delete Resource" CommandArgument='<%# Eval("ResourceID") %>' />
                        </td>
                </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
        </div>
    </iac:FieldSet>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
