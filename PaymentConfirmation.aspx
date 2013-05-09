<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="PaymentConfirmation.aspx.cs" Inherits="IntelArcade.WebApp.PaymentConfirmation" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
    <h2>
        <%=PageTitle %></h2>

    <iac:FieldSet runat="server" ID="FieldSet1" class="formData">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <table>
                <tr style="vertical-align:top">
                <td><img id="Img2" src="~/images/systemCredit-50x.png" alt="Image" title="Image" class="leftImage" style="height:50px;width:50px" runat="server" /></td>
                <td> Thank you for your payment. The transaction details can be found on your <asp:HyperLink ID="HyperLink2" NavigateUrl="~/MemberPages/TransactionHistory.aspx" runat="server"> Transaction History</asp:HyperLink> .  <span style="font-weight:bold;">If the balance shown does not reflect the money you just loaded</span>, please wait a short while as it may be that the money has not yet hit your account.</td>
                </tr>
            </table>
            
        </iac:InputContainer>
    </iac:FieldSet>
</asp:Content>
