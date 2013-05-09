<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProfileRotator.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProfileRotator" %>
<div class="Rotator">
    <tel:RadRotator runat="server" ID="rpRotator" RotatorType="Buttons" Skin="DB" EnableEmbeddedSkins="False"
        Width="736px" Height="332px" BorderColor="#6F6F6F">
        <ItemTemplate>
            <div runat="server">
                <div class='<%# GetItemCardStyle(Eval("Item1")) %>'>
                    <div style='<%# GetCardVisible(Eval("Item1")) %>'>
                        <table>
                            <tr>
                                <td style="vertical-align: top">
                                    <img id="DispalyImage" runat="server" src='<% #GetImageUrl((IntelArcade.Common.ImageStub)Eval("Item1.UserPhoto")) %>'
                                        style='<% #GetImageStyle((IntelArcade.Common.ImageStub)Eval("Item1.UserPhoto")) %>'
                                        alt='<% #Getalt((IntelArcade.Common.ImageStub)Eval("Item1.UserPhoto")) %>' />
                                </td>
                                <td style="vertical-align: top; padding-left: 5px; padding-top: 5px;">
                                    <span class='<%# GetDispayNameClass(Eval("Item1")) %>'>
                                        <asp:LinkButton runat="server" OnCommand="ProviderLinkButton_Command" CommandName='<%# Eval("ID")+"-"+ GetId(Eval("Item1"))  %>'
                                            CommandArgument='<%# GetProviderProfileID(Eval("Item1")) %>'><%# Eval("Item1.DisplayName")%></asp:LinkButton></span>
                                    <div style="font-family: Trebuchet MS;">
                                        <asp:LinkButton runat="server" OnCommand="ServiceLinkButton_Command" CommandName='<%# Eval("ID")+"-"+ GetId(Eval("Item1"))  %>'
                                            CommandArgument='<%# GetServiceProfileID(Eval("Item1")) %>'><%# Eval("Item1.ServiceTitle")%></asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                            right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                            <%# GetSubString((string)Eval("Item1.Summary"))%></div>
                    </div>
                </div>
                <div class='<%# GetItemCardStyle(Eval("Item2")) %>'>
                    <div style='<%# GetCardVisible(Eval("Item2")) %>'>
                        <table>
                            <tr>
                                <td style="vertical-align: top">
                                    <img id="Img1" runat="server" src='<% # Eval("Item2.UserPhoto") == null ? "" : GetImageUrl((IntelArcade.Common.ImageStub)Eval("Item2.UserPhoto")) %>'
                                        style='<% # Eval("Item2.UserPhoto") == null ? "": GetImageStyle((IntelArcade.Common.ImageStub)Eval("Item1.UserPhoto")) %>'
                                        alt='<% # Eval("Item2.UserPhoto") == null ? "": Getalt((IntelArcade.Common.ImageStub)Eval("Item1.UserPhoto")) %>' />
                                </td>
                                <td style="vertical-align: top; padding-left: 5px; padding-top: 5px;">
                                    <span class='<%# GetDispayNameClass(Eval("Item2")) %>'>
                                        <asp:LinkButton runat="server" OnCommand="ProviderLinkButton_Command" CommandName='<%# Eval("ID")+"-"+ GetId(Eval("Item2"))  %>'
                                            CommandArgument='<%# GetProviderProfileID(Eval("Item2")) %>'><%# Eval("Item2.DisplayName")%></asp:LinkButton></span>
                                    <div style="font-family: Trebuchet MS;">
                                        <asp:LinkButton runat="server" OnCommand="ServiceLinkButton_Command" CommandName='<%# Eval("ID")+"-"+ GetId(Eval("Item2"))  %>'
                                            CommandArgument='<%# GetServiceProfileID(Eval("Item2")) %>'><%# Eval("Item2.ServiceTitle")%></asp:LinkButton>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                            right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                            <%# GetSubString((string)Eval("Item2.Summary"))%></div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </tel:RadRotator>
</div>
