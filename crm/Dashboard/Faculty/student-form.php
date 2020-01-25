<!-- <?php
//   include '../../Dashboard/Head_of_the_department/header.php';
//   include '../../Dashboard/Head_of_the_department/left.php';
?> -->

<div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <div class="header-icon">
                  <i class="fa fa-users"></i>
               </div>
               <div class="header-title">
                  <h1>Add Student</h1>
                  <small>Student list</small>
               </div>
            </section>
            <!-- Main content -->
            <section class="content">
               <div class="row">
                  <!-- Form controls -->
                  <div class="col-sm-12">
                     <div class="panel panel-bd lobidrag">
                        <div class="panel-heading">
                           <div class="btn-group" id="buttonlist"> 
                              <a class="btn btn-add " href="clist.html"> 
                              <i class="fa fa-list"></i>  Student List </a>  
                           </div>
                        </div>
                        <div class="panel-body">
                           <form class="col-sm-6" action="fregister.php" method="POST">
                              <div class="form-group">
                                 <label>Type</label>
                                 <input type="text" class="form-control" placeholder="Enter Type" name="type"
                                 id="type" required>
                              </div>
                              <div class="form-group">
                                 <label>Student Id</label>
                                 <input type="text" class="form-control" placeholder="Enter Student ID" name="stuid"
                                 id="stuid" required>
                              </div>
                              <div class="form-group">
                                 <label>First Name</label>
                                 <input type="text" class="form-control" name="fname" id="fname" placeholder="Enter First Name" required>
                              </div>
                              <div class="form-group">
                                 <label>Last Name</label>
                                 <input type="text" class="form-control" name="lname" id="lname" placeholder="Enter last Name" required>
                              </div><div class="form-group">
                                 <label>Gender</label><br>
                                 <input type="radio" name="gender" value="male" checked="checked" type="radio">&nbspMale &nbsp&nbsp&nbsp
                                 <input type="radio" name="gender" value="female" type="radio">&nbspfemale&nbsp&nbsp
                                 <input type="radio" name="gender" value="other" type="radio">&nbspOther<br>
                              </div>
                              <div class="form-group">
                                 <label>Contact</label>
                                 <input type="text" class="form-control" name="contact" id="contact" placeholder="Enter Mobile" required>
                              </div>
                              <div class="form-group">
                                 <label>Cast</label>
                                 <input type="text" class="form-control" name="cast" id="cast" placeholder="Enter Cast" required>
                              </div>
                              <div class="form-group">
                                 <label>Income</label>
                                 <input type="text" class="form-control" name="income" id="income" placeholder="Enter Income" required>
                              </div>
                              <div class="form-group">
                                 <label>Date</label>
                                 <input type="date" class="form-control" name="date" id="date" required>
                              </div>
                               <div class="form-group">
                                 <label>City</label>
                                 <input type="text" class="form-control" name="city" id="city" placeholder="Enter City" required>
                              </div>
                              <div class="form-group">
                                 <label>Year</label>
                                 <input type="text" class="form-control" name="year" id="year" placeholder="Enter year" required>
                              </div>
                              <div class="form-group">
                                 <label>Result</label>
                                 <input type="text" class="form-control" name="result" id="result" placeholder="Enter Result" required>
                              </div>
                              <div class="form-group">
                                 <label>Group</label>
                                 <input type="text" class="form-control" name="group" id="group" placeholder="Enter Group" required>
                              </div>
                              <div class="form-group">
                                 <label>Employee Id</label>
                                 <input type="text" class="form-control" name="empid" id="empid" placeholder="Enter Employee Id" required>
                              </div>
                              <div class="form-group">
                                 <label>School/College</label>
                                 <input type="text" class="form-control" name="school/college" id="school/college" placeholder="Enter School/College" required>
                              </div>
                              <div class="form-group">
                                 <label>Admission Type</label>
                                 <input type="text" class="form-control" name="admissiontype" id="admissiontype" placeholder="Enter Admission Type" required>
                              </div>   
                              <div class="reset-button">
                               <input type="submit" name="save" id="save" value="Save" class="btn btn-success">
                                 <a href="add-student.php" class="btn btn-warning">Reset</a>
                                <!--  <a href="register.php" class="btn btn-success">Save</a> -->

                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
            <!-- /.content -->
         </div>

