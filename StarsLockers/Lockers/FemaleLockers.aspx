<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FemaleLockers.aspx.cs" Inherits="StarsLockers.Lockers.FemaleLockers1" %>
<asp:Content ID="FemaleLockerContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div class="card bg-danger text-white">
      <div class="card-body">
          <h5 style="text-align:center;">Female Locker Assignments</h5>
      </div>     
    </div>

    <asp:GridView ID="FemaleLockerGridView" runat="server" CssClass="table table-striped table-hover table-bordered table-sm" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="FemaleLockerDS">
        <RowStyle HorizontalAlign="Center" />
        <Columns>
            <asp:CommandField ButtonType="Link" ControlStyle-CssClass="btn btn-outline-dark btn-sm" ShowEditButton="True" />
            <asp:BoundField DataField="LockerNum" HeaderText="Locker No." SortExpression="LockerNum" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Contact" HeaderText="Contact Info" SortExpression="Contact" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="LockSerNum" HeaderText="Lock Serial No." SortExpression="LockSerNum" />
            <asp:BoundField DataField="Combo1" HeaderText="Combo 1" SortExpression="Combo1" />
            <asp:BoundField DataField="Combo2" HeaderText="Combo 2" SortExpression="Combo2" />
            <asp:BoundField DataField="Combo3" HeaderText="Combo 3" SortExpression="Combo3" />
            <asp:BoundField DataField="Combo4" HeaderText="Combo 4" SortExpression="Combo4" />
            <asp:BoundField DataField="Combo5" HeaderText="Combo 5" SortExpression="Combo5" />
            <asp:BoundField DataField="DialCode" HeaderText="Dial Code" SortExpression="DialCode" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="FemaleLockerDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LockersConnectionString %>" DeleteCommand="DELETE FROM [FemaleLockers] WHERE [ID] = @original_ID AND (([LockerNum] = @original_LockerNum) OR ([LockerNum] IS NULL AND @original_LockerNum IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([LockSerNum] = @original_LockSerNum) OR ([LockSerNum] IS NULL AND @original_LockSerNum IS NULL)) AND (([Combo1] = @original_Combo1) OR ([Combo1] IS NULL AND @original_Combo1 IS NULL)) AND (([Combo2] = @original_Combo2) OR ([Combo2] IS NULL AND @original_Combo2 IS NULL)) AND (([Combo3] = @original_Combo3) OR ([Combo3] IS NULL AND @original_Combo3 IS NULL)) AND (([Combo4] = @original_Combo4) OR ([Combo4] IS NULL AND @original_Combo4 IS NULL)) AND (([Combo5] = @original_Combo5) OR ([Combo5] IS NULL AND @original_Combo5 IS NULL)) AND (([DialCode] = @original_DialCode) OR ([DialCode] IS NULL AND @original_DialCode IS NULL))" InsertCommand="INSERT INTO [FemaleLockers] ([LockerNum], [Name], [Location], [Contact], [Type], [Status], [LockSerNum], [Combo1], [Combo2], [Combo3], [Combo4], [Combo5], [DialCode]) VALUES (@LockerNum, @Name, @Location, @Contact, @Type, @Status, @LockSerNum, @Combo1, @Combo2, @Combo3, @Combo4, @Combo5, @DialCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FemaleLockers]" UpdateCommand="UPDATE [FemaleLockers] SET [LockerNum] = @LockerNum, [Name] = @Name, [Location] = @Location, [Contact] = @Contact, [Type] = @Type, [Status] = @Status, [LockSerNum] = @LockSerNum, [Combo1] = @Combo1, [Combo2] = @Combo2, [Combo3] = @Combo3, [Combo4] = @Combo4, [Combo5] = @Combo5, [DialCode] = @DialCode WHERE [ID] = @original_ID AND (([LockerNum] = @original_LockerNum) OR ([LockerNum] IS NULL AND @original_LockerNum IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([LockSerNum] = @original_LockSerNum) OR ([LockSerNum] IS NULL AND @original_LockSerNum IS NULL)) AND (([Combo1] = @original_Combo1) OR ([Combo1] IS NULL AND @original_Combo1 IS NULL)) AND (([Combo2] = @original_Combo2) OR ([Combo2] IS NULL AND @original_Combo2 IS NULL)) AND (([Combo3] = @original_Combo3) OR ([Combo3] IS NULL AND @original_Combo3 IS NULL)) AND (([Combo4] = @original_Combo4) OR ([Combo4] IS NULL AND @original_Combo4 IS NULL)) AND (([Combo5] = @original_Combo5) OR ([Combo5] IS NULL AND @original_Combo5 IS NULL)) AND (([DialCode] = @original_DialCode) OR ([DialCode] IS NULL AND @original_DialCode IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_LockerNum" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_Contact" Type="String" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_LockSerNum" Type="String" />
            <asp:Parameter Name="original_Combo1" Type="String" />
            <asp:Parameter Name="original_Combo2" Type="String" />
            <asp:Parameter Name="original_Combo3" Type="String" />
            <asp:Parameter Name="original_Combo4" Type="String" />
            <asp:Parameter Name="original_Combo5" Type="String" />
            <asp:Parameter Name="original_DialCode" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LockerNum" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="LockSerNum" Type="String" />
            <asp:Parameter Name="Combo1" Type="String" />
            <asp:Parameter Name="Combo2" Type="String" />
            <asp:Parameter Name="Combo3" Type="String" />
            <asp:Parameter Name="Combo4" Type="String" />
            <asp:Parameter Name="Combo5" Type="String" />
            <asp:Parameter Name="DialCode" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LockerNum" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="LockSerNum" Type="String" />
            <asp:Parameter Name="Combo1" Type="String" />
            <asp:Parameter Name="Combo2" Type="String" />
            <asp:Parameter Name="Combo3" Type="String" />
            <asp:Parameter Name="Combo4" Type="String" />
            <asp:Parameter Name="Combo5" Type="String" />
            <asp:Parameter Name="DialCode" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_LockerNum" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Location" Type="String" />
            <asp:Parameter Name="original_Contact" Type="String" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
            <asp:Parameter Name="original_LockSerNum" Type="String" />
            <asp:Parameter Name="original_Combo1" Type="String" />
            <asp:Parameter Name="original_Combo2" Type="String" />
            <asp:Parameter Name="original_Combo3" Type="String" />
            <asp:Parameter Name="original_Combo4" Type="String" />
            <asp:Parameter Name="original_Combo5" Type="String" />
            <asp:Parameter Name="original_DialCode" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
