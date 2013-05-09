<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FavoriteList.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.FavoriteList" %>
<iac:PostBackProxy runat="server" ID="ProviderProxy" />
<iac:PostBackProxy runat="server" ID="ServiceProxy" />
<asp:Repeater runat="server" ID="FavoriteRepeater">
    <HeaderTemplate>    
    </HeaderTemplate>
    <SeparatorTemplate>
    </SeparatorTemplate>
    <ItemTemplate>
        <div class="simpleRptItem">
            <div class="itemBody">
                <div class="inner">
                <table cellpadding="0" cellspacing="0" style="width: 100%;">
                <span class="removeItem"><asp:LinkButton runat="server" ID="LinkButton1" CommandName="Delete" OnCommand="EditLink_Command" Text="" CommandArgument='<%# ((IntelArcade.Common.Favorite)Container.DataItem).FavoriteID%>'><%--<asp:Image ID="remove_button" runat="server" ImageUrl="~/images/btn_remove.png" />--%></asp:LinkButton></span>
                </table>
                    <table cellpadding="0" cellspacing="0" style="width: 100%;margin-top:-20px;">
                        
                        <tr>
                            <td style="width:50px;" rowspan="3" valign="top"><img runat="server" style="width:50px;height:50px;" src="<%# GetImagePath(Container.DataItem) %>" alt="" class="leftImage" /></td><br/>
                            <td style="text-align:left;white-space:nowrap;width:100%; line-height:25px">
                                <a href="<%# GetItemClickedReference(Container.DataItem) %>"><p style="font-size:large; font-weight:bold;"><%# ((IntelArcade.Common.Favorite)Container.DataItem).DisplayName %></p></a> 
                                <asp:Label ID="lblUserName" runat="server" ><%# GetUserDispayName(Container.DataItem) %></asp:Label>
                             </td>
                             
                        </tr>
                        <tr>
                            <td style="line-height:25px">
                               <label>Added On:</label>&nbsp;<%# GetSavedDate(Container.DataItem) %>
                            </td>
                        </tr>
                        <tr>
                            
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
</asp:Repeater>
<h2 runat="server" id="NoResultsMessage"><%= global::Resources.Strings.NoResults%></h2>