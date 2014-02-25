<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="ContosoUniversity.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
    
    <asp:FormView runat="server" 
        ID="addStudentForm" 
        ItemType="ContosoUniversity.Models.Student" 
        InsertMethod="addStudentForm_InsertItem" 
        DefaultMode="Insert" 
        RenderOuterTable="false" 
        OnItemInserted="addStudentForm_ItemInserted">

        <InsertItemTemplate>
            <fieldset>
                <ol>
                    <asp:DynamicEntity runat="server" Mode="Insert" />

                </ol>
                <asp:Button runat="server" Text="Insert" CommandName="Insert" />
                <asp:Button runat="server" Text="Cancel" CausesValidation="false" OnClick="cancelButton_Click" />
            </fieldset>
        </InsertItemTemplate>
    </asp:FormView>
</asp:Content>
