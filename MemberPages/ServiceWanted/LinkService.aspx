<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="LinkService.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ServiceWanted.LinkService"
    EnableEventValidation="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="contentBody">
        <h2>
            Link service to request</h2>
        <div style="margin-right: 20px; margin-top: 20px;">
            <asp:Panel runat="server" ID="ContentPanel">
                <div style="float: right;">
                    <label>
                        Service Category:</label>&nbsp;<asp:DropDownList ID="Services" runat="server" AutoPostBack="True" />
                </div>
                <br />
                <div style="padding-top: 20px; padding-bottom: 20px;">
                    <h1 style="font-size: 1.4em" runat="server" id="lblTitle">
                    </h1>
                </div>
                <div runat="server" id="SummaryContainer" style="padding-bottom: 10px;">
                    <label>
                        Summary:</label>
                    <asp:Label runat="server" ID="Summary"></asp:Label>
                </div>
                <div runat="server" id="DetailContainer" style="padding-bottom: 10px;">
                    <label>
                        Detail:</label>
                    <asp:Label runat="server" ID="Description"></asp:Label>
                </div>
                <tel:RadTextBox runat="server" ID="tbMessage" TextMode="MultiLine" EmptyMessage="Enter Message"
                    Width="400px" Height="50px">
                </tel:RadTextBox>
                <br />
                <div class="buttonContainer">
                    <span class="linkButton">
                        <asp:LinkButton runat="server" ID="btnLinkrRequest"></asp:LinkButton></span>
                </div>
            </asp:Panel>
            <asp:Panel ID="LinkedContent" runat="server" Visible="false">
                <div style="float:right;">
                    <span title="Back to Home Page" class="cancelButton">
                        <a href="../../Default.aspx"></a>
                    </span>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
