<?php
    session_start();
	//echo $_SESSION["SESSION_PASS"];
    if (!isset($_SESSION["SESSION_NAME"])) {
        header("Location: frontend1.html");
    }
    include 'data_con.php';
?>


<?php

$error1=" ";

if (isset($_POST["submit1"])) {

// NEW CASE //

// COMPARE DATES AFOY TA KANOYME STRINGS //

$name1 = $_SESSION["SESSION_NAME"];
$status =$_POST['status'];
$date=$_POST['date'];

$sql2=	"SELECT date FROM has_covid WHERE name= '{$name1}'  order by id desc";
$result2=mysqli_query($conn,$sql2);
$row = mysqli_fetch_assoc($result2);

if(!isset($row)){


	$sql1 = "INSERT INTO has_covid (name, status, date) VALUES ('{$name1}', '{$status}', '{$date}')";
$result1 = mysqli_query($conn, $sql1);

if ($result1) {
	echo "<script>alert('Your case was successfully submited!');</script>";
	$error1="Your case was successfully submited!";
}else {
	echo "<script>alert('Failed');</script>";
	$error1="Failed submit";
	}

}else{

// EYRESH  DATE LOGIN ME VOH8EIA STRINGS VASHS //

$testaki=(string)$row['date'];
$testaki2=(string)$_POST['date'];
$datetest=new DateTime($testaki);
$datetest2=new DateTime($testaki2);
$intval = date_diff($datetest,$datetest2);//ME AUTO TO FORM PAIRNOYME TIN DIAFORA TON DATES
$intval->format("diff is : %a days");//debugging echo

 


 if((int)$intval->d>14){
$sql1 = "INSERT INTO has_covid (name, status, date) VALUES ('{$name1}', '{$status}', '{$date}')";
$result1 = mysqli_query($conn, $sql1);

if ($result1) {
	
	$error1="Your case was successfully submited!";
}else {
	
	$error1="Failed";
	}
  }else{
	
	$error1="Failed to submit your case.You have to wait 14 days to sumbit a new case.";
	  }
	
}
}
?>
<?php
//   PASSSWORD CHANGE //

$error2=" ";
    
 if (isset($_POST["update_data1"])) {
	 $newpassword = mysqli_real_escape_string($conn, ($_POST["newpassword"]));
	 $cpassword=$_POST["cpassword"];
	 $password=$_POST["password"];
	 $vpass=$_SESSION["SESSION_PASS"];
	 

	 if(!isset($newpassword) || !preg_match('/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\~?!@#\$%\^&\*])(?=.{8,})/', $newpassword)){ 
		$error2="Password must have at least 8 characters,
		At least one upper case Letter,
		At least one number and one symbol (for example !@#$%).";
	}else{
	 if($cpassword===$password && $vpass===$password){
	 $sql3=	"UPDATE users SET password='{$newpassword}' WHERE name= '{$_SESSION["SESSION_NAME"]}'";
	 $result3=mysqli_query($conn,$sql3);
	 $_SESSION["SESSION_PASS"]=$newpassword;
	 $error2="Password successfully changed!";
	 }else{
		// echo "<script>alert('Failed');</script>";
		$error2="Password and confirm password do not match!";
	 }
	}
 }
 ?>
<?php
// USERNAME CHANGE //

$error3=" ";
    
 if (isset($_POST["update_data2"])) {
	$newusername = mysqli_real_escape_string($conn, ($_POST["newusername"]));
	 $ucpassword=$_POST["ucpassword"];
	 $upassword=$_POST["upassword"];
	 $uvpass=$_SESSION["SESSION_PASS"];
	 $name=$_SESSION["SESSION_NAME"];

	 if (mysqli_num_rows(mysqli_query($conn, "SELECT * FROM users WHERE name='{$newusername}'")) > 0) {
		$error3="This username is already taken!";
	 }else{
	 if($ucpassword===$upassword && $uvpass===$upassword){
	 $sql4=	"UPDATE users SET name='{$newusername}' WHERE name= '{$_SESSION["SESSION_NAME"]}'";
	 $result4=mysqli_query($conn,$sql4);
	 $error3="Username successfully changed!";
	 $_SESSION["SESSION_NAME"]=$newusername;
	 }else{
		// echo "<script>alert('Failed');</script>";
		$error3="Password and confirm password do not match!";
	 }
	}
 }
 ?>
<?php


// CHECK IN EKSW APO XARTH //


$error4=" ";
if (isset($_POST["checkin-submit"])) {
	 
	$name5=$_SESSION["SESSION_NAME"];
	$place=$_POST["place"];
	$datelocal=$_POST["datelocal"];
	$number=$_POST["number"];
	$query = "  
	INSERT INTO checkins(name, popularity_estimation, timestamp,place)  
	VALUES('$name5', '$number', '$datelocal','$place');  
	";  
	if ($conn->query($query) === TRUE) {
		//echo "New record created successfully";
		$error4="New record created successfully";
		header("Refresh:0; url=userpage.php");
	  } else {
		echo "Error: " . $query . "<br>" . $conn->error;
	  }
	  
	  $conn->close();
}

?>
<!DOCTYPE html>
<html lang="en">

<head>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link rel="stylesheet" href="src/leaflet-search.css" />
  

<link rel="stylesheet" href="src/leaflet-gps.css" />

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>


<!-- header-->

    <link rel="stylesheet" href="userpage.css">
    <title>Dido Maps</title>
    <body>

		<section id="map" class="header">
		<nav>
		<h2>Welcome, <?php echo $_SESSION["SESSION_NAME"]; ?> <span class="form"><p><a href="logout.php">Logout</a></p></span></h2>
		<a href="frontend1.html"> <img src="./images/logo.jpg" /></a>
		
        

<!-- nav buttons-->

			<div class="nav-links" id="navLinks">
				<i class="fa fa-times" onclick="hideMenu()"></i>
				<ul>
					<li class="nav-item"><a href="frontend1.html" class="nav-link active">Home</a></li>

					<li><a href="#case">Submit Covid Case</a></li>

					<li><a href="#settings">Settings</a></li>

					<li><a href="#contact_case">My Contacts</a></li>

				</ul>
			</div>
			<i class="fa fa-bars" onclick="showMenu()"></i>
			
		</nav>
    

<div id="mapid"></div>

			</section>


<!-- new case code-->


  <!-- eidopoihse xrhstes me neo krousma--> 

<section id="case"class="case">
		<h1>New Covid Case</h1>
		<br>
		
		<form action="" method="post">
		
		<div class ="err"><p class = "error"><?php echo $error1; ?></p></div>
			<div class="input-label">

				<label for="">Date: </label>
				<input type="date" name="date" class="form-control" required/>

			</div>
		<br>
			<div class="input-label">
				
				<label for="" >Are you positive?: </label>
				
					<input type="radio" name="status" value="Positive" id="Positive" required/>YES

					<input type="radio" name="status" value="Negative" id="Negative"/>NO
				
			</div>
			<br>
			<div class="input-label">
				<button type="submit" name="submit1" id="submit1" class="hero-btn">Check-In</button>
			</div>
			
		</form>
	</section>


<!--------------------VIEW TABLES ME AJAX------------------------->

<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/fuse.js/1.2.2/fuse.min.js"></script>
	<script>
	$.ajax({
		url: "view_ajax.php",
		type: "POST",
		cache: false,
		success: function(data){
			//alert(data); //debugging
			$('#table').html(data); 
		}
	});
</script>

<!--my case history-->


<div class="row">
	<div class=" ">
		
		<h3>History of my Cases</h3>
		<div class="input-label">
		<table class="content-table" >
		<thead>
		  <tr>
			<th>Name</th>
			<th>Status</th>
			<th>Date</th>
			
		  </tr>
		</thead>
		<tbody id="table">

		</tbody>
	  </table>
	</div>
	</div>


<!-----Settings----->

<section id="settings" class="settings">
		<h1>Account Settings</h1>
		
		

<!-----change password-----> 

			<div class=" settings-col">
				
			<h3>Change Password</h3>
			<form action="" method="post">
			<div class ="err"><p class = "error"><?php echo $error2; ?></p></div>
		
		<div class="input-field">
                <label for="password" class="input-label">New Password :</label>
                <input type="password" name="newpassword" id="newpassword" class="input" placeholder="Enter your new password" required>
            </div>
		<div class="input-field">
                <label for="password" class="input-label">Current Password:</label>
                <input type="password" name="password" id="password" class="input" placeholder="Enter your password" required>
            </div>
            <div class="input-field">
                <label for="cpassword" class="input-label">Confirm Password:</label>
                <input type="password" name="cpassword" id="cpassword" class="input" placeholder="Enter your password again" required>
            </div>
			<br>
			<div class="form-group">
				<button type="submit"  name="update_data1" class="hero-btn">Submit</button>
			</div>
			<br>
		</form>
			</div>



<!-----change username-----> 


			<div class=" settings-col">
			<h3>Change Username</h3>
			<form action="" method="post">
		
			<div class ="err"><p class = "error"><?php echo $error3; ?></p></div>
		<div class="input-field">
                <label for="username" class="input-label">New Username  :</label>
                <input type="username" name="newusername" id="newusername" class="input" placeholder="Enter your new username" required>
            </div>
		<div class="input-field">
                <label for="password" class="input-label">Current Password:</label>
                <input type="password" name="upassword" id="upassword" class="input" placeholder="Enter your password" required>
            </div>
            <div class="input-field">
                <label for="cpassword" class="input-label">Confirm Password:</label>
                <input type="password" name="ucpassword" id="ucpassword" class="input" placeholder="Enter your password again" required>
            </div>
			<br>
			<div class="form-group">
				<button type="submit" name="update_data2" id="update_data2" class="hero-btn">Submit</button>
			</div>
		<br>
</form>
		</div>
	</section>



<!--------------------VIEW TABLES ME AJAX------------------------->


<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/fuse.js/1.2.2/fuse.min.js"></script>
	<script>
	$.ajax({
		url: "checkin.php",
		type: "POST",
		cache: false,
		success: function(data){
			//alert(data); //debugging
			$('#table1').html(data); 
		}
	});
</script>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/fuse.js/1.2.2/fuse.min.js"></script>
	<script>
	$.ajax({
		url: "contact.php",
		type: "POST",
		cache: false,
		success: function(data){
			//alert(data); //debugging
			$('#table2').html(data); 
		}
	});
</script>

<!------------------------------Possibility Of Contact With A Case---------------------------------------------->

<section id="contact_case" class="settings">
		<h1>Contact With A Case</h1>
		
		<div class="row">
			<div class=" ">
				
				<h3>My Check-Ins</h3>
				<div class="input-label">
				<table class="content-table" >
			    <thead>
			      <tr>
			        <th>Name</th>
			        <th>Estimation</th>
			        <th>Date</th>
					<th>Place</th>
					
			      </tr>
			    </thead>
			    <tbody id="table1">

			    </tbody>
			  </table>
			  
			</div>
			
			</div>
			<div class=" ">
				
				<h3>Contact With Case</h3>
				<div class="input-label">
				<table class="content-table" >
			    <thead>
			      <tr>
			        <th>Place</th>
			        <th>Date</th>
			        <th>Status</th>
					
			      </tr>
			    </thead>
			    <tbody id="table2">

			    </tbody>
			  </table>
			</div>
</section>

<!--footer-->
<section class="footer">
	
    
               <h6>Dido Maps.All rights reserved.&#169;</h6> 
			  
</section>

<!--POPUP-Check in-->
<section>
<form action="" method="post" autocomplete="off">
<div class="popup" id="popup">
	<div class="popup-header">
		<div class="tittle">Make a quick Check-In</div>
		<button data-close-button class="close-button">&times;</button>
	</div><div class="popup-body">
		<form >
		<div class="form-group">
		<div class="search-input">
				<label for="text" class="input-label">Your Current Location: </label>
			  
				<input id="autocomplete-input" type = "text" name="place" id="place" required/>
				<div class="autocom-box">
				
				</div>
			  </div>
			</div>
			
			<br>			
		<div class="form-group">
			<label for="">The Current Date: </label>
				<input type="date" name="datelocal" id="datelocal" class="form-control"/>
				<!--<input type="datetime-local" name="datelocal" id="datelocal" class="form-control"/>-->
			</div>
			<br>
			<div class="form-group">
				<label for="text" class="input-label">Your Popularity Estimation: </label>
				<input type = "number" name="number" id="number" min="0"/>
			</div>
			<br>
			<div class="form-group">
				<button type="submit" name="checkin-submit" id="checkin-submit" class="hero-btn">Submit</button>
			</div>
		 </div>
			</form>
</div>
<div id="overlay"></div>
</form>



</section>
<!---Location auto complete---->


<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/fuse.js/1.2.2/fuse.min.js"></script>
<script>
	const searchWrapper = document.querySelector(".search-input");
	const inputBox = searchWrapper.querySelector("input");
	const suggBox = searchWrapper.querySelector(".autocom-box");



	function select(element){
		let selectUserData = element.textContent;
		inputBox.value = selectUserData; // passing the element to text
	}

	function showSuggestions(list){
		let listData;
		if(!list.length){
			userValue=inputBox.value;
			listData='<li>' + userValue + '</li>';
		}else{
			listData=list.join('');
		}
		suggBox.innerHTML=listData;
	}


	$(document).ready(function(){
  $.ajax({
    url: "locations.php",
    method: "GET",
    success: function(data) {
      //console.log(data); //debugging
      
      var suggestions = [];

      for(var i in data) {
		suggestions.push(data[i].location);
         }

     	//if user press any key and release
	inputBox.onkeyup = (e)=>{
		let userData = e.target.value;//user entered data
		let emptyArray = [];
		if(userData){
			emptyArray = suggestions.filter((data)=>{
				//filterring array value lower case 
				return data.toLocaleLowerCase().startsWith(userData.toLocaleLowerCase());
				
			});
			emptyArray = emptyArray.map((data)=>{
				return data = '<li>' + data + '</li>';
			});
			//console.log(emptyArray); // debugging
			searchWrapper.classList.add("active"); //show autocomplete box
			showSuggestions(emptyArray);
			let allList = suggBox.querySelectorAll("li");
			for (let i=0; i <allList.length; i++){
				//adding onclick attribute in all li tag
				allList[i].setAttribute("onclick","select(this)");
			}
		}else{
			searchWrapper.classList.remove("active");//hide autocomplete box
		}
		
	}

    },
    error: function(data) {
      console.log(data);
    }
  });
});

</script>



<!-----JavaScript for toggle Menu---->


<script>
		var navLinks = document.getElementById("navLinks");
		function showMenu(){
			navLinks.style.right="0";
		}
		function hideMenu(){
			navLinks.style.right="-200px";
		}
	</script>

</body>

</html>






<!---------------------------------------------javascript---------------------------------------------------------------------->
  
<!--javscript locations-->
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
<script src="src/leaflet-search.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/fuse.js/1.2.2/fuse.min.js"></script>
<script src="src/leaflet-gps.js"></script>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script>


//call ajax
var ajax= new XMLHttpRequest();
	var method = "GET";
	var url="loc_data.php";
	var asynchronous =true;
	
	ajax.open(method,url,asynchronous);
	//sending ajax request
	ajax.send();

	//receiving response from data.php
	ajax.onreadystatechange = function(){
		if(this.readyState == 4 && this.status ==200){
			var data=JSON.parse(this.responseText);
			
			for(a in data){
				var name= data[a].name;
				var loc1 = data[a].coordinateslat;		
				var loc2 = data[a].coordinateslng;		
				var popularity=data[a].current_popularity;
			if(popularity<6 && popularity>=0){
				marker = new L.Marker(new L.latLng(loc1,loc2), {title: name,icon: greenIcon});//se property searched
				
					// Create an element to hold all your text and markup
				var container = $('<div />');

				// Delegate all event handling for the container itself and its contents to the container
				container.on('click', '.testlink', function() {
				    const openModalButtons = document.querySelectorAll('[data-modal-target]')
				const closeModalButtons = document.querySelectorAll('[data-close-button]')
				const overlay = document.getElementById('overlay')
				
				openModalButtons.forEach(button => {
				  button.addEventListener('click', () => {
				    const modal = document.querySelector(button.dataset.modalTarget)
				    openModal(modal)
				  })
				})
				overlay.addEventListener('click', () => {
				  const modals = document.querySelectorAll('.popup.active')
				  modals.forEach(modal => {
				    closeModal(modal)
				  })
				})

				closeModalButtons.forEach(button => {
				  button.addEventListener('click', () => {
				    const modal = button.closest('.popup')
				    closeModal(modal)
				  })
				})

				function openModal(modal) {
				  if (modal == null) return
				  modal.classList.add('active')
				  overlay.classList.add('active')
				}

				function closeModal(modal) {
				  if (modal == null) return
				  modal.classList.remove('active')
				  overlay.classList.remove('active')
				}
				});

				// Insert whatever you want into the container
				container.html("Name: "+name+"<br>"+"Popularity: "+popularity+"<br>");

				container.append($('<button data-modal-target="#popup" class="testlink">Open POPUP</button>').text("checkin"))
				
				// Insert the container into the popup
				marker.bindPopup(container[0]);
			
				markersLayer.addLayer(marker);



				}else if(popularity<15 && popularity>=6){
					marker = new L.Marker(new L.latLng(loc1,loc2), {title: name,icon: yellowIcon});//se property searched
			

					// Create an element to hold all your text and markup
					var container = $('<div />');

					// Delegate all event handling for the container itself and its contents to the container

					container.on('click', '.testlink', function() {
					    const openModalButtons = document.querySelectorAll('[data-modal-target]')
					const closeModalButtons = document.querySelectorAll('[data-close-button]')
					const overlay = document.getElementById('overlay')
					
					openModalButtons.forEach(button => {
					  button.addEventListener('click', () => {
					    const modal = document.querySelector(button.dataset.modalTarget)
					    openModal(modal)
					  })
					})

					overlay.addEventListener('click', () => {
					  const modals = document.querySelectorAll('.popup.active')
					  modals.forEach(modal => {
					    closeModal(modal)
					  })
					})

					closeModalButtons.forEach(button => {
					  button.addEventListener('click', () => {
					    const modal = button.closest('.popup')
					    closeModal(modal)
					  })
					})

					function openModal(modal) {
					  if (modal == null) return
					  modal.classList.add('active')
					  overlay.classList.add('active')
					}

					function closeModal(modal) {
					  if (modal == null) return
					  modal.classList.remove('active')
					  overlay.classList.remove('active')
					}
					});

				// Insert whatever you want into the container
				container.html("Name: "+name+"<br>"+"Popularity: "+popularity+"<br>");

				container.append($('<button data-modal-target="#popup" class="testlink">Open POPUP</button>').text("checkin"))

				// Insert the container into the popup
				marker.bindPopup(container[0]);
				
				
				markersLayer.addLayer(marker);
				}
			else if(popularity>14){
				marker = new L.Marker(new L.latLng(loc1,loc2), {title: name,icon: redIcon});//se property searched
			

					// Create an element to hold all your text and markup
				var container = $('<div />');

				// Delegate all event handling for the container itself and its contents to the container
				container.on('click', '.testlink', function() {
				    const openModalButtons = document.querySelectorAll('[data-modal-target]')
				const closeModalButtons = document.querySelectorAll('[data-close-button]')
				const overlay = document.getElementById('overlay')
				
				openModalButtons.forEach(button => {
				  button.addEventListener('click', () => {
				    const modal = document.querySelector(button.dataset.modalTarget)
				    openModal(modal)
				  })
				})

				overlay.addEventListener('click', () => {
				  const modals = document.querySelectorAll('.popup.active')
				  modals.forEach(modal => {
				    closeModal(modal)
				  })
				})

				closeModalButtons.forEach(button => {
				  button.addEventListener('click', () => {
				    const modal = button.closest('.popup')
				    closeModal(modal)
				  })
				})

				function openModal(modal) {
				  if (modal == null) return
				  modal.classList.add('active')
				  overlay.classList.add('active')
				}

				function closeModal(modal) {
				  if (modal == null) return
				  modal.classList.remove('active')
				  overlay.classList.remove('active')
				}
				});

				// Insert whatever you want into the container, using whichever approach you prefer
				container.html("Name: "+name+"<br>"+"Popularity: "+popularity+"<br>");

				container.append($('<button data-modal-target="#popup" class="testlink">Open POPUP</button>').text("checkin"))

				// Insert the container into the popup
				marker.bindPopup(container[0]);
				

				markersLayer.addLayer(marker);
				}
			}
		}
	}

//show map


var map = L.map('mapid').fitWorld();

	var tiles = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
			'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
		id: 'mapbox/streets-v11',
		tileSize: 512,
		zoomOffset: -1
	}).addTo(map);

// show my location

	function onLocationFound(e) {
		var radius = e.accuracy / 2;

		var locationMarker = L.marker(e.latlng).addTo(map)
			.bindPopup('This is your location.').openPopup();

		var locationCircle = L.circle(e.latlng, radius).addTo(map);
	}

	function onLocationError(e) {
		alert(e.message);
	}

	map.on('locationfound', onLocationFound);
	map.on('locationerror', onLocationError);

	map.locate({setView: true, maxZoom: 14});


// search bar 
	
	var markersLayer = new L.LayerGroup();	//layer contain searched elements
	map.addLayer(markersLayer);
	
	function customTip(text,val) {
		return '<a href="#">'+text+'<em style="background:'+text+'; width:14px;height:14px;float:right"></em></a>';
	}

	map.addControl( new L.Control.Search({
		layer: markersLayer,
		buildTip: customTip,
		autoType: false,
		zoom: 20
	}) );


// use custon icons

//greenIcon 
	var greenIcon = new L.Icon({
  iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-green.png',
  shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
  iconSize: [25, 41],
  iconAnchor: [12, 41],
  popupAnchor: [1, -34],
  shadowSize: [41, 41]

});

// yellowIcon
var yellowIcon = new L.Icon({
  iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-yellow.png',
  shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
  iconSize: [25, 41],
  iconAnchor: [12, 41],
  popupAnchor: [1, -34],
  shadowSize: [41, 41]
});

//redIcon
var redIcon = new L.Icon({
  iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-2x-red.png',
  shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
  iconSize: [25, 41],
  iconAnchor: [12, 41],
  popupAnchor: [1, -34],
  shadowSize: [41, 41]
});

</script>


