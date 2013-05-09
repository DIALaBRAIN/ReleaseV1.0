<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="FxConventionRates.aspx.cs" Inherits="IntelArcade.WebApp.Admin.FxConventionRates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="FX Conversion Rates" class="formData">
        <div style="padding-top: 10px;">
            <tel:RadGrid ID="RadGrid1" runat="server" OnUpdateCommand="RadGrid1_UpdateCommand"
                OnNeedDataSource="RadGrid1_NeedDataSource">
                <MasterTableView AutoGenerateColumns="false" AllowAutomaticUpdates="true">
                    <Columns>
                        <tel:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                        </tel:GridEditCommandColumn>
                        <tel:GridBoundColumn DataField="BuyCurrency" UniqueName="BuyCurrency" HeaderText="Buy Currency">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="SellCurrency" UniqueName="SellCurrency" HeaderText="Sell Currency">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="FXConversion.ConvertedValue.value" UniqueName="ConvertedValue"
                            HeaderText="Converted Value" DataFormatString="{0:0.00000}">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="Rate" UniqueName="Margin" HeaderText="Margin %" DataFormatString="{0:P1}">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="IAMargin" UniqueName="IAMargin" HeaderText="IA Margin"
                            DataFormatString="{0:0.00000}">
                        </tel:GridBoundColumn>
                        <tel:GridBoundColumn DataField="IncMargin" UniqueName="IncMargin" HeaderText="IA Conversion rate Inc Margin"
                            DataFormatString="{0:0.00000}">
                        </tel:GridBoundColumn>
                    </Columns>
                    <EditFormSettings EditFormType="Template">
                        <FormTemplate>
                            <div style="padding: 20px 10px 20px 10px">
                                Margin % :
                                <asp:TextBox ID="tbRate" runat="server" Text='<%# Bind("Rate") %>'></asp:TextBox>
                                <div style="padding-top: 10px">
                                    <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update"></asp:LinkButton>
                                </div>
                            </div>
                        </FormTemplate>
                    </EditFormSettings>
                </MasterTableView>
            </tel:RadGrid>
        </div>
    </iac:FieldSet>
</asp:Content>
