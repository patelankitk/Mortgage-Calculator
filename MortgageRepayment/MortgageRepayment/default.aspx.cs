using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MortgageRepayment
{
    public partial class _default : System.Web.UI.Page
    {
        double r;//Interest Rate
        double P; // Amount Borrowed
        double N;//No of months
        double c;//Total Monthly Payment
        double powerValue;
        double Payoff = 0;
        double NewMonthlyPayment;
        double NewTotalMonth;
        double PV; // Present Value;
        double BalanceRemaining;
        double BalancePaid;
        double RemainingMonths;
        double X;
        double rt;
        double numerator;
        double denominator;
        int remainder;
        int quotient;
        int TotalMonths;
        int NewMonths;
        double OldInterest;
        double NewInterest;
        double InterestSaved;
        double RemainingYears;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCalculate_Click(object sender, EventArgs e)
        {
            // To Calculate the payment without pay off
            //{ 
            r = double.Parse(TextBoxIR.Text) / 100; // converting interest rate for 12 months and devide by 100
            P = double.Parse(TextBoxLA.Text);
            N = double.Parse(TextBoxLT.Text) * 12; // converting years to months
            rt = r / 12;
            //formula to calculate interest for monthly payment 
            //c = (rP(1+r)power N ) / ((1+r)power N-1).

            powerValue = Math.Pow((1 + rt), N);
            c = (rt * P * powerValue) / (powerValue - 1);
            LabelMPayment.Text = String.Format("{0:£.00}", c);      // displaying only  2 decimal place to text box

            // displaying the number of months //
            LabelMonths.Text = N.ToString();

            //Total amount paid after complete years//
            LabelTPayment.Text = String.Format("{0:£.00}", (N * c));

            //Total interest paid //
            // Interest Formula I = cN - P //

            OldInterest = (c * N) - P;
            LabelInterestPaid.Text = String.Format("{0:£.00}", OldInterest);
            //} - END OF CALCULATION FOR OLD PAYMENTS

            // Displaying the payoff amount //
            if (TextBoxPO.Text != "")
            {
                Payoff = double.Parse(TextBoxPO.Text);
                LabelPayoff.Text = String.Format("{0:£.00}", double.Parse(TextBoxPO.Text));
                LabelPayoff1.Text = String.Format("{0:£.00}", double.Parse(TextBoxPO.Text));
            }
            else
            {
                TextBoxPO.Text = "0";
                LabelPayoff.Text = "0";
                LabelPayoff1.Text = "0";
            }
            //New Monthly Payment with Extra Payment
            NewMonthlyPayment = c + Payoff;

            LabelAMPayment.Text = String.Format("{0:£.00}", NewMonthlyPayment);

            //Reaming period // formula -- Bal.Paid = (12 MonthlyPayment / r - P)[(1 + r / 12)X - 1]
            //balance paid after X month //

            RemainingYears = double.Parse(TextBoxRP.Text);
            LabelRemainingYear.Text = TextBoxRP.Text;
            LabelRemainingYear1.Text = TextBoxRP.Text;

            RemainingMonths = RemainingYears * 12;
            //principle amount amount remaining after 5 years //

            BalancePaid = (((12 * c) / r) - (P)) * (Math.Pow((1 + (r / 12)), RemainingMonths) - 1);
            PV = P - BalancePaid;

            LabelAmountAtStart.Text = string.Format("{0:£.00}", (double.Parse(TextBoxLA.Text)));
            LabelAmountRemaining.Text = string.Format("{0:£.00}", PV);
            LabelAmountRepaid.Text = string.Format("{0:£.00}", BalancePaid);

            //n=log[(MP/i)/((MP/i)−PV)]/log(1+i) ************ To calculate new months after additional payoff *****           
            numerator = Math.Log((NewMonthlyPayment / rt) / ((NewMonthlyPayment / rt) - P));
            denominator = Math.Log(1 + rt);
            NewTotalMonth = numerator / denominator;
            TotalMonths = (int)Math.Round(NewTotalMonth);
            LabelNewMonth.Text = TotalMonths.ToString();



            //displaying new total payment after additonal payoff //

            LabelATPayment.Text = String.Format("{0:£.00}", (NewTotalMonth * NewMonthlyPayment));

            //Calculating new total interest payable after additional payoff //
            NewInterest = (NewMonthlyPayment * NewTotalMonth) - P;
            LabelAInterestPaid.Text = String.Format("{0:£.00}", NewInterest);

            //calculating years and months for user with additional pay off//
            remainder = TotalMonths % 12;
            quotient = TotalMonths / 12;

            LabelYear.Text = quotient.ToString();
            LabelMonth.Text = remainder.ToString();

            // calculating years and month for user after deducting from original years //
            NewMonths = (int)N - TotalMonths;

            remainder = NewMonths % 12;
            quotient = NewMonths / 12;

            LabelYear1.Text = quotient.ToString();
            LabelMonth1.Text = remainder.ToString();

            //calculatng interest saved //
            InterestSaved = Math.Round(OldInterest, 2) - Math.Round(NewInterest, 2);

            LabelSavedInterest.Text = string.Format("{0:£.00}", InterestSaved);

            //Graph


            Chart1.Series[0].Points[0].SetValueXY(TextBoxLT.Text, 0);
            Chart1.Series[0].Points[1].SetValueY(TextBoxLA.Text);

            int x1 = int.Parse(LabelYear.Text) + (int.Parse(LabelMonth.Text) / 10);

            Chart1.Series[1].Points[0].SetValueXY(x1, 0);
            Chart1.Series[1].Points[1].SetValueY(TextBoxLA.Text);
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            foreach (Control ctrl in form1.Controls)

            {

                //check for all the TextBox controls on the page and clear them

                if (ctrl.GetType() == typeof(TextBox))

                {

                    ((TextBox)(ctrl)).Text = string.Empty;

                }
                //check for all the Label controls on the page and clear them 

                else if (ctrl.GetType() == typeof(Label))

                {

                    ((Label)(ctrl)).Text = string.Empty;

                }
            }
        }
    }
}