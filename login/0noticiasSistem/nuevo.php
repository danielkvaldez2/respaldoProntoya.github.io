<?php

if(session_id()=="")
{
   session_start();
}
if(!isset($_SESSION["id_usuario"])) header("location: ../index.php"); 
if($_SESSION['tipo_usuario']==1) {
?>

 
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
       	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="../css/bootstrap-theme.min.css" >

		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>

<body>
    

	<div class="container text-center">

	</br> 
<button class="btn btn-info my-2 my-sm-0 mb-3 "title=" New Register" >  New Register </button>
	  
</br></br> 


  <form class="form-horizontal" method="POST" action="guardar.php" enctype="multipart/form-data" autocomplede="on">
			


		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="dia">Day</label>
			</div>
			<select class="custom-select"  id="dia" name="dia">
				<option>- Day -</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>
		</div>

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="mes">Month</label>
			</div>
			<select class="custom-select" id="mes" name="mes">
					<option selected>- Month -</option>
					<option value="January">January</option>
					<option value="Febuary">Febuary</option>
					<option value="March">March</option>
					<option value="April">April</option>
					<option value="May">May</option>
					<option value="June">June</option>
					<option value="July">July</option>
					<option value="August">August</option>
					<option value="September">September</option>
					<option value="October">October</option>
					<option value="November">November</option>
					<option value="December">December</option>
			</select>
		</div>


		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<label class="input-group-text" for="posted">Posted by</label>
			</div>
			<select class="custom-select" id="posted" name="posted">
					<option selected>- Posted by -</option>
					<option value="Ship & Bunker "> SHIP & BUNKER </option>
					<option value="Portal Portuario">Portal Portuario"</option>
					<option value="Trade News">Trade News</option>
					<option value="Financial Times">Financial Times</option>
					<option value="Shiping Merchant Navy">Shiping Merchant Navy</option>
					<option value="Investors Merchant Navy">Investors Merchant Navy</option>
					<option value="Singapore Merchant Navy">Singapore Merchant Navy</option>
					<option value="PortThink">PortThink</option>
					 <option value="November">November</option>
					 <option value="Diego Balverde">Vesselfinder</option>
					<option value="Diego Balverde">Diego Balverde</option> 
					<option value="Petromarina">Petromarina</option>
			</select>
		</div>

        
        	<div class="form-group">
					<label for="titulo" class="col-sm-2 control-label">Titulo</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="titulo" name="titulo" placeholder="Titulo" required>
					</div>
            </div>
        
				<div class="form-group">
					<label for="texto" class="col-sm-2 control-label">Texto</label>
					<div class="col-sm-10">
             <textarea class="form-control" type="text" name="texto" id="texto" rows="10" cols="30">  </textarea>
            
            
					</div>
				</div>



				<div class="form-group">
					<label for="foto" class="col-sm-2 control-label">Foto</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="foto" name="foto">

					</div>
				</div>






				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<a href="welcomeNoticias.php" class="btn btn-default">Regresar</a>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</div>
			</form>
  </div>
</body>
 

<?php } 
     else  header("location: ../index.php"); 
?>