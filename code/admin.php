<?php
    session_start();
	//echo $_SESSION["SESSION_PASS"];
    if ($_SESSION["SESSION_NAME"]!=='admin') {
        header("Location: admin.php");
    }
    include 'data_con.php';
?>
<?php  
 $connect = mysqli_connect("localhost", "root", "", "myvash");  
 $query = "SELECT * FROM generic ORDER BY id DESC";  
 $result = mysqli_query($connect, $query);  
 ?>  

 
<!DOCTYPE html>
<html lang="en">

<head>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
    <link rel="stylesheet" href="src/leaflet-search.css" />
 
    <link rel="stylesheet" href="src/leaflet-search.css" />

<link rel="stylesheet" href="src/leaflet-gps.css" />

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>




    <title>Admin</title>
    <body>
      <link rel="stylesheet" href="admin.css">
		<section id="map" class="header1">
		<nav>
		<h2>Welcome Admin,<span class="form"><p><a href="./logout.php">Logout</a></p></span></h2>
    <h1 href="frontend1.html"> <img src="./images/logo.jpg" /></h1>


<!-- nav buttons-->

    <div class="nav-links" id="navLinks">
      <i class="fa fa-times" onclick="hideMenu()"></i>
      <ul>
        <li class="nav-item"><a href="frontend1.html" class="nav-link active">Home</a></li>
    
        <li><a href="#chart">Charts</a></li>
    
      </ul>
    </div>
    <i class="fa fa-bars" onclick="showMenu()"></i>

            </nav>

			<br /><br />  

           <div class="container" style="width:700px;">  
                <h3 align="center">Data Modification</h3>  
                <h2 align="center">(You can insert,delete or update all of the data)</h2>
                <br />  
                <div class="table-responsive">  
                     <div align="right">  
                          <button type="button" name="add" id="add" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-warning">Add Data</button>  
						  <button type="button" name="delete" id="delete"  class="btn btn-warning">Delete All Data</button>
                     </div>  
                     <br />  
                     <div id="employee_table">  
                          <table class="table table-bordered">  
                               <tr>  
                                    <th width="70%">Name</th>  
                                    <th width="15%">Edit</th>  
                                    <th width="15%">View</th>  
                               </tr>  
                               <?php  
                               while($row = mysqli_fetch_array($result))  
                               {  
                               ?>  
                               <tr>  
                                    <td><?php echo $row["name"]; ?></td>  
                                    <td><input type="button" name="edit" value="Edit" id="<?php echo $row["id"]; ?>" class="btn btn-info btn-xs edit_data" /></td>  
                                    <td><input type="button" name="view" value="view" id="<?php echo $row["id"]; ?>" class="btn btn-info btn-xs view_data" /></td>  
                               </tr>  
                               <?php  
                               }  
                               ?>  
                          </table>  
                     </div>  
                </div>  
           </div>  
          <br>
          <br>
          <section id="chart"class="chart">
       <div class="container" style="width:700px;">  
            <h2 align="center" >CHARTS<h2>
            </div>
          </section> 
  
 <div class="row1">
            
            <div class="settings1">
            <canvas id="myChart0"></canvas>
          </div>
       

       <div class="settings2">  
        <canvas id="myChart1"></canvas>
        </div>
       

       <div class="settings3">  
         <canvas id="myChart2"></canvas>
        </div>
       

  
</div> 
<div class="row1" >
          <div class="settings1">
            <canvas id="myChart3"></canvas>
            </div>
       
       
      
          <div class="settings2">
            <canvas id="myChart4"></canvas>
          </div>


</div>
<div class="row1" >
         
          <div class="" style="width:600px;">
            <canvas id="myChart5"></canvas>
            <input onchange="filterData()" type="date" id="startdate" value="2021-08-25">
            <input onchange="filterData()" type="date" id="enddate" value="2021-08-31">
                              </div>
          <div class="" style="width:600px;">
          <canvas id="myChart6"></canvas>
          <input onchange="filterData()" type="date" id="startdate" value="2021-08-25">
          <input onchange="filterData()" type="date" id="enddate" value="2021-08-31">
            </div>
            
</div>

<div class="row1" >
         
          <div class="" style="width:600px;">
            <canvas id="myChart7"></canvas>
            <input onchange="filterData()" type="date" id="startdate" value="2021-08-25">
          
                             
            
</div>



<br>


      </body>  
 </html>  








<script>


// Συνολικός αριθμός επισκέψεων // 



 $(document).ready(function(){
  $.ajax({
    url: "admin_checkins.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];

      for(var i in data) {
         score.push(data[i].id);
        
      }

      var chartdata = {
          labels: ['CHECK INS COUNT'],
        datasets : [
          {
            label: 'ALL TIME CHECKINS',
            backgroundColor: 'rgb(8, 59, 102)',
            borderColor: 'rgb(8, 59, 102)',
            hoverBackgroundColor: 'rgb(255, 255, 255)',
            hoverBorderColor: 'rgb(255, 255, 255)',
            data: score
          }
        ]
      };

      var ctx = $("#myChart0");

      var barGraph = new Chart(ctx, {
        type: 'line',
        data: chartdata,
        options: {
          scales: {
        xAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
        }
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});


// Συνολικός αριθμός κρουσμάτων //





$(document).ready(function(){
  $.ajax({
    url: "admin_covid.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];

      for(var i in data) {
         score.push(data[i].id);
        
      }

      var chartdata = {
          labels: ['COVID NUMBERS'],
        datasets : [
          {
            label: 'ALL COVID CASES',
            backgroundColor: 'rgb(73, 184, 218,0.75)',
            borderColor: 'rgb(73, 184, 218, 0.75)',
            hoverBackgroundColor: 'rgb(73, 184, 218, 1)',
            hoverBorderColor: 'rgb(73, 184, 218, 1)',
            data: score
          }
        ]
      };

      var ctx = $("#myChart1");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
          scales: {
        xAxes: [{
            barPercentage: 0.4
        }]
    }
        }
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});







// Συνολικός αριθμός επισκέψεων από ενεργά κρούσματα έως και 7 ημέρες πρίν από ημερομηνία διάγνωσης // 




$(document).ready(function(){
  $.ajax({
    url: "admin_7daycheckin.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];

      for(var i in data) {
         score.push(data[i].id);
        
      }

      var chartdata = {
          labels: ['COVID NUMBERS'],
        datasets : [
          {
            label: 'COVID ACTIVE CASES 7 DAYS',
            backgroundColor: 'rgb(255,165,0,0.5)',
            borderColor: 'rgb(255,165,0, 0.5)',
            hoverBackgroundColor: 'rgb(255,165,0, 1)',
            hoverBorderColor: 'rgb(255,165,0, 1)',
            data: score
          }
        ]
      };

      var ctx = $("#myChart2");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
          scales: {
        xAxes: [{
            barPercentage: 0.4
        }]
    }
        }
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});


// POIs με βάση το συνολικό πλήθος των επισκέψεων //




$(document).ready(function(){
  $.ajax({
    url: "admin_poi.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
    var score = [];
     var test=[];
      for(var i in data) {
         score.push(data[i].place);
         test.push(data[i].count);
         
        
      }

      var chartdata = {
          labels: score,
        datasets : [
          {
            label: 'POIs RANKING BASED ON USERS',
            backgroundColor: 'rgb(255,0,255,0.5)',
            borderColor: 'rgb(255,0,255, 0.5)',
            hoverBackgroundColor: 'rgb(255,0,255, 1)',
            hoverBorderColor: 'rgb(255,0,255, 1)',
            data: test
          }
        ]
      };

      var ctx = $("#myChart3");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
    scales: {
        xAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
}
      });
    },
    error: function(data) {
      console.log(data);X
    }
  });
});





// POIs με βάση τον αριθμό κρουσμάτων //



$(document).ready(function(){
  $.ajax({
    url: "admin_poisCases.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];
      var test=[];
      for(var i in data) {
         score.push(data[i].place);
         test.push(data[i].count);
      }

      var chartdata = {
          labels: score,
        datasets : [
          {
            label: 'POIs RANKING BASED ON COVID CASES',
            backgroundColor: 'rgb(0,255,0,0.5)',
            borderColor: 'rgb(0,255,0, 0.5)',
            hoverBackgroundColor: 'rgb(0,255,0, 1)',
            hoverBorderColor: 'rgb(0,255,0, 1)',
            data: test
          }
        ]
      };

      var ctx = $("#myChart4");

      var barGraph = new Chart(ctx, {
        type: 'bar',
        data: chartdata,
        options: {
    scales: {
        xAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
}
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});



// erwthma f ypoerwthma 1

// setup 



$(document).ready(function(){
  $.ajax({
    url: "admin_daysChart.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];
      var test=[];
      var score2=[];
      var test2=[];
      for(var i in data) {
         score.push(data[i].timestamp);
         test.push(data[i].count);
         score2.push(data[i].date);
         test2.push(data[i].count);
      }


var data = {
      labels: score,
      datasets: [{
        label: 'User Based Visits',
        data: test,
        backgroundColor: [
          'rgba(255, 26, 104, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(0, 0, 0, 0.2)'
        ],
        borderColor: [
          'rgba(255, 26, 104, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)',
          'rgba(0, 0, 0, 1)'
        ],
        borderWidth: 1
      }]
    };
  

    // config 
    const config = {
      type: 'bar',
      data,
      options: {
        scales: {
        yAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
      }
    };

    // render init block
    const myChart = new Chart(
      document.getElementById('myChart5'),
      config
    );

//function filterdata
function filterData(){
  const dates2=[...score];
  console.log(dates2);
  const startdate=document.getElementById('startdate');
  const enddate=document.getElementById('enddate');

  //get the index number in array
  const indexstartdate=dates2.indexOf(startdate.value);
  const indexenddate=dates2.indexOf(enddate.value);

  //slice the array (pie) only shhowing the selected section/ slice
  const filterDate=dates2.slice(indexstartdate, indexenddate+1);
  
  //replace the labels in the chart
  myChart.config.data.labels = filterDate;

 //datapoints
 const datapoints2=[...test];
 const filterDatapoints=datapoints2.slice(indexstartdate, indexenddate+1);
 myChart.config.data.datasets[0].data= filterDatapoints;
 
 
  myChart.update();
}
     
    },
    error: function(data) {
      console.log(data);
    }
  });
});



// erwthma f  ypoerwthma 2

//setup


$(document).ready(function(){
  $.ajax({
    url: "admin_poisCases.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];
      var test=[];
      for(var i in data) {
         score.push(data[i].place);
         test.push(data[i].count);
      }

      var chartdata = {
          labels: score,
        datasets : [
          {
            label: 'POIs RANKING BASED ON COVID CASES',
            backgroundColor: 'rgb(0,255,0,0.5)',
            borderColor: 'rgb(0,255,0, 0.5)',
            hoverBackgroundColor: 'rgb(0,255,0, 1)',
            hoverBorderColor: 'rgb(0,255,0, 1)',
            data: test
          }
        ]
      };

      var ctx = $("#myChart6");

      var barGraph = new Chart(ctx, {
        type: 'horizontalBar',
        data: chartdata,
        options: {
    scales: {
        xAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
}
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
});

// erwthma g  

$(document).ready(function(){
  $.ajax({
    url: "admin_daysChart.php",
    method: "GET",
    success: function(data) {
      console.log(data);
      
      var score = [];
      var test=[];
      var score2=[];
      var test2=[];
      for(var i in data) {
         score.push(data[i].timestamp);
         test.push(data[i].count);
         score2.push(data[i].date);
         test2.push(data[i].count);
      }


var data = {
      labels: score,
      datasets: [{
        label: 'Number of visits change in hours',
        data: test,
        backgroundColor: [
          'rgba(255, 26, 104, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)',
          'rgba(153, 102, 255, 0.2)',
          'rgba(255, 159, 64, 0.2)',
          'rgba(0, 0, 0, 0.2)'
        ],
        borderColor: [
          'rgba(255, 26, 104, 1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)',
          'rgba(153, 102, 255, 1)',
          'rgba(255, 159, 64, 1)',
          'rgba(0, 0, 0, 1)'
        ],
        borderWidth: 1
      }]
    };
  

    // config 
    const config = {
      type: 'line',
      data,
      options: {
        scales: {
        yAxes: [{
            ticks: {
                beginAtZero: true
            }
        }]
    }
      }
    };

    // render init block
    const myChart = new Chart(
      document.getElementById('myChart7'),
      config
    );

//function filterdata
function filterData(){
  const dates2=[...score];
  console.log(dates2);
  const startdate=document.getElementById('startdate');
  const enddate=document.getElementById('enddate');

  //get the index number in array
  const indexstartdate=dates2.indexOf(startdate.value);
  const indexenddate=dates2.indexOf(enddate.value);

  //slice the array (pie) only shhowing the selected section/ slice
  const filterDate=dates2.slice(indexstartdate, indexenddate+1);
  
  //replace the labels in the chart
  myChart.config.data.labels = filterDate;

 //datapoints
 const datapoints2=[...test];
 const filterDatapoints=datapoints2.slice(indexstartdate, indexenddate+1);
 myChart.config.data.datasets[0].data= filterDatapoints;
 
 
  myChart.update();
}
     
    },
    error: function(data) {
      console.log(data);
    }
  });
});



</script>




 <div id="dataModal" class="modal fade">  
      <div class="modal-dialog">  
           <div class="modal-content">  
                <div class="modal-header">  
                     <button type="button" class="close" data-dismiss="modal">&times;</button>  
                     <h4 class="modal-title">View Tables</h4>  
                </div>  
                <div class="modal-body" id="employee_detail">  
                </div>  
                <div class="modal-footer">  
                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                </div>  
           </div>  
      </div>  
 </div>  
 <div id="add_data_Modal" class="modal fade">  
      <div class="modal-dialog">  
           <div class="modal-content">  
                <div class="modal-header">  
                     <button type="button" class="close" data-dismiss="modal">&times;</button>  
                     <h4 class="modal-title">Edit Form</h4>  
                </div>  
                <div class="modal-body">  
                     <form method="post" id="insert_form">  
                          <label>Enter Name</label>  
                          <input type="text" name="name" id="name" class="form-control" />  
                          <br />  
                          <label>Enter Address</label>  
                          <textarea name="address" id="address" class="form-control"></textarea>  
                          <br />  
                          <label>Enter Type</label>  
                          <input type="text" name="types0" id="types0" class="form-control" />  
                          <br /> 
                          <label>Enter Rating</label>  
                          <input type="text" name="rating" id="rating" class="form-control" />  
                          <br />  
                          <label>Enter Popularity</label>  
                          <input type="text" name="current_popularity" id="current_popularity" class="form-control" />  
                          <br />  
                          <input type="hidden" name="employee_id" id="employee_id" />  
                          <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success" />  
                     </form>  
                </div>  
                <div class="modal-footer">  
                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                </div>  
           </div>  
      </div>  
 </div>  
 <script>  
 $(document).ready(function(){  
      $('#add').click(function(){  
           $('#insert').val("Insert");  
           $('#insert_form')[0].reset();  
      });  
      $(document).on('click', '.edit_data', function(){  
           var employee_id = $(this).attr("id");  
           $.ajax({  
                url:"admin_data_con.php",  
                method:"POST",  
                data:{employee_id:employee_id},  
                dataType:"json",  
                success:function(data){  
                     $('#name').val(data.name);  
                     $('#address').val(data.address);  
                     $('#types0').val(data.types0);  
                     $('#rating').val(data.rating);  
                     $('#current_popularity').val(data.current_popularity);  
					           $('#employee_id').val(data.id);  
                     $('#insert').val("Update");  
                     $('#add_data_Modal').modal('show');  
                }  
           });  
      });  
      $('#insert_form').on("submit", function(event){  
           event.preventDefault();  
           if($('#name').val() == "")  
           {  
                alert("Name is required");  
           }  
           else  
           {  
                $.ajax({  
                     url:"admin_insert.php",  
                     method:"POST",  
                     data:$('#insert_form').serialize(),  
                     beforeSend:function(){  
                          $('#insert').val("Inserting");  
                     },  
                     success:function(data){  
                          $('#insert_form')[0].reset();  
                          $('#add_data_Modal').modal('hide');  
                          $('#employee_table').html(data);  
                     }  
                });  
           }  
      });  
      $(document).on('click', '.view_data', function(){  
           var employee_id = $(this).attr("id");  
           if(employee_id != '')  
           {  
                $.ajax({  
                     url:"admin_select.php",  
                     method:"POST",  
                     data:{employee_id:employee_id},  
                     success:function(data){  
                          $('#employee_detail').html(data);  
                          $('#dataModal').modal('show');  
                     }  
                });  
           }            
      });  
 });  
 </script>
 
<!--
///// ΔΙΑΓΡΑΦΗ ΟΛΩΝ ΤΩΝ ΔΕΔΟΜΕΝΩΝ /////
 /*
if(isset($_GET['delete'])){
    $connection = mysqli_connect('localhost', 'root', '', 'myvash');
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }
    $sql = 'DELETE * FROM generic';
    $sql = 'DELETE * FROM checkins';
    $sql = 'DELETE * FROM has_covid';
    $sql = 'DELETE * FROM users';
    $sql1=mysqli_query($connection, $sql);
    if ($sql1) {
        echo "Database myvash was successfully dropped\n";
    } else {
        echo 'Error dropping database: ' . mysql_error() . "\n";
    }
    $connection->close();
}*/
-->
