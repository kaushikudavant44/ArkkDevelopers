<%@ include file="../new-header.jsp" %>

<section class="content index">
<c:url var="showEmployeeDetailsByBranch" value="/showEmployeeDetailsByBranch" />
<c:url var="showEmployeeDetailsById" value="/showEmployeeDetailsById" />
<c:url var="deleteEmployeeDetailsById" value="/deleteEmployeeDetailsById" />

  <div class="1middle-bg">
    <div class="xrow">
      <div class="col-md-4">
      <div class="form-group">
                        <div class="form-line">
        <input placeholder="Enter Employee Id" class="form-control" type="text" name="getEmpId" id="getEmpId">
        <span class="glyphicon glyphicon-search search-icon"></span> 
        </div>
        </div> 
        </div>
        <div class="col-md-2">
        <input class="btn-style mar-top0" type="submit" onclick="getEmployeeById()">
        </div>
        <div class="col-md-1 text-center"><span class="">OR<span></span></span></div>
        <div class="col-md-5">
       <div class="form-group">
                        <div class="form-line">
           <select class="form-control" id="getBranch" name="getBranch" onchange="getEmployeeByBranch()">
           <option>--select branch--</option>
							 <c:forEach items="${branchSiteDetails}" var = "branchSiteDetails">
                             <option  value ="${branchSiteDetails.branchSiteId}">${branchSiteDetails.name }</option>
                             </c:forEach>
                             </select>
              </div>
              </div>               
       </div>
    </div>
    </div>
   
    <div class="xrow">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk" id="employeeTable">
          <div class="panel-heading blue">
            <h3> Show All Employees</h3>
          </div>
          <div class="middle-bg">
          <div class="table-responsive">
            <table id="example2" class="table table-bordered table-hover tbl">
              <tr>
                <th>Sr. No</th>
                <th>Name</th>
                <th>Id</th>
                <th>Branch</th>
                <th>Mobile No</th>
                <th>Email</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Designation</th>
                <th>Salary</th>
                <th>Address</th>
                <th>Delete</th>
                <th>Edit</th>
              </tr>
             <tbody>
                <tr>
                <td>1</td>
                <td>${employeeDetails.name}</td>
                 <td>${employeeDetails.empId}</td>
                <td>${employeeDetails.branch}</td>
                <td>${employeeDetails.mobileNo}</td>
                <td>${employeeDetails.email}</td>
                <td>${employeeDetails.gender}</td>
                <td>${employeeDetails.dob}</td>
                <td>${employeeDetails.designation}</td>
                <td>${employeeDetails.salary}</td>
                <td>${employeeDetails.address}</td>
                <td><span onclick="deleteEmpById(${employeeDetails.empId})" class="glyphicon glyphicon-trash"></span></td>
                <td><span onclick="editEmpById(${employeeDetails.empId})" class="glyphicon glyphicon-edit"></span></td>
              </tr>
             
             </tbody>
                      
            </table>
            </div>
            <div class="xbottom-btn">
           
              <input type="button" id="employee" class="btn-style mar-top0" value="Export">
             
              <!-- <input type="button" class="btn-style mar-top0" value="Send To Owner"> -->
            </div>
          </div>
        </div>
      </div>
    </div>
 
</section>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
         <div class="row">
         <form action="updateEmployeeDetails" method="post">
               <input type="hidden" class="form-control" name="empId" id="editId">
               <input type="hidden" class="form-control" name="empDetailsId" id="editDetailsId">
               <input type="hidden" class="form-control" name="photo" id="editPhoto">
               <input type="hidden" class="form-control" name="document" id="editDocument">
               <input type="hidden" class="form-control" name="branch" id="editBranch">
                <input type="hidden" class="form-control" name="deviceId" id="editDeviceId">
                <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Employee Name :</label>
                    <input type="text" class="form-control" name="name" id="editName" placeholder="Name">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Gender :</label>
                    <input type="text" class="form-control" name="gender" id="editGender" placeholder="Gender">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">DOB :</label>
                    <input type="text" class="form-control" name="dob" id="editDOB" placeholder="dob">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Mobile No :</label>
                    <input type="text" class="form-control" name="mobileNo" id="editNo" placeholder="Mobile No">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Email :</label>
                    <input type="text" class="form-control" name="email" id="editEmail" placeholder="Email">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Designation :</label>
                    <input type="text" class="form-control" name="designation" id="editDesignation" placeholder="Designation">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Salary :</label>
                    <input type="text" class="form-control" name="salary" id="editSalary" placeholder="Salary">
                  </div>
                  </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Address :</label>
                    <textarea class="form-control" placeholder="Address " id="editAddress" name="address" rows="1" col="3"></textarea>
                  </div>
                  </div>
                  </div>
                   <div class="col-md-12 col-sm-12"><input type="submit" class="btn-style" value="save"></div>
                  
                </form>
                </div>
                
      </div>
      </div>
      
    </div>
  </div>


<%@ include file="../footer.jsp" %>
<script>

 function getEmployeeByBranch() {
											 
		 var branchId=document.getElementById("getBranch").value; 
		 $('#example2 td').remove();
		  
		 $.getJSON('${showEmployeeDetailsByBranch}',
																{
																	branchId : branchId,
																	
																	ajax : 'true'
																},
																function(data) {
																	
																	
																	 $.each(
																			 data,
																				function(key, data) {

																	var tr = $('<tr></tr>');
																	

																	tr.append($('<td></td>').html(key+1));
																	
																	tr.append($('<td></td>').html(data.name));
																	tr.append($('<td></td>').html(data.empId));
																	tr.append($('<td></td>').html(data.branch));
																	tr.append($('<td></td>').html(data.mobileNo));
																	tr.append($('<td></td>').html(data.email));
																	tr.append($('<td></td>').html(data.gender));
																	tr.append($('<td></td>').html(data.dob));
																	tr.append($('<td></td>').html(data.designation));
																	tr.append($('<td></td>').html(data.salary));
																	tr.append($('<td></td>').html(data.address));
																	tr.append($('<td></td>').html('<span onclick="deleteEmpById('+data.empId+')" class="glyphicon glyphicon-trash"></span>'));
																	tr.append($('<td></td>').html('<span onclick="editEmpById('+data.empId+')" class="glyphicon glyphicon-edit"></span>'));
																	
																	
																 	 $('#example2').append(tr);
																			})


																})
		 
		 
	 }
	</script>
<script>

 function getEmployeeById() {
		alert("hi");
		 var empId=document.getElementById("getEmpId").value; 
		 $('#example2 td').remove();
		 $('#getBranch option:eq(0)').prop('selected', 'selected');
		  
		 $
														.getJSON(
																'${showEmployeeDetailsById}',
																{
																	empId : empId,
																	
																	ajax : 'true'
																},
																function(data) {
																	
																	var tr = $('<tr></tr>');
																	

																	tr.append($('<td></td>').html(1));
																	
																	tr.append($('<td></td>').html(data.name));
																	tr.append($('<td></td>').html(data.empId));
																	tr.append($('<td></td>').html(data.branch));
																	tr.append($('<td></td>').html(data.mobileNo));
																	tr.append($('<td></td>').html(data.email));
																	tr.append($('<td></td>').html(data.gender));
																	tr.append($('<td></td>').html(data.dob));
																	tr.append($('<td></td>').html(data.designation));
																	tr.append($('<td></td>').html(data.salary));
																	tr.append($('<td></td>').html(data.address));
																	tr.append($('<td></td>').html('<span onclick="deleteEmpById('+data.empId+')" class="glyphicon glyphicon-trash"></span>'));
																	tr.append($('<td></td>').html('<span onclick="editEmpById('+data.empId+')" class="glyphicon glyphicon-edit"></span>'));
																	
																	
																 	 $('#example2').append(tr);
																			


																})
		 
		 
	 }

 function deleteEmpById(empId) {
								 
		  alert(empId);
		 $
														.getJSON(
																'${deleteEmployeeDetailsById}',
																{
																	empId : empId,
																	
																	ajax : 'true'
																},
																function(data) {
																	alert(data.message)
																	location.reload();
																	


																})
		 
		 
	 }
 
 function editEmpById(empId) {
	 
	 $.getJSON(
				'${showEmployeeDetailsById}',
				{
					empId : empId,
					
					ajax : 'true'
				},
				function(data) {
					document.getElementById("editName").value=data.name;
					document.getElementById("editGender").value=data.gender;
					document.getElementById("editEmail").value=data.email;
					document.getElementById("editNo").value=data.mobileNo;
					document.getElementById("editDOB").value=data.dob;
					document.getElementById("editAddress").value=data.address;
					document.getElementById("editSalary").value=data.salary;
					document.getElementById("editDesignation").value=data.designation;
					document.getElementById("editId").value=data.empId;
					document.getElementById("editDetailsId").value=data.empDetailsId;
					document.getElementById("editPhoto").value=data.photo;
					document.getElementById("editDocument").value=data.document;
					document.getElementById("editBranch").value=data.branch;
					document.getElementById("editDeviceId").value=data.deviceId;


				})
	 $('#myModal').modal('show');
	 
	 
}
	</script>
<script type="text/javascript">
	$(function(){
	
    $('#employee').click(function(){
   
    	var url='data:application/vnd.ms-excel,' + encodeURIComponent($('#employeeTable').html()) 
        location.href=url
        return false
    })
})
</script>
