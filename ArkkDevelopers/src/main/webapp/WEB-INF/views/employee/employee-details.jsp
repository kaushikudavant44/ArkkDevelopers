<%@ include file="../header.jsp" %>
<section class="content index">
  <div class="1middle-bg">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3>Add Employee</h3>
          </div>
          <div class="middle-bg">
            <form name="myForm" action="${pageContext.request.contextPath}/saveEmployeeDetails" method="post" enctype="multipart/form-data">
              <div class="row">
                <div class="col-md-12 col-sm-12">
                </div>
                
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Employee Id :</label>
                    <input type="text" class="form-control" name="empId" id="empId" placeholder="employee id">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Name :</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="First name">
                  </div>
                </div>              
               
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Gender :</label>
                    <select class="form-control" id="gender" name="gender">
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">DOB :</label>
                    <input type="text" class="form-control datepicker1" id="dob" name="dob" placeholder="dob">
                    
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Mobile No :</label>
                    <input type="text" class="form-control" id="mobileNo" name="mobileNo" placeholder="mobileNo">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email :</label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="email">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Branch :</label>
                    <select class="form-control" id="branch" name="branch">
                      <option>-- please Select --</option>
                      <option>aark</option>
                    </select>
                  </div>
                </div>
                 <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Device Id :</label>
                    <input type="text" class="form-control" id="deviceId" name="deviceId" placeholder="device id">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Designation :</label>
                    <input type="text" class="form-control" id="designation" name="designation" placeholder="designation">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Salary :</label>
                    <input type="text" class="form-control" id="salary" name="salary" placeholder="Salary">
                  </div>
                </div>
                
               <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Photo :</label>
                    <input type="file" class="form-control" id="photo" name="photo" placeholder="photo" accept="image/*">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Document :</label>
                    <input type="file" class="form-control" id="document" name="document" placeholder="Document" accept="image/*">
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Address</label>
                    <textarea class="form-control" placeholder="Address " id="address" name="address" rows="3" col="3"></textarea>
                  </div>
                </div>
                
                <div class="col-md-12 col-sm-12">
                  <div class="form-group">
                    <input type="submit" value="Save" class="btn btn-primary new-btn">
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>




<%@ include file="../footer.jsp" %>