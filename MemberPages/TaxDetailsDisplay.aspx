<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="TaxDetailsDisplay.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.TaxDetailsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">

    <h2>
        <%=PageTitle %></h2>
    <div style="float: right; padding-right: 5px;">
        <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Sales Tax / VAT Details" class="formData">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <span title="Edit Tax Details" class="editButton" style="float: right; margin-top: -25px;">
                <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" CommandName="Edit"
                    CommandArgument='<%# Eval("TaxDetailsID") %>' Text=""><%--<asp:Image ImageUrl="~/Images/btn_edit_tax_details.png" runat="server" ID="edit_tax_details_image" />--%></asp:LinkButton>
            </span>
            <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
        <Item Text="<%$ Resources:Labels,Country%>">  <asp:Label ID="Country" runat="server" ></asp:Label></Item>
        <Item Text="Tax" ><asp:Label runat="server" ID="taxName"></asp:Label> </Item>
        <Item Text="<%$ Resources:Labels,TaxNumber%>">  <asp:Label ID="TaxNumber" runat="server" ></asp:Label></Item>

            </iac:InputContainer>
        </div>
        <table>
            <tr>
                <td style="vertical-align: top; padding-left: 15px;">
                    <span style="font-weight: bold;">Important:</span>
                </td>
                <td valign="top">
                    Please contact a tax professional to determine whether you need to charge sales
                    tax on your <span style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span>
                    sales. <span style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span>
                    can't provide tax advice. Also, we can't guarantee that our sales tax features will
                    meet all tax requirements.
                </td>
            </tr>
        </table>
    </iac:FieldSet>
    <iac:FieldSet runat="server" ID="FieldSet2" Title="Rates" class="formData" Visible="false">
        <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
            <br />
            <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
        <div>
        <span title="Add / Edit Rates" class="editButton" style="float:right;  margin-top: -25px;" >
                                    <asp:LinkButton runat="server" ID="EditRatesLink" OnCommand="EditLink_Command" CommandName="EditRates"
                            Text=""></asp:LinkButton>
        </span>

        <asp:Repeater ID="reTaxRates" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width:83px;text-align:right; font-weight:bold;"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>:</td>
                        <td style="padding-left:10px;"><asp:Label runat="server" Text='<%# String.Format(" {0:P2}.",Eval("Rate")) %>'></asp:Label> </td>
                    </tr>
                </table>
                
            </ItemTemplate>
        </asp:Repeater>
        <div style=" margin-left:97px;">
                    <asp:HyperLink runat="server" Target="_blank" ID="ExampleInvioceLink">Example Invioce</asp:HyperLink>
         </div>
        </div>
        <br />
            </iac:InputContainer>
        </div>
    </iac:FieldSet>
    <div style="float: right; padding-top: 10px; padding-right: 5px;">
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
