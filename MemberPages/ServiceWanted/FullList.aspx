<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="FullList.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ServiceWanted.FullList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <tel:RadTreeView runat="server" ID="TreeView1"  Skin="Vista" LoadingStatusPosition="BeforeNodeText" AppendDataBoundItems="false">
    
<%--        <NodeTemplate> 
            <%# DataBinder.Eval(Container.DataItem, "CategoryName")%>
            <tel:RadTreeNode runat="server">
                <NodeTemplate >

                </NodeTemplate>

                <Nodes>
                    <tel:RadTreeNode runat="server">
                        <NodeTemplate>
                            test
                        </NodeTemplate>
                    </tel:RadTreeNode>
                </Nodes>
            </tel:RadTreeNode>
        </NodeTemplate>
        <Nodes>
            <tel:RadTreeNode runat="server" Text="Composers">
                <NodeTemplate>
                <%# DataBinder.Eval(Container.DataItem, "CategoryName")%>
                    test
                </NodeTemplate>
                <Nodes>
                    <tel:RadTreeNode>
                        <NodeTemplate>
                            TEST1
                        </NodeTemplate>
                    </tel:RadTreeNode>
                </Nodes>
            </tel:RadTreeNode>
            <telerik:RadTreeNode Text="Test" runat="server"></telerik:RadTreeNode>
        </Nodes>--%>
    </tel:RadTreeView>
</asp:Content>
<%--<asp:Repeater runat="server" ID="TreeView">
    <ItemTemplate>
        <%# GetParentCategoryName(Container.DataItem) %>
        <ul title="Test">
            <li title="test"></li>
        </ul>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>--%>