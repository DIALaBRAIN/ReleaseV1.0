<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServiceWantedRotator.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ServiceWantedRotator" %>
<%@ Register Src="WantedTreeView.ascx" TagName="WantedTreeView" TagPrefix="uc1" %>
<tel:RadRotator runat="server" ID="rpRotator" RotatorType="Buttons" Skin="DB" EnableEmbeddedSkins="False"
    Width="736px" Height="332px" BorderColor="#6F6F6F">
    <ItemTemplate>
        <div>
            <div class='<%# GetItemCardStyle(Eval("Item1")) %>'>
                <div style='<%# GetCardVisible(Eval("Item1")) %>'>
                    <table>
                        <tr>
                            <td>
                                <img src="../images/providerOnline-32x.png" style='<%# GetImageStyle(Eval("Item1")) %>' />
                            </td>
                            <td style="vertical-align: top; padding: 10px;">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                    CommandArgument='<%# GetRequestServiceID(Eval("Item1")) %>'><%# GetSubjectCategoryName(Eval("Item1"))%></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                        right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                        <%# GetNote(Eval("Item1"))%>
                    </div>
                </div>
                <div style='<%# GetSeeFullListVisible(Eval("Item1")) %>'>
                    <div style="text-align: center; padding-top: 50px; font-weight: bold; padding-left: 4px;
                        padding-right: 4px;">
                        <%--                        <a href="../MemberPages/ServiceWanted/FullList.aspx">Click Hear to see a full list of all the Service Request for which we are
                            seeking Provider</a>--%>
                        <asp:LinkButton runat="server" ID="btnFullList" OnClick="FullList_Click">Requested Services <br />full-listing</asp:LinkButton>
                    </div>
                </div>
            </div>
            <div class='<%# GetItemCardStyle(Eval("Item2")) %>'>
                <div>
                    <table>
                        <tr>
                            <td>
                                <img src="../images/providerOnline-32x.png" style='<%# GetImageStyle(Eval("Item2")) %>' />
                            </td>
                            <td style="vertical-align: top; padding: 10px;">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnCommand="LinkButton_Command" CommandName='<%# Eval("ID")  %>'
                                    CommandArgument='<%# GetRequestServiceID(Eval("Item2")) %>'><%# GetSubjectCategoryName(Eval("Item2"))%></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                    <div style="font-size: 0.7em; font-weight: normal; color: #444444; left: 4px; position: relative;
                        right: 4px; line-height: 120%; padding-right: 5px; font-family: Verdana;">
                        <%# GetNote(Eval("Item2"))%>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</tel:RadRotator>
<div runat="server" id="SelectedItem" visible="false" style="margin-top: 10px;">
    <p class="headingsNew">
        Wanted
    </p>
    <div style="padding: 0px 10px 10px 10px; min-height:100px;">
        <label runat="server" id="lblCategoryName">
        </label>
        <br />
        <div runat="server" id="linkServiceDiv" style="padding-left: 15px; float: right;">
            <div class="addServiceButton" style="padding-bottom: 5px;">
                <asp:LinkButton ID="CreateService" runat="server" OnCommand="CreateService_Command"></asp:LinkButton></div>
            <div class="linkServiceButton">
                <asp:LinkButton ID="LinkService" runat="server" OnCommand="LinkService_Command"></asp:LinkButton></div>
        </div>
        <div runat="server" id="lblNote" style="font-size: 0.875em; font-style: normal; font-variant: normal;
            font-weight: normal; line-height: 1.6em; text-align: justify;">
        </div>
    </div>
</div>
<div id="FllList" runat="server" visible="false" style="margin-top: 10px;">
    <p class="headingsNew">
        Wanted
    </p>
    <uc1:WantedTreeView runat="server" ID="TreeView1" />
</div>
