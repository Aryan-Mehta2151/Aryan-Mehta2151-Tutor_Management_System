﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student_dashboard.Master" AutoEventWireup="true" CodeBehind="View_tutors.aspx.cs" Inherits="TMS_Project.View_tutors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <div class="row">

        <div class="col-md-12">

            <h1 class="jumbotron bg-dark text-white text-center">TUTORS DATA</h1>

        </div>

    </div>
    <div class="row">

        <div class="col-md-4">

            <div class="input-group">
                <asp:TextBox class="form-control" placeholder="Search Tutor" ID="SearchText" runat="server"></asp:TextBox>
                <div class="input-group-append">
                    <button id="SearchBtn" runat="server" onserverclick="SearchBtn_ServerClick" class="btn btn-secondary" type="button">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>

        </div>

    </div>
    <br />
    <div class="row">
         
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <div class="col-md-4">

                    <div class="card bg-dark text-white text-center">
                        <div class="card-header">
                            <small style="font-size: 15px; color: steelblue;">Name</small>
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="card-body">
                            <small style="font-size: 15px; color: steelblue;">Email</small>
                            <h5>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("email") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">Country</small>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("country") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">City</small>
                            <h5>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("city") %>'></asp:Label></h5>
                             <small style="font-size: 15px; color: steelblue;">Address</small>
                            <h5>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("address") %>'></asp:Label></h5>
                             <small style="font-size: 15px; color: steelblue;">Subject</small>
                            <h5>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("subject") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">Experience</small>
                            <h5>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("experience") %>'></asp:Label></h5>
                            <small style="font-size: 15px; color: steelblue;">Contact</small>
                            <h5>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("contactno") %>'></asp:Label></h5>
                        </div>
                        <div class="card-footer">
                            <small style="font-size: 15px; color: steelblue;">Qualification</small>
                            <h4>
                                <asp:Literal ID="Label10" runat="server" Text='<%# Bind("qualification") %>'></asp:Literal> in
                                <asp:Label ID="Label7" runat="server" Text='<%#  Bind("degree") %>'></asp:Label></h4>
                        </div>
                    </div>
                    <br />
                </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>
</asp:Content>
