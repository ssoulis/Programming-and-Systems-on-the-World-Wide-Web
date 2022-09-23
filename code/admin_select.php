<?php  
 if(isset($_POST["employee_id"]))  
 {  
      $output = '';  
      $connect = mysqli_connect("localhost", "root", "", "myvash");  
      $query = "SELECT * FROM generic WHERE id = '".$_POST["employee_id"]."'";  
      $result = mysqli_query($connect, $query);  
      $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">';  
      while($row = mysqli_fetch_array($result))  
      {  
           $output .= '  
                <tr>  
                     <td width="30%"><label>Name</label></td>  
                     <td width="70%">'.$row["name"].'</td>  
                </tr>  
                <tr>  
                     <td width="30%"><label>Address</label></td>  
                     <td width="70%">'.$row["address"].'</td>  
                </tr>  
                <tr>  
                     <td width="30%"><label>Type</label></td>  
                     <td width="70%">'.$row["types0"].'</td>  
                </tr>  
                <tr>  
                     <td width="30%"><label>Rating</label></td>  
                     <td width="70%">'.$row["rating"].'</td>  
                </tr>  
                <tr>  
                     <td width="30%"><label>Popularity</label></td>  
                     <td width="70%">'.$row["current_popularity"].' </td>  
                </tr>  
           ';  
      }  
      $output .= '  
           </table>  
      </div>  
      ';  
      echo $output;  
 }  
 ?>
 