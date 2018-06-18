<%@ Page Title="Contact Us" Language="C#"  AutoEventWireup="true" CodeBehind="Contact.aspx.cs" EnableEventValidation="false" Inherits="database.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Newsletter Signup</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="contact us/css/util.css">
	<link rel="stylesheet" type="text/css" href="contact us/css/main.css">
<!--===============================================================================================-->
       

   
    <!-- custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //custom-theme -->
    <!-- font-awesome-icons -->
    

</head>
<body>
      <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header pull-left">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="About.aspx"><b>MorCVD</b></a>
                </div>
               <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                  
                </ul>
                   </div>
            </div>
        </nav> 
    <form id="form1" runat="server">
        <div class="row">
        <p>
            <br />
        </p>    
            <p>
            <br />
        </p>   
                 <p>
            <br />
        </p>  
        </div>
        <div>
            <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					Contact Us
				</span>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Your Name</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="name" runat="server" CssClass="input100" placeholder="Enter your name"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<span class="label-input100">Email</span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="(Invalid Email Format)" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="email" runat="server" CssClass="input100" placeholder="Enter your email addess"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>
                <div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100">Message</span>
                    <asp:TextBox ID="message" CssClass="input100" runat="server" TextMode="MultiLine" placeholder="Enter your message"></asp:TextBox>
					
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn">
						</div>
                            <asp:Button ID="Button_submit" runat="server" Text="Submit" CssClass="btn-success contact100-form-btn" OnClick="Button_submit_Click" />
                         
						<!--s<button class="contact100-form-btn">
                             
							<span>
                               
								Submit
								
							</span>
                        
						</button>-->
					</div>
				</div>

			</form>
		</div>
	</div>



	

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
        $(".selection-2").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect1')
        });
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>

        </div>
         <div class="row">
        <p>
            <br />
        </p>    
            <p>
            <br />
        </p>    
                 <p>
            <br />
        </p> 
        </div>
    </form>
</body>
      <style>

footer {
  background: #FCFCFC;
  border-top: 0px solid #DDD;

  font-family: 'Monda', sans-serif;
  font-size: 13px;
  line-height: 16px;
  overflow: hidden;

  text-align: center;
   position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: black;
    color: white;
    text-align: center;
}
footer .footer {
  margin: 0 10px 0 40px;
  padding: 20px 0 10px;
}

</style>
    <footer>
  <div class="footer">
  <p style="color:white;">&copy; <%: DateTime.Now.Year %> - CSBL |  Division of Biological Sciences & Engineering | <a href="http://www.nsit.ac.in/" style="color:dodgerblue;">Netaji Subhas Institute of Technology</a></p>
  </div>
</footer>
</html>
