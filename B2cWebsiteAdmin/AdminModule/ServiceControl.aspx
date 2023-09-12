<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="ServiceControl.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.ServiceControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-view {
            /*margin-top: 100px;*/
            font-family: Arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

            .grid-view th {
                background-color: black;
                padding: 8px;
                text-align: center;
                font-weight: bold;
                color:white;
            }

            .grid-view td {
                padding: 8px;
            }

            .grid-view tr:nth-child(even) {
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content">
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <!-- Main-body start -->
                <div class="main-body">
                    <div class="page-wrapper">
                        <div class="page-body">
                            <div class="page-body">
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" styly="margin-top:100px" class="grid-view th" AutoPostBack="true" OnRowDataBound="GridView1_RowDataBound"  OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="SERVICE ID">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lbl_ServiceID" Text='<% #Eval("Id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="SERVICE NAME">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblService" Text='<% #Eval("ServiceName") %>' Visible="true"></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox runat="server" ID="txtService" Text='<% #Eval("ServiceName") %>' Visible="true"></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="STATUS NAME"  runat="server" Visible="false">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblStatus" Text='<% #Eval("Status") %>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="UPDATED ON">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lbl_updt_on" Text='<% #Eval("UpdatedDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="CREATED ON">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lbl_creted_on" Text='<% #Eval("CreatedDate") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="STATUS ON/OFF">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="check_status" runat="server" AutoPostBack="true" OnCheckedChanged="check_status_CheckedChanged1" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MANAGE">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-primary" ID="btnEdit" CommandName="Edit" Text="EDIT" ></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-danger" OnClientClick="return confirm('Are you sure you want to delete this Service?');" ID="btnDelete" CommandName="Delete" Text="DELETE" ></asp:LinkButton>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-success" ID="btnUpdate" CommandName="Update" Text="UPDATE" ></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-secondary" ID="btnCancle" CommandName="Cancel" Text="CANCEL" ></asp:LinkButton>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        

                                    </Columns>

                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />

                                </asp:GridView>
                                <div id="MyDialog" runat="server" style="display:none">
            
        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
