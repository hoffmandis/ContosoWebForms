<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="ContosoUniversity.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" 
        ID="coursesGrid" 
        ItemType="ContosoUniversity.Models.Enrollment" 
        SelectMethod="coursesGrid_GetData" 
        AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Title" DataField="Course.Title" />
            <asp:BoundField HeaderText="Credits" DataField="Course.Credits" />
            <asp:BoundField HeaderText="Grade" DataField="Grade" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Label Text="No Enrolled Courses" runat="server" />
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>
