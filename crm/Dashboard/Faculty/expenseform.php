<!-- <?PHP
//   include"header.php";
//   include"left.php";
?> -->



<div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <div class="header-icon">
                  <i class="fa fa-users"></i>
               </div>
               <div class="header-title">
                  <h1>Expense</h1>
                  <small>Add Expense</small>
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
                              <i class="fa fa-list"></i>  Expense </a>  
                           </div>
                        </div>
                        <div class="panel-body">
                           <form class="col-sm-6" action="eregister.php" method="POST">
                              <div class="form-group">
                                 <label>Travel</label>
                                 <input type="text" class="form-control" placeholder="Enter Your Travel Distance in KM" name="travel"
                                 id="travel" required>
                              </div>
                              <div class="form-group">
                                 <label>Food and Other</label>
                                 <input type="text" class="form-control" placeholder="Enter Title" name="title"
                                 id="title" required>
                                 <input type="text" class="form-control" placeholder="Enter Amount" name="amount"
                                 id="amount" required>
                              </div>
                               <div class="form-group">
                                 <label>Upload Photo</label>
                                 <input type="file" class="form-control" name="fileupload"
                                 id="fileupload" required>
                              </div>
                              <div class="reset-button">
                               <input type="submit" name="save" id="save" value="Save" class="btn btn-success">
                                 <a href="add-expense.php" class="btn btn-warning">Reset</a>
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

