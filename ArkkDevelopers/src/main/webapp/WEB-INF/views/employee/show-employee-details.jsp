<%@ include file="../header.jsp" %>
<section class="content index">
<c:url var="showEmployeeDetailsByBranch" value="/showEmployeeDetailsByBranch" />
<c:url var="showEmployeeDetailsById" value="/showEmployeeDetailsById" />
<c:url var="deleteEmployeeDetailsById" value="/deleteEmployeeDetailsById" />
  <div class="1middle-bg">
    <div class="row">
      <div class="col-md-5">
        <input placeholder="Search employee ..." class="form-control input-lg" type="text" name="empId" id="empId">
        <span class="glyphicon glyphicon-search search-icon"></span> </div>
        
        <div class="col-md-2">
        <input class="form-control" type="submit" onclick="getEmployeeById()">
        </div>
        <div class="col-md-5">
       
           <select class="form-control input-lg" id="branch" name="branch" onchange="getEmployeeByBranch()">
           <option>--select--</option>
							 <c:forEach items="${branchSiteDetails}" var = "branchSiteDetails">
                             <option  value ="${branchSiteDetails.type}">${branchSiteDetails.name }</option>
                             </c:forEach>
                             </select>
                             
       </div>
    </div>
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading new-bg">
            <h3> Show All Employees</h3>
          </div>
          <div class="middle-bg">
          <div class="table-responsive">
            <table id="example2" class="table table-bordered table-hover tbl">
              <tr>
                <th>Sr. No</th>
                <th>Name</th>
                <th>Branch</th>
                <th>Mobile No</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Salary</th>
                <th>Address</th>
                <th>Delete</th>
                <th>Edit</th>
              </tr>
             <tbody>
             
             
             </tbody>
                      
            </table>
            </div>
            <div class="bottom-btn">
              <input type="button" class="btn btn-primary" value="Add">
              &nbsp;
              <input type="button" class="btn btn-primary" value="Export">
              &nbsp;
              <input type="button" class="btn btn-primary" value="Send To Owner">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>

 function getEmployeeByBranch() {
											 
		 var branchId=document.getElementById("branch").value; 
		
		  
		 $
														.getJSON(
																'${showEmployeeDetailsByBranch}',
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
																	tr.append($('<td></td>').html(data.branch));
																	tr.append($('<td></td>').html(data.mobileNo));
																	tr.append($('<td></td>').html(data.email));
																	tr.append($('<td></td>').html(data.gender));
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
											 
		 var empId=document.getElementById("empId").value; 
		
		  
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
																	tr.append($('<td></td>').html(data.branch));
																	tr.append($('<td></td>').html(data.mobileNo));
																	tr.append($('<td></td>').html(data.email));
																	tr.append($('<td></td>').html(data.gender));
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
	</script>



<%@ include file="../footer.jsp" %>