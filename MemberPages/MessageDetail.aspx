<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="MessageDetail.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MemberPages.MessageDetail" %>

<%@ Register Src="../UserControls/MessageStubList.ascx" TagName="MessageList" TagPrefix="uc1" %>
<%--<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <%--<script type="text/javascript">
    function printIt() {
        alert(document.getElementById('scheduleItemID').value);
        return false;
    }
</script>--%>
    <script type="text/javascript">
        //<![CDATA[
        function OnClientClose(oWnd, args) {
            if (args == null) return;

            var arg = args.get_argument();
            if (arg != null && arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
        //]]>
    </script>
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:WindowManagerProxy runat="server" />
    <div style="float: right; padding-right: 5px;">
        <iac:ReturnContext runat="server" /></div>
    <br />
    <asp:PlaceHolder ID="phMessageView" runat="server">
        <%--    <tel:RadTabStrip runat="server" ID="TabStrip" MultiPageID="MultiPager" SelectedIndex="0" Width="100%" ShowBaseLine="true">
        <Tabs>
            <tel:RadTab Text="<%$Resources:Labels,MessageDetailView %>" />
            <tel:RadTab Text="<%$Resources:Labels,MessageHistoryView %>" />
        </Tabs>
    </tel:RadTabStrip>
    <tel:RadMultiPage runat="server" ID="MultiPager" Width="100%" SelectedIndex="0" >
        <tel:RadPageView runat="server" ID="DetailView" TabIndex="0">
            <div class="messageDetail" >
                <h1><asp:Literal ID="MessageSubject" runat="server" /></h1>
                <div style="float:left;"><iac:LabelledText ID="MessageDisplayName" runat="server" /></div><div style="float:right;"><b><asp:Literal ID="MessageDate" runat="server" /></b>&nbsp;<asp:Literal ID="MessageTime" runat="server" /></div>
                <div style="clear:both;"><hr /></div>
                <div style="padding-left:10px;padding-right:10px;text-align:justify;"><iac:MessageRenderer runat="server" ID="Renderer" /></div>
                <hr />
            </div>
            <div style="float:right;padding-right:5px;"><asp:Label ID="lblCommandLinks" runat="server"></asp:Label></div>
            <div class="buttonContainer"><asp:Button runat="server" ID="Reply" Text="Reply" /></div>


        </tel:RadPageView>
        <tel:RadPageView runat="server" ID="HistoryView" TabIndex="1">
            <uc1:MessageList runat="server" ID="MessageList" Mode="History" />
        </tel:RadPageView>
    </tel:RadMultiPage>  --%>
        <div style="border-top: 1px solid #828282;">
            <ajaxControlToolkit:Accordion runat="server" ID="MessageList" ContentCssClass="MessageContent"
                HeaderCssClass="MessageHeader" HeaderSelectedCssClass="MessageHeaderSelected">
                <HeaderTemplate>   
                <span style="padding-left:4px"><%# GetMessegeSubject(Container.DataItem) %></span>
                <div style="float: right; padding-right:4px;">
                        <%# GetMessageDate(Container.DataItem) %>&nbsp;
                        <%# GetMessageTime(Container.DataItem) %>
                </div>
                   
                </HeaderTemplate>
                <ContentTemplate>
                    <div class="Message">
                        <div style="float: left;">
                            <iac:LabelledText ID="MessageDisplayName" Label="<%# GetMessageDisplayNameLabel(Container.DataItem) %>"
                                Text="<%# GetMessageDisplayName(Container.DataItem) %>" runat="server" />
                        </div>
                        <br />
                        <div>
                            <asp:Repeater runat="server" ID="reMessageAttachments" DataSource="<%# GetAttachments(Container.DataItem) %>">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" OnClick="Attachment_Click" Text='<%# Eval("FileName") %>'
                                        CommandArgument='<%# Eval("ResourceInstanceID") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div>
                            Warning : Attachments can be harmful and are opened at your own
                            risk
                        </div>
                        <div style="clear: both;">
                            <hr />
                        </div>
                        <div style="padding-left: 10px; padding-right: 10px; text-align: justify;">
                            <iac:MessageRenderer runat="server" Message="<%# GetMessage(Container.DataItem) %>" />
                        </div>
                        <hr />
                        <div class="buttonContainer">
                            <asp:LinkButton runat="server" ID="Reply" Text="Reply" CommandName="Reply" CommandArgument="<%# ((IntelArcade.Common.MessageStub)Container.DataItem).MessageID %>" /></div>
                    </div>
                </ContentTemplate>
                
            </ajaxControlToolkit:Accordion>
        </div>
        <asp:Panel runat="server" ID="pMessageDetail">
            <div class="messageDetail">
                <h1>
                    <asp:Literal ID="MessageSubject" runat="server" /></h1>
                <div style="float: left;">
                    <iac:LabelledText ID="MessageDisplayName" runat="server" />
                </div>
                <div style="float: right;">
                    <b>
                        <asp:Literal ID="MessageDate" runat="server" /></b>&nbsp;<asp:Literal ID="MessageTime"
                            runat="server" /></div>
                <div style="clear: both;">
                    <hr />
                </div>
                <div style="padding-left: 10px; padding-right: 10px; text-align: justify;">
                    <iac:MessageRenderer runat="server" ID="Renderer" />
                </div>
                <hr />
            </div>
            <div style="float: right; padding-right: 5px;">
                <asp:Label ID="lblCommandLinks" runat="server"></asp:Label></div>
            <div class="buttonContainer">
                <asp:Button runat="server" ID="Reply" Text="Reply" /></div>
        </asp:Panel>
    </asp:PlaceHolder>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
