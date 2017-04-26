
<!DOCTYPE html>
<html lang="en">


  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title> Electric Appliances Registration System </title>

    <!-- Bootstrap -->
	 <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>

  <body>


	<form method = "post">
	<h2 align="center"> Electric Applicances Registration</h2>
	<div id="form">


	<h3 align="center"> Add record </h3>

	<div class="login">
	<form name="form" method="POST">
	<label>Student ID</label>
	<input type="text" name="StudentID" placeholder="Student ID" size="30" required> <br>
	<label>Matric No</label>
	<input type="text" name="MatricNo" placeholder="Matric Number" size="30" required> <br>
	<label>Room No</label>
	<input type="text" name="RoomNo" placeholder="M00-000" size="30" pattern="[A-Z]{1,2}\d{1,2}-\d{3}" required> <br>
	<br>
	<br>
	<table>
	    	<tr>
	    	<th> Bil</th>
	    	<th> ITEMS</th>
	    	<th> USAGE SUGGESTIONS</th>
	    	<th> RATE </th>
	    	<th> REGISTER </th>
	    	</tr>

	    	<tr>
	    	<td>1</td>
	    	<td><img src="images/iron.jpg" alt=" IRON" style="width:128px;height:128px;"></td>
	    	<td>IRON<br>You are advised to iron your clothes as much as posiible at a time according to your
	    		convinience. The power used per usage equals to powering 24 bulbs of 100 watts. </td>
	    	<td>RM10/semester </td>
	    	<td>
	    	<div class="radio-toolbar">
			    <input type="radio" id="Iron " name="Iron" value="Iron" checked>
			    <label for="">YES</label>
			    <br>
			    <input type="radio" id="Iron" name="iron" value="Iron" checked>
			    <label for="">NO</label>
			</div>
			</td>
			</tr>

			<tr>
			<td>2</td>
			<td><img src="images/electrickettle.jpeg" alt=" ElectricKettle" style="width:128px;height:128px;"></td>
			<td>ELECTRIC KETTLE </br>Only boil water when needed and adequately. Do not leave your room when boiling water
			    to avoid reboiling the water.</td>
			<td>RM10/semester</td>
			<td>
			<div class="radio-toolbar">
					    <input type="radio" id="Electric Kettle" name="ElectricKettle" value="ELECTRICKETTLE" checked>
					    <label for="">YES</label>
					    <br>
					    <input type="radio" id="Electric Kettle" name="electricKettle" value="ELECTRICKETTLE" checked>
					    <label for="">NO</label>
			</div>
			</td>
	    	</tr>

			<tr>
	    	<td>3</td>
	    	<td><img src="images/electrickettle.jpeg" alt=" ElectricKettle" style="width:60px;height:128px;">
	    	<img src="images/iron.jpg" alt=" IRON" style="width:60px;height:128px;">
	    	</td>
	    	<td>PACKAGE<br>Saving electricity is saving your money.Hence, we need to be smart in using electricity to ensure
	    		 money is spent wisely.</td>
	    	<td>RM15/semester</td>
	    	<td>
	    	<div class="radio-toolbar">
			<input type="radio" id="Package" name="Package" value="Package" checked>
			<label for="">YES</label>
			<br>
			<input type="radio" id="Package" name="package" value="Package" checked>
			<label for="">NO</label>
			</div>
			</td>
			</tr>


			<tr>
			<td>4</td>
			<td><img src="images/toaster.jpg" alt=" Toaster" style="width:128px;height:128px;">
			</td>
			<td>TOASTER<br>Use toaster and not oven toaster to make toasts.Toaster uses lesser electricity and a cheaper alternatives.</td>
			<td>RM10/semester</td>
			<td>
			<div class="radio-toolbar">
		    <input type="radio" id="Toaster" name="Toaster" value="Toaster" checked>
		    <label for="">YES</label>
		    <br>
		    <input type="radio" id="Toaster" name="toaster" value="Toaster" checked>
		    <label for="">NO</label>
					</div>
			</td>
			</tr>

			<tr>
			<td>5</td>
			<td><img src="images/hairdryer.jpg" alt=" hairdryer" style="width:128px;height:128px;">
			</td>
			<td>HAIR DRYER <br>Drying your hair naturally ,in the sun or while you sleep saves 1500 watts for electrcity.</td>
			<td>RM5/semester</td>
			<td>
			<div class="radio-toolbar">
			<input type="radio" id="HairDryer" name="HairDryer" value="HairDryer" checked>
			<label for="">YES</label>
			<br>
			<input type="radio" id="HairDryer" name="hairDryer" value="HairDryer" checked>
			<label for="">NO</label>
			</div>
			</td>
			</tr>

			<tr>
			<td>6</td>
			<td><img src="images/radio.jpg" alt=" Radio" style="width:128px;height:128px;">
			</td>
			<td>RADIO<br> Radio are almost irrelevant now with its function replaced by other gadgets such as smartphones, computers,laptops and others.</td>
			<td>RM5/semester</td>
			<td>
			<div class="radio-toolbar">
			<input type="radio" id="Radio" name="Radio" value="Radio" checked>
			<label for="">Yes</label>
			<br>
			<input type="radio" id="Radio" name="radio" value="Radio" checked>
			<label for="">No</label>
			</div>
			</td>
			</tr>

			<tr>
			<td>7</td>
			<td><img src="images/cellephonecharger.jpg" alt=" cellephonecharger" style="width:128px;height:128px;">
			</td>
			<td>CELLEPHONE CHARGER<br>Please ensure that cellephone chargers are not switch on when not in use.It is estimated that if 1000 chargers are switched on when not in use,
				it could power 10 rooms. </td>
			<td>FREE</td>
			<td>
			<div class="radio-toolbar">
			<input type="radio" id="CellephoneCharger" name="CellephoneCharger" value="CellephoneCharger" checked>
			<label for="">Yes</label>
			<br>
			<input type="radio" id="CellephoneCharger" name="cellephoneCharger" value="CellephoneCharger" checked>
			<label for="">No</label>
			</div>
			</td>
			</tr>


			<tr>
			<td>8</td>
			<td><img src="images/laptop.jpg" alt=" laptop" style="width:128px;height:128px;">
			</td>
			<td><span>LAPTOP<br></span>Laptop uses 50% less electricity than computers.The use of flat screen monitors are more electricity savvy than conventional computer monitors </td>
			<td>FREE</td>
			<td>
			<div class="radio-toolbar">
			<input type="radio" id="Laptop" name="Laptop" value="Laptop" checked>
			<label for="">YES</label>
			<br>
			<input type="radio" id="Laptop" name="laptop" value="Laptop" checked>
			<label for="">NO</label>
			</div>
			</td>
			</tr>

    	</table>
    	<br>
    	<br>

    	<div class="login">
				<label for="AccounNo">Account No</label>

				<input type="text" name="AccountNo"placeholder="Account No" required>

		  	</div>

		  	<div class="login">
					<label for="AccountHolderName">Accont Holder Name</label>

					<input type="text" name="AccountHolderName" placeholder="Account Holder Name" required>
		  	</div>
		  	<br>
		  	<br>
			<button type="submit" class=""btn btn-warning"">SUBMIT</button>
			 <button type="reset" class=""btn btn-warning"">CLEAR</button>
			 </div>




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>
