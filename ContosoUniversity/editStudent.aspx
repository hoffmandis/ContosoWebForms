﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editStudent.aspx.cs" Inherits="ContosoUniversity.editStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView runat="server" ID="studentsGrid" 
        ItemType="ContosoUniversity.Models.Student" 
        DataKeyNames="StudentID" 
        SelectMethod="studentsGrid_GetData" 
        UpdateMethod="studentsGrid_UpdateItem" 
        DeleteMethod="studentsGrid_DeleteItem" 
        AutoGenerateEditButton="true" 
        AutoGenerateDeleteButton="true"
        AutoGenerateColumns="false" AllowSorting="true" AllowPaging="true" PageSize="4">
        <Columns>
            <asp:DynamicField DataField="StudentID" />
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="Year" />
            <asp:DynamicField DataField="EnrollmentDate" />
            <asp:TemplateField HeaderText="Total Credits">
                <ItemTemplate>
                    <asp:Label Text="<%# Item.Enrollments.Sum(en => en.Course.Credits) %>" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField Text="Courses" 
                DataNavigateUrlFormatString="~/Courses.aspx?studentID={0}" 
                DataNavigateUrlFields="StudentID" />
        </Columns>
    </asp:GridView>
</asp:Content>
