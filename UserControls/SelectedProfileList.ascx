<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SelectedProfileList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.SelectedProfileList" %>
<tel:RadAjaxPanel runat="server">
    <tel:RadGrid runat="server" ID="rgProfileList" OnNeedDataSource="rgProfileList_NeedDataSource"
        AllowPaging="True" PageSize="10" >
        <MasterTableView AutoGenerateColumns="false">
            <Columns>
                <telerik:GridTemplateColumn>
                    <ItemTemplate>
                        <img id="DispalyImage" runat="server" src='<% #GetImageUrl((IntelArcade.Common.ImageStub)Eval("UserPhoto")) %>'
                            style='<% #GetImageStyle((IntelArcade.Common.ImageStub)Eval("UserPhoto")) %>' />
                    </ItemTemplate>
                </telerik:GridTemplateColumn>
                <tel:GridBoundColumn DataField="ContextID" UniqueName="ContextID" HeaderText="ContextID"
                    Display="false">
                </tel:GridBoundColumn>
                <tel:GridBoundColumn DataField="DisplayName" UniqueName="DisplayName" HeaderText="Name">
                </tel:GridBoundColumn>
                <tel:GridBoundColumn DataField="Summary" UniqueName="Summary" HeaderText="Summary">
                </tel:GridBoundColumn>
                <telerik:GridButtonColumn ConfirmText="Delete this consultant?" ConfirmDialogType="RadWindow"
                    ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" Text="Delete"
                    UniqueName="DeleteColumn">
                </telerik:GridButtonColumn>
            </Columns>
        </MasterTableView>
    </tel:RadGrid>
</tel:RadAjaxPanel>
