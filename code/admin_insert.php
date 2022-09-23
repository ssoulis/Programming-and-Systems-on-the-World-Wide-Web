<?php  
 $connect = mysqli_connect("localhost", "root", "", "myvash");  
 if(!empty($_POST))  
 {  
      $output = '';  
      $message = '';  
      $name = mysqli_real_escape_string($connect, $_POST["name"]);  
      $address = mysqli_real_escape_string($connect, $_POST["address"]);  
      $types0 = mysqli_real_escape_string($connect, $_POST["types0"]);  
      $rating = mysqli_real_escape_string($connect, $_POST["rating"]);  
      $current_popularity = mysqli_real_escape_string($connect, $_POST["current_popularity"]);  
      if($_POST["employee_id"] != '')  
      {  
           $query = "  
           UPDATE generic   
           SET name='$name',   
           address='$address',   
           types0='$types0',   
           rating = '$rating',   
           current_popularity = '$current_popularity'   
           WHERE id='".$_POST["employee_id"]."'";  
           $message = 'Data Updated';  
      }  
      else  
      {  
           $query = "  
           INSERT INTO generic(name, address, types0, rating, current_popularity)  
           VALUES('$name', '$address', '$types0', '$rating', '$current_popularity');  
           ";  
           $message = 'Data Inserted';  
      }  
      if(mysqli_query($connect, $query))  
      {  
           $output .= '<label class="text-success">' . $message . '</label>';  
           $select_query = "SELECT * FROM generic ORDER BY id DESC";  
           $result = mysqli_query($connect, $select_query);  
           $output .= '  
                <table class="table table-bordered">  
                     <tr>  
                          <th width="70%">Employee Name</th>  
                          <th width="15%">Edit</th>  
                          <th width="15%">View</th>  
                     </tr>  
           ';  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '  
                     <tr>  
                          <td>' . $row["name"] . '</td>  
                          <td><input type="button" name="edit" value="Edit" id="'.$row["id"] .'" class="btn btn-info btn-xs edit_data" /></td>  
                          <td><input type="button" name="view" value="view" id="' . $row["id"] . '" class="btn btn-info btn-xs view_data" /></td>  
                     </tr>  
                ';  
           }  
           $output .= '</table>';  
      }  
      echo $output;  
 }  
 ?>
 