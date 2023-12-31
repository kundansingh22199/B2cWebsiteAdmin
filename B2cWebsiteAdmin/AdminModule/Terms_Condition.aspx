﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminModule/Admin.Master" AutoEventWireup="true" CodeBehind="Terms_Condition.aspx.cs" Inherits="B2cWebsiteAdmin.AdminModule.Terms_Condition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card:hover {
            -webkit-box-shadow: 0 0 25px -5px #808080 !important;
            box-shadow: 0 0 25px -5px #808080 !important;
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
                                <div class="row" style="font-family: serif">
                                    <div class="col-sm-12">
                                        <div class="alert alert alert-dismissible bg-success" runat="server" visible="false" id="messagebox">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Success!</strong>Data has been successfully updated.
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="messageboxerror">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> something wrong
                                        </div>
                                        <div class="alert alert alert-dismissible bg-danger" runat="server" visible="false" id="ImageSizeAlert">
                                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                            <strong>Error!</strong> Don't Match Image Size 10KB to 2MB  Or Extension
                                        </div>
                                        <!-- Basic Form Inputs card start -->
                                        <div class="card">
                                            <div class="card-block">
                                                <!-- Row start -->
                                                <div class="col-sm-12">
                                                    <div class="col-lg-12">
                                                        <h3 style="text-align: center">Term Condition  </h3>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section First :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content1 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content1"></li>
                                                                </ul>
                                                            </div>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content2 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content2"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content3 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content3"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content4 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content4"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content5 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content5"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content6 </h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection1content6"></li>
                                                                </ul>
                                                            </div>
                                                            <div class="card">
                                                                <div class="card-block">
                                                                    <h5 style="font-weight: 600; font-family: sans-serif">Content7 </h5>
                                                                    <ul>
                                                                        <li style="font-size: 16px; color: gray" runat="server" id="lisection1content7"></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="card">
                                                                <div class="card-block">
                                                                    <h5 style="font-weight: 600; font-family: sans-serif">Content8 </h5>
                                                                    <ul>
                                                                        <li style="font-size: 16px; color: gray" runat="server" id="lisection1content8"></li>
                                                                    </ul>
                                                                </div>
                                                            </div>



                                                        </div>

                                                        <%-- <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Second :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection2heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection2content"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Third :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3content1"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3content2"></li>

                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Paragraph</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3para1"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3par2"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection3para3"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Fourth :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection4heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection4content"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Fifth :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection5headong"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Content</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection5content"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <h4 style="font-weight: 700; font-family: serif; font-size: 20px; color: gray;">Section Six :</h4>
                                                        <hr style="margin-top: -2px; color: dimgray; border-top: 1px solid gray;" />
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif; font-size: 18px">Heading</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6heading"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-block">
                                                                <h5 style="font-weight: 600; font-family: sans-serif">Content</h5>
                                                                <ul>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6content1"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6content2"></li>
                                                                    <li style="font-size: 16px; color: gray" runat="server" id="lisection6content3"></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pcoded-inner-content" style="margin-top: -6.5rem">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <!-- Main-body start -->
                    <div class="main-body">
                        <div class="page-wrapper">
                            <div class="page-body">
                                <div class="page-body">
                                    <div class="row" style="font-family: serif">
                                        <div class="col-sm-12">
                                            <!-- Basic Form Inputs card start -->
                                            <div class="card">
                                                <div class="card-block">
                                                    <h4 class="sub-title">Fill Details</h4>
                                                    <for>
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="form-group row  py-1">
                                                                    <label class="col-sm-4 col-form-label fillData">Section 1 Heading :</label>
                                                                    <div class="col-sm-8">
                                                                        <asp:TextBox ID="txtsection1heading" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Heading" MaxLength="100" MinLenth="20"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <%--<div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 2 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection2heading" runat="server" MaxLength="100" class="form-control" placeholder="Type your Section 2 Heading"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Heading :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3heading1" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 2"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Content 2 :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3content2" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 4 "></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Paragraph 2:</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3para2" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 6"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 4 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection4heading" runat="server" class="form-control" MaxLength="100" placeholder="Type your Section 2 Paragraph 8"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 5 Heading  :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection5heading" runat="server" class="form-control" MaxLength="100" placeholder="Type your Section 3 Paragraph "></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Heading   :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6heading" runat="server" class="form-control" placeholder="Type your Section 4 Heading" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Content 2:</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6content2" runat="server" class="form-control" placeholder="Type your Section 5 Paragraph " MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>--%>

                                                            <div class="col-sm-12 py-1">
                                                                <div class="form-group row">
                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content1 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content1" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content2 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content2" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content3 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content3" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content4 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content4" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content5 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content5" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content6 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content6" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content7 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content7" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>

                                                                    <label class="col-sm-2 col-form-label fillData">Section 1 Content8 :</label>
                                                                    <div class="col-sm-4 py-1">
                                                                        <asp:TextBox ID="txtsection1content8" onkeypress="return isAlfa(event,this);" runat="server" class="form-control" placeholder="Type your Section 1 Paragraph"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <%--<div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 2 Content :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection2content" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Content 1 :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3content11" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 3" MinLenth="300"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Paragraph 1 :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3para1" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 5 " MaxLength="300" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 3 Paragraph 3:</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection3para33" runat="server" class="form-control" placeholder="Type your Section 2 Paragraph 7" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 4 Content :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection4content" runat="server" class="form-control" placeholder="Type your Section 3 Heading :" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 5 Content :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection5content" runat="server" class="form-control" placeholder="Type your Section 4 Heading" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Content 1 :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6content1" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label fillData">Section 6 Content 2 :</label>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txtsection6content3" runat="server" class="form-control" placeholder="Type your Section 5 Heading" MinLenth="20"></asp:TextBox>
                                                                </div>
                                                            </div>--%>
                                                                <div class="col-sm-12">
                                                                    <div class="form-group row">

                                                                        <div class="col-lg-3 col-sm-3">
                                                                            <asp:Button ID="btn_update" runat="server" class="btn btn-success" OnClick="btn_update_Click" Text="Submit" />
                                                                        </div>
                                                                        <div class="col-sm-3 col-lg-3 ">
                                                                            <asp:Button ID="btn_Cancel" runat="server" CssClass="btn btn-danger" OnClick="btn_Cancel_Click" Text="Cancel" />
                                                                        </div>
                                                                        <div class="col-sm-3 col-lg-3 ">
                                                                            <asp:Label ID="lblmassage" runat="server"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
