<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="UserLanguages.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.UserLanguages" %>
<%@ Import Namespace="IntelArcade.Common" %>
<%@ Register src="../UserControls/SimpleListSelector.ascx" tagname="LanguageSelector" tagprefix="uc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2><%=PageTitle %></h2>
    <div style="float:right;padding-right:5px;"><iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
    <uc1:LanguageSelector AllowOtherValue="false" SelectLabel="Language" SubmitButtonText="Add Language"  ImageUrl="/images/Lanuage.png" runat="server" ID="LanguageSelector" />
    <div class="simpleRepeater">
    <asp:Repeater runat="server" ID="LanguageRepeater">
        <HeaderTemplate>
            <div class="rptHeader" style="margin-top:10px;"><div style="width:inherit;padding:5px;">Languages that I speak</div></div>
        </HeaderTemplate>
        <ItemTemplate>
            <div class="simpleRptItem">
                <div class="itemBody">
                    <div class="inner">
                        <table style="border:0px;padding:0px;margin:0px;width:100%;"> 
                            <tr>
                                <td><%# GetLanguageName(Container.DataItem) %></td>
                                <td style="text-align:right; float:right" class="smallButton"><iac:ConfirmationLinkButton ID="LinkButton1" OnClick="btnRemove_Clicked" Message="Are you sure you want to remove this language?" Test="Remove" CommandArgument="<%# ((UserLanguage)Container.DataItem).LanguageCode %>" Text="Remove" runat="server"><%--<asp:Image ID="delete_language_image" runat="server" ImageUrl="~/images/btn_delete.png" ImageAlign="Middle" />--%></iac:ConfirmationLinkButton></td>
                            </tr>
                        </table>                                               
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    </div>
</asp:Content>
