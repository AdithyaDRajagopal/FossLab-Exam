<html>
<head>
<title> Salary Calculator </title>
<body>
	<form method="post">
			<input type="text" name="g" placeholder="Gross Income">		//Accepts Gross income
			<input type="text" name="t" placeholder="Tax Percentage">	//Accepts tax percentage
			<input type="submit" value="submit" name="submit">		//Create a submit icon
	</form>

	<?php
		if(isset($_POST['submit'])){						//Checks if the submit button is clicked
			$gross=$_POST['g'];						//Stores gross income into g
			$tax=$_POST['t'];						//Stores tax percentage into t
			$td=$tax*$gross/100;						//Compute tax amount
			$pd=4.3*$gross/100;						//Compute pension amount
			$salary=$gross-$td-$pd;						//Compute total salary
			echo("Total Salary:\n");					//Prints total salary
			echo($salary);
		}
	?>
</body>
</head>
</html>

