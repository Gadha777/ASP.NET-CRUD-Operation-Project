<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Techneurons.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title></title>
    <style type="text/css">
        .auto-style5{
            border-radius: 24px;
        }
        .auto-style1 {
            width: 44%;
            height: 262px;
            position: absolute;
            top: 102px;
            left: 49px;
            z-index: 1;
        }
        .auto-style2 {
            width: 1283px;
            height: 517px;
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
        }
        .auto-style3 {
            font-size: 1.75rem;
            width: 626px;
            text-align: center;
            height: 24px;
            position: absolute;
            top: 9px;
            left: -101px;
            z-index: 1;
            margin-left: 433px;
        }
        .auto-style4 {
            margin-right: 0;
        }
        .auto-style5 {
            text-align: justify;
        }
        .auto-style6 {
            text-align: justify;
            height: 33px;
        }
        .auto-style7 {
            text-align: justify;
            height: 26px;
        }
        .auto-style8 {
            width: 599px;
            height: 237px;
            position: absolute;
            top: 98px;
            left: 614px;
            z-index: 1;
        }
        </style><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="z-index: 1; width: 1283px; height: 402px; position: relative; top: -14px; left: 6px">
    <form id="form1" runat="server">
        <div algin ="center" title="hjdh" class="auto-style2">
            <p class="auto-style3" textalgin="center" aria-expanded="undefined" >EMPLOYEE INFO MANAGE FORM</p>
      
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">Employee Id </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" BorderColor="#0066CC"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="please enter employee id "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <br />
        <tr>
            <td class="auto-style5">Name </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" BorderColor="#0066CC"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Address </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" BorderColor="#0066CC"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style6">District</td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-select form-select-sm" aria-label=".form-select-sm example" Height="35px" Width="192px">
                    <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                    <asp:ListItem> Kollam</asp:ListItem>
                    <asp:ListItem> Pathanamthitta</asp:ListItem>
                    <asp:ListItem>Alappuzha</asp:ListItem>
                    <asp:ListItem>Kottayam</asp:ListItem>
                    <asp:ListItem> Idukki</asp:ListItem>
                    <asp:ListItem>Ernakulam</asp:ListItem>
                    <asp:ListItem>Thrissur</asp:ListItem>
                    <asp:ListItem>Palakkad</asp:ListItem>
                    <asp:ListItem>Malappuram</asp:ListItem>
                    <asp:ListItem>Kozhikode</asp:ListItem>
                    <asp:ListItem>Wayanad</asp:ListItem>
                    <asp:ListItem>Kannur</asp:ListItem>
                    <asp:ListItem>Kasaragod</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="INSERT" Width="115px" class="btn btn-outline-primary" OnClick="Button1_Click" BorderColor="#0066CC" BorderStyle="Solid" height="29px" />  </td> &nbsp; &nbsp; &nbsp; &nbsp;
            <td class="auto-style5">
                &nbsp; &nbsp; &nbsp; &nbsp;
                    
       
                &nbsp; &nbsp; &nbsp; &nbsp; 
                    
               <br/>
                <br />
       
         
                    
       
                <asp:Button ID="Button2" runat="server"   class="btn btn-outline-primary" Text ="UPDATE" width="115px"  BorderColor="#0066CC"  BorderStyle="Solid" height="29px" OnClick="Button2_Click" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        
                <asp:Button ID="Button3" runat="server" Text="DELETE"  class="btn btn-outline-primary" width="115px"  BorderColor="#0066CC"  BorderStyle="Solid" height="29px" OnClick="Button3_Click" />
        
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        
                <br />
       
        &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;
                    
                <br />
                <br/>
            </td>
        </tr>
    </table>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style8" DataSourceID="SqlDataSource1" GridLines="Vertical" AllowCustomPaging="True" AllowPaging="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employee]"></asp:SqlDataSource>
      
            <p style="font-size:large" > </p>
      
            <p>
                &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
       
         
        
    
           </div>

    </form>
</body>
</html>
