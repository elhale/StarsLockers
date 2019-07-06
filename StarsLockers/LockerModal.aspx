<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LockerModal.aspx.cs" Inherits="StarsLockers.LockerModal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%--<style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>--%>

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover"
            DataKeyNames="student_Id" AutoGenerateColumns="false" GridLines="None">
            <Columns>
                <asp:TemplateField HeaderText="Admission No">
                    <ItemTemplate>
                        <asp:Label ID="lblstudent_Id" runat="server" Text='<%# Eval("student_Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Month">
                    <ItemTemplate>
                        <asp:Label ID="lblMonth_Name" runat="server" Text='<%# Eval("Month_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount">
                    <ItemTemplate>
                        <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IsPaid">
                    <ItemTemplate>
                        <asp:Label ID="lblIsPaid" runat="server" Text='<%# Eval("IsPaid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="date">
                    <ItemTemplate>
                        <asp:Label ID="lbldate" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pay">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkBtnEdit" runat="server" Text="Edit" CssClass="btn btn-info"
                            OnClick="Display"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            Student Fee Details</h4>
                    </div>
                    <div class="modal-body">
                       <asp:SqlDataSource ID="MaleLockerDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LockersConnectionString %>" DeleteCommand="DELETE FROM [MaleLockers] WHERE [ID] = @original_ID AND (([LockerNum] = @original_LockerNum) OR ([LockerNum] IS NULL AND @original_LockerNum IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([LockSerNum] = @original_LockSerNum) OR ([LockSerNum] IS NULL AND @original_LockSerNum IS NULL)) AND (([Combo1] = @original_Combo1) OR ([Combo1] IS NULL AND @original_Combo1 IS NULL)) AND (([Combo2] = @original_Combo2) OR ([Combo2] IS NULL AND @original_Combo2 IS NULL)) AND (([Combo3] = @original_Combo3) OR ([Combo3] IS NULL AND @original_Combo3 IS NULL)) AND (([Combo4] = @original_Combo4) OR ([Combo4] IS NULL AND @original_Combo4 IS NULL)) AND (([Combo5] = @original_Combo5) OR ([Combo5] IS NULL AND @original_Combo5 IS NULL)) AND (([DialCode] = @original_DialCode) OR ([DialCode] IS NULL AND @original_DialCode IS NULL))" InsertCommand="INSERT INTO [MaleLockers] ([LockerNum], [Name], [Location], [Contact], [Type], [Status], [LockSerNum], [Combo1], [Combo2], [Combo3], [Combo4], [Combo5], [DialCode]) VALUES (@LockerNum, @Name, @Location, @Contact, @Type, @Status, @LockSerNum, @Combo1, @Combo2, @Combo3, @Combo4, @Combo5, @DialCode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MaleLockers]" UpdateCommand="UPDATE [MaleLockers] SET [LockerNum] = @LockerNum, [Name] = @Name, [Location] = @Location, [Contact] = @Contact, [Type] = @Type, [Status] = @Status, [LockSerNum] = @LockSerNum, [Combo1] = @Combo1, [Combo2] = @Combo2, [Combo3] = @Combo3, [Combo4] = @Combo4, [Combo5] = @Combo5, [DialCode] = @DialCode WHERE [ID] = @original_ID AND (([LockerNum] = @original_LockerNum) OR ([LockerNum] IS NULL AND @original_LockerNum IS NULL)) AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Location] = @original_Location) OR ([Location] IS NULL AND @original_Location IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Type] = @original_Type) OR ([Type] IS NULL AND @original_Type IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([LockSerNum] = @original_LockSerNum) OR ([LockSerNum] IS NULL AND @original_LockSerNum IS NULL)) AND (([Combo1] = @original_Combo1) OR ([Combo1] IS NULL AND @original_Combo1 IS NULL)) AND (([Combo2] = @original_Combo2) OR ([Combo2] IS NULL AND @original_Combo2 IS NULL)) AND (([Combo3] = @original_Combo3) OR ([Combo3] IS NULL AND @original_Combo3 IS NULL)) AND (([Combo4] = @original_Combo4) OR ([Combo4] IS NULL AND @original_Combo4 IS NULL)) AND (([Combo5] = @original_Combo5) OR ([Combo5] IS NULL AND @original_Combo5 IS NULL)) AND (([DialCode] = @original_DialCode) OR ([DialCode] IS NULL AND @original_DialCode IS NULL))">
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
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnSave" runat="server" Text="Pay" OnClick="btnSave_Click" CssClass="btn btn-info" />
                        <button type="button" class="btn btn-info" data-dismiss="modal">
                            Close</button>
                    </div>
                </div>
            </div>
        </div>

        <script type='text/javascript'>
                function openModal() {
                    $('[id*=myModal]').modal('show');
                }  
        </script>

</asp:Content>
