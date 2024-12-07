<%@ Page Title="Registration Form" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Registration_form_with_validation._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Registration Form</title>
    <style>
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container div {
            margin-bottom: 15px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
        }
        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-container .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <div>
            <h2>Registration Form</h2>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                                        ControlToValidate="txtFirstName"
                                        ErrorMessage="First Name is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                                        ControlToValidate="txtLastName"
                                        ErrorMessage="Last Name is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                        ControlToValidate="txtEmail"
                                        ErrorMessage="Email is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                            ControlToValidate="txtEmail"
                                            ErrorMessage="Invalid email format."
                                            CssClass="error"
                                            ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$">
                
            </asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                        ControlToValidate="txtPassword"
                                        ErrorMessage="Password is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                                        ControlToValidate="txtConfirmPassword"
                                        ErrorMessage="Confirm Password is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPasswords" runat="server"
                                  ControlToCompare="txtPassword"
                                  ControlToValidate="txtConfirmPassword"
                                  ErrorMessage="Passwords do not match."
                                  CssClass="error">
                
            </asp:CompareValidator>
        </div>
        <div>
            <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                                        ControlToValidate="txtAge"
                                        ErrorMessage="Age is required."
                                        CssClass="error">
                
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server"
                                ControlToValidate="txtAge"
                                ErrorMessage="Age must be between 18 and 100."
                                CssClass="error" MinimumValue="18"
                                MaximumValue="100"
                                Type="Integer">
                
            </asp:RangeValidator>
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
<script runat="server">
    protected new void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Click += btnSubmit_Click;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // display success message
            Response.Write("Congrats! Validation passed.");
        }
    }
</script>
</body>
</html>