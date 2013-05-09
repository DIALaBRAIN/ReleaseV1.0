<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="TaxRateEdit.aspx.cs" MasterPageFile="~/StandardMaster.master"
    Inherits="IntelArcade.WebApp.TaxRateEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">

        function OnClientClick() {
            var win = $find('<%=RadWindowCustomRate.ClientID %>');
            win.Close();
        }
    </script>
    <style type="text/css">
        .TelerikModalOverlay
        {
            filter: progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0) !important;
            background: red !important;
            opacity: 0.0 !important;
            -moz-opacity: 0.0 !important;
        }
    </style>
    <h2>
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSetRates" Title="Tax Rates" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <div title="Add Custom Rate" class="addButton" style="float: right; margin-top: -36px">
                <asp:LinkButton ID="lnkAddCustomRate" runat="server" Text=""></asp:LinkButton>
            </div>
            <br />
            <tel:RadWindowManager ID="RadWindowManager1" runat="server" Skin="Sitefinity">
                <Windows>
                    <tel:RadWindow Behaviors="Close,Move,Minimize" VisibleStatusbar="false" ID="RadWindowCustomRate"
                        Width="545px" Height="340px" Modal="true" Overlay="false" EnableShadow="true"
                        VisibleTitlebar="true" OnClientBeforeShow="__ia_ResetPopup" runat="server" AutoSize="true">
                        <ContentTemplate>
                            <div runat="server" id="ContainerHeader" style="width: 502px; height: 20px" class="dialogHeader">
                            </div>
                            <div runat="server" id="ContainerPreFooter" style="width: 485px; border-top: 0px"
                                class="dialogPreFooter">
                                <div style="padding: 10px;">
                                    <label id="lblRateName" runat="server">
                                        Custom Rate Name:</label>&nbsp;<asp:TextBox ID="txtNewRateName" runat="server" ValidationGroup="NewRateName" />&nbsp;<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator1" runat="server" ValidationGroup="NewRateName" Enabled="true"
                                            ControlToValidate="txtNewRateName" ErrorMessage="Required" Display="Dynamic" />
                                </div>
                                <div style="padding: 10px; font-size: 11px">
                                    Click <b>Create</b> to create the rate type or <b>Cancel</b> to exist without taking
                                    any action</div>
                            </div>
                            <div runat="server" id="ContainerFooter" style="width: 510px; height: 50px;" class="dialogFooter">
                                <asp:LinkButton ID="BtnAddNewRate" ValidationGroup="NewRateName" Style="float: left;
                                    margin-left: 15px; margin-top: 20px" runat="server">Create</asp:LinkButton>
                                <a runat="server" style="float: right; margin-right: 15px; margin-top: 20px" id="CloseWindowLink"
                                    href="javascript:OnClientClick();">Cancel</a>
                            </div>
                        </ContentTemplate>
                    </tel:RadWindow>
                </Windows>
            </tel:RadWindowManager>
            <iac:TaxRates runat="server" ID="taxRates" />
        </div>
    </iac:FieldSet>
    <div style="float: left; padding-left: 155px;">
        <table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <asp:LinkButton ID="CancelButton" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
