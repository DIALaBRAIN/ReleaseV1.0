<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="ProviderPreferencesDisplay.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.ProviderPreferencesDisplay" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em"> <%=PageTitle %></h2>
       
    <div class="providerSetup">
        <table style="width: 100%">
            <tr style="vertical-align: top">
                <td style="vertical-align: top; width: 15%">
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="Preferences"
                        runat="server" />
                </td>
                <td class="verticalRuler">
                    <div style="padding-right: 5px; padding-bottom: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator NavigatorShowType="PreviousOnly" ID="psnTop" runat="server" CurrentStep="11" />
                    </div><br />
                    <table style="width: 100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 0;">

                                <asp:Button ID="Edit_Link" Text="Edit" OnCommand="EditLink_Command" CommandName="Edit"
                                    runat="server"  Style="display: none;">
                                </asp:Button>
                                <span title="Edit" class="editButton" style="float: right; margin-right: -3px;">
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="EditLink_Command" 
                                            Text=""></asp:LinkButton></span>
                               
                                <h3 style="color: #FF9148;">
                                  Preferences</h3>
                                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
<Item Text="My Time Zone "> 

 <asp:Label ID="lblTimezone" runat="server" ></asp:Label>
 
 </Item>
<Item Text="Auto load prepay " > 

 <asp:Label ID="lblAutoload" runat="server"  ></asp:Label>
 
 </Item>
 <Item Text="Minimum booking time " > 

 <asp:Label ID="lblMinimumBooking" runat="server"  ></asp:Label>
 
 </Item>  <br />
                                </iac:InputContainer>
                   

                          

                            </td>
                        </tr>

                    </table>
                  
                    <div style="padding-top: 10px; width: 100%">
                        <uc3:ProviderSetupNextPreviousNavigator NavigatorShowType="PreviousOnly"  ID="psnBottom" runat="server" CurrentStep="11" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
