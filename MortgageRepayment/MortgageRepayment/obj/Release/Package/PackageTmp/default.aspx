<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MortgageRepayment._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Mortgage Payoff Calculator</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--  --%>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   
    <style type="text/css">
    
        
        .auto-style4 {
            width: 95%;
            table-layout: auto;
        }

        .auto-style9 {
            font-weight: bold;
        }
        
        body {
            background-image:url("../Images/grey3.jpg"); 
        }
        

        .container {          
            padding-top: 3%;
            padding-left:5%;
            padding-right:5%;
            padding-bottom:3%;
            
        }

        div.container {
          margin-bottom:3%;
          margin-top:3%;
          background-color:white;
          border: 1px solid black;
          opacity: 0.8;
          color:black;
          font-weight: bold;
          border-radius: 10px;
        }

        .jumbotron{
            
            background-color:black;
            color:white;
            border-radius:10px;
        }
        .auto-style12 {
            color: #000000;
        }
        .auto-style13 {
            font-size: xx-large;
        }
        .auto-style14 {
            width: 637px;
            height: 19px;
        }
        .auto-style15 {
            height: 19px;
            width: 313px;
        }
        .auto-style17 {
            width: 313px;
            height: 20px;
        }
        .auto-style21 {
            width: 637px;
            height: 27px;
        }
        .auto-style22 {
            height: 27px;
            width: 313px;
        }
        .auto-style24 {
            width: 561px;
            height: 20px;
        }
        .auto-style25 {
            width: 561px;
        }
        .auto-style29 {
            height: 22px;
        }
        .auto-style35 {
            width: 100%;
            margin-bottom: 0px;
            color:white;
            border-radius:10px;
        }
        .auto-style37 {
            width: 1225px;
            height: 20px;
        }
        .auto-style38 {
            width: 1225px;
        }
        .auto-style40 {
            width: 643px;
            height: 22px;
        }
        .auto-style42 {
            height: 20px;
        }
        .auto-style43 {
            width: 463px;
        }
        .auto-style44 {
            width: 463px;
            height: 20px;
        }
        .auto-style45 {
            width: 637px;
            height: 20px;
        }
        .auto-style46 {
            font-weight: normal;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" width="80%" class="form1">
        <div class="container" style="width: 90%" >
            <div class="jumbotron">
                <h1 class="auto-style13">Mortgage Payoff Calculator</h1>
            </div>
            <h3 class="auto-style12">Summary</h3>
            <div>
                <p class="auto-style46">
                    With additional
                    <strong>
                    <asp:Label ID="LabelPayoff" runat="server" ForeColor="Black" CssClass="auto-style12" AssociatedControlID="TextBoxPO">£500</asp:Label>
                    </strong>&nbsp;monthly payment you can payoff the mortgage in
          <strong>
          <asp:Label ID="LabelYear" runat="server" ForeColor="Black" Text="15" CssClass="auto-style12"></asp:Label>
                    </strong>&nbsp;years and
          <strong>
          <asp:Label ID="LabelMonth" runat="server" ForeColor="Black" Text="1"></asp:Label>
                    </strong>&nbsp;month. It is
          <strong>
          <asp:Label ID="LabelYear1" runat="server" ForeColor="Black" Text="14"></asp:Label>
                    </strong>&nbsp;years and
          <strong>
          <asp:Label ID="LabelMonth1" runat="server" ForeColor="Black" Text="11"></asp:Label>
                    </strong>&nbsp;month earlier than the old schedule. You will save
          <strong>
          <asp:Label ID="LabelSavedInterest" runat="server" ForeColor="Black">£101122.02</asp:Label>
                    </strong>&nbsp;of interest.
                </p>
            </div>
            <div class="row">
                <div class="col-sm-8">
            <div>
                <p>
                    <b>New Mortgage plan with additional
                        <asp:Label ID="LabelPayoff1" runat="server" Text="£500"></asp:Label>
                        &nbsp;Monthly Payment.</b>
                </p>
                <table style="border: thin solid #000000; width: 100%;" class="auto-style4">
                    <tr>
                        <td class="auto-style21" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Monthly Payment</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style22">
                            <asp:Label ID="LabelAMPayment" runat="server" Text="£1573.64"></asp:Label></span></td>
                    </tr>

                    <tr>
                        <td class="auto-style14" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total of
                            <strong>
                            <asp:Label ID="LabelNewMonth" runat="server">181</asp:Label>
                            &nbsp;</strong>monthly payments</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style15">
                            <asp:Label ID="LabelATPayment" runat="server" Text="£285389.55"></asp:Label></span></td>
                    </tr>

                    <tr>
                        <td class="auto-style45" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Interest paid</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style17">
                            <asp:Label ID="LabelAInterestPaid" runat="server" Text="£85389.55"></asp:Label></span></td>
                    </tr>

                </table>
            </div>
            <p></p>
            <p></p>
            <div>
                <p>Old Mortgage plan without any additional payment.</p>
                <table style="border: thin solid #000000; width: 100%;" class="auto-style4">
                    <tr>
                        <td class="auto-style37" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Old Monthly Payment</td>
                        <td class="auto-style24" style="border: thin solid #FFFFFF">
                            <asp:Label ID="LabelMPayment" runat="server" Text="£1073.64"></asp:Label></span></td>
                    </tr>

                    <tr>
                        <td class="auto-style38" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total of&nbsp<strong><asp:Label ID="LabelMonths" runat="server" Text="360"></asp:Label>
                            </strong>monthly payments</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style25">
                            <asp:Label ID="LabelTPayment" runat="server" Text="£386511.57"></asp:Label></span></td>
                    </tr>

                    <tr>
                        <td class="auto-style38" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Interest paid</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style25">
                            <asp:Label ID="LabelInterestPaid" runat="server" Text="£186511.57"></asp:Label></span></td>
                    </tr>

                </table>
            </div>

            <p></p>
            <p></p>
            <div>
                <p><b>Outstanding Mortgage after
                    <asp:Label ID="LabelRemainingYear" runat="server" Text="5"></asp:Label>
                    &nbsp;years.</b></p>
                <table style="border: thin solid #000000; width: 100%; background-color: #FFFFFF;" class="auto-style4">
                    <tr>
                        <td class="auto-style46" style="border: thin solid #FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mortage amount at start.</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style29"><asp:Label ID="LabelAmountAtStart" runat="server" Text="£200000.00"></asp:Label></td>
                    </tr>

                    <tr>
                        <td class="auto-style43" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remaining Mortage amount after
                    <strong>
                    <asp:Label ID="LabelRemainingYear1" runat="server">5</asp:Label>
                            </strong>&nbsp;years.</td>
                        <td style="border: thin solid #FFFFFF">
                            <asp:Label ID="LabelAmountRemaining" runat="server" Text="£183657.46"></asp:Label></span></td>
                    </tr>

                    <tr>
                        <td class="auto-style44" style="border: thin solid #FFFFFF"><span class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Repaid Amount</td>
                        <td style="border: thin solid #FFFFFF" class="auto-style42">
                            <asp:Label ID="LabelAmountRepaid" runat="server" Text="£16342.54"></asp:Label></span></td>
                    </tr>

                </table>
            </div>
            <p></p>
            <p></p>
            <p></p>
            </div>

            <div>
                 <div class="col-sm-4">

            <p>
                <asp:Chart ID="Chart1" runat="server" Height="383px" ImageLocation="ChartPic_#SEQ(250,3)" Width="353px">
                    <series>
                        <asp:Series BorderWidth="3" ChartType="Line" Name="Old Term" Palette="Bright" Legend="Legend1">
                            <Points>
                                <asp:DataPoint XValue="30" YValues="0" AxisLabel="" Label="" />
                                <asp:DataPoint YValues="200000" Label="" />
                            </Points>
                        </asp:Series>
                        <asp:Series BorderWidth="3" ChartArea="ChartArea1" ChartType="Line" Name="New Term" Legend="Legend1">
                            <Points>
                                <asp:DataPoint XValue="15.1" YValues="0" />
                                <asp:DataPoint YValues="200000" />
                            </Points>
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1" BackColor="Transparent">
                            <AxisY Interval="25000" IntervalType="Number" Minimum="0" Title="Mortgage Amount">
                            </AxisY>
                            <AxisX Interval="5" IntervalType="Number" Minimum="0" Title="Years">
                            </AxisX>
                        </asp:ChartArea>
                    </chartareas>
                    <Legends>
                        <asp:Legend BackColor="Transparent" Font="Microsoft Sans Serif, 9pt" IsTextAutoFit="False" Name="Legend1">
                            <Position Height="10" Width="35" X="55" Y="20" />
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="Title1" Text="Mortgage Early Payment Calculator">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </p>
            <p></p>
            <p></p>
                    </div>
                </div>
                <%--//////////////////////////////////////////////////--%>
                <table class="auto-style35" style="width: 100%; background-color: #000000;">
                    <tr>
                        <td class="auto-style40"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Existing Loan Amount</strong></td>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;<asp:TextBox ID="TextBoxLA" runat="server" CausesValidation="True" TextMode="Number" ValidateRequestMode="Enabled" CssClass="auto-style9" ForeColor="White" Height="22px" BackColor="Black" BorderColor="Black">200000.00</asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxLA" ErrorMessage="Required!" ForeColor="White"></asp:RequiredFieldValidator>
                        </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style40"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Existing Loan Term</strong></td>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBoxLT" runat="server" TextMode="Number" CssClass="auto-style9" ForeColor="White" Height="22px" BackColor="Black" BorderColor="Black">30</asp:TextBox>&nbsp;<strong>years</strong>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!" ControlToValidate="TextBoxLT" ForeColor="White"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style40"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Interest Rate</strong></td>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:TextBox ID="TextBoxIR" runat="server" CssClass="auto-style9" ForeColor="White" Height="22px" BackColor="Black" BorderColor="Black">5.00</asp:TextBox></strong>&nbsp;<strong>%&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required!" ControlToValidate="TextBoxIR" ForeColor="White"></asp:RequiredFieldValidator>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style40"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payoff with additional amount</strong></td>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxPO" runat="server" TextMode="Number" CssClass="auto-style9" ForeColor="White" Height="22px" BackColor="Black" BorderColor="Black">500.00</asp:TextBox>
                        </strong>&nbsp;<strong>per</strong> <strong>month</strong>.</td>
                    </tr>

                    <tr>
                        <td class="auto-style40"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Balance remaining after :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                        <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxRP" runat="server" TextMode="Number" CssClass="auto-style9" ForeColor="White" Height="22px" BackColor="Black" BorderColor="Black">5</asp:TextBox></strong>&nbsp;<strong>years</strong></td>
                    </tr>
                </table>
            </div>
            <p></p>
            <table class="nav-justified">
                <tr>
                    <td class="text-left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ButtonCalculate" runat="server" Text="Calculate" OnClick="ButtonCalculate_Click" BorderColor="Black" BorderStyle="Outset" CssClass="col-xs-offset-0" ForeColor="White" Width="112px" BackColor="Black" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonReset" runat="server" BorderColor="Black" BorderStyle="Outset" ForeColor="White" OnClick="ButtonReset_Click" Style="height: 26px" Text="Reset" Width="112px" BackColor="Black" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left">&nbsp;</td>
                </tr>
            </table>
            <p></p>              
            <p></p>
            <p></p>
        </div>
    </form>
</body>
</html>







