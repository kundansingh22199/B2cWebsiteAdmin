<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="ProductControl.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.ProductControl" %>
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
                                        <asp:TemplateField HeaderText="PRODUCT ID">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="lblID" Text='<% #Eval("Id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="PRODUCT NAME">
                                            <ItemTemplate>
                                                <asp:Label runat="server" Text='<% #Eval("ProductName") %>' ></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox runat="server" ID="txtProduct" Text='<% #Eval("ProductName") %>' ></asp:TextBox>
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
                                                <asp:CheckBox ID="check_status" runat="server" AutoPostBack="true" OnCheckedChanged="check_status_CheckedChanged" />
                                               
                                             </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="MANAGE">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="btnEdit" CssClass="btn btn-sm btn-primary" CommandName="Edit" Text="EDIT" ></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" ID="btnDelete" CssClass="btn btn-sm btn-danger" OnClientClick="return confirm('Are you sure you want to delete this Product?');" CommandName="Delete" Text="DELETE" ></asp:LinkButton>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:LinkButton runat="server" ID="btnUpdate" CssClass="btn btn-sm btn-success" CommandName="Update" Text="UPDATE" ></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:LinkButton runat="server" ID="btnCancle" CssClass="btn btn-sm btn-secondary" CommandName="Cancel" Text="CANCEL" ></asp:LinkButton>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
