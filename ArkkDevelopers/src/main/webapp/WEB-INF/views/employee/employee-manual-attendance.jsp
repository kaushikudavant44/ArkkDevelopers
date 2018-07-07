
<%@include file="../new-header.jsp" %>               
    <!-- Main content -->
    <section class="content index">
    <div class="1middle-bg">
			<div class="xrow">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manual Attendance</h3></div>
				<div class="middle-bg">
					<form action="${pageContext.request.contextPath}/manualAttendanceById" method="GET">
  						<div class="row">
                                <div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">Employee Id :</label>
							
							 <input type="text" class="form-control" name="empId" id="empId" >
							 
							                             
							</div>
							</div>
							</div> 
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							
							<label for="exampleInputEmail1"></label>
							 <input type="submit" class="btn-style">
							 
							                             
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
	<script>
	function openEmployeeLabourDetails(){
		$('#myModal').modal('show');
		
		
	}
	</script>
	 
	 <section class="content index">
    
			<div class="1middle-bg" id="myModel">
			<div class="xrow">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manual Attendance</h3></div>
				<div class="middle-bg">
					<form action="${pageContext.request.contextPath}/saveEmployeeManualAttendance" method="POST">
  						<div class="row">
         
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">Employee Id :</label>
							
							 <input type="text" class="form-control"  name="userID"   id="userID" value="${employeeDetails.empId}">
							 
     	    				</div>
     	    				</div>
							</div> 
																				
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">Labour Name :</label>
							<input type="text" class="form-control" id="firstName" name="firstName" value="${employeeDetails.name}" readonly>
							</div>
							</div>
							</div>
							
							
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">Branch :</label>
							 <select class="form-control" id="deviceId" name="deviceId" >
                               <option>--select--</option>
							 <c:forEach items="${branchSiteDetails}" var = "branchSiteDetails">
                             <option  value ="${branchSiteDetails.deviceId}">${branchSiteDetails.name }</option>
                             </c:forEach>
                             </select>
							</div>
							</div>
							</div>
							
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">direction :</label>
							<select class="form-control" id="direction" name="direction">
                              <option value="in">in</option>
                              <option value="out">out</option>
                            </select>
							</div>
							</div>
                            </div>
                            
							
                            <div class="col-md-4 col-sm-4">
								<div class="form-group">
								<div class="form-line">
							<label for="exampleInputEmail1">Date And Time</label>
							<input type="text" class="form-control" id="date" name="date" placeholder="Date" readonly>
							</div>
							</div>
							</div>
							
							
							
							<div class="col-md-12 col-sm-12">
                            <div class="form-group">
								<input type="submit" value="Save" class="btn-style mar-top0">
	                        </div>
							</div> 
							
                       
                                        
										
							<script type="text/javascript">
							var currentdate = new Date(); 
							var datetime = ""+currentdate.getFullYear()+"-"
							                +(currentdate.getMonth()+1)+"-" 
							                + currentdate.getDate()+" " 
							                + currentdate.getHours()+":"  
							                + currentdate.getMinutes()+":" 
							                + currentdate.getSeconds();
							               
							document.getElementById("date").value=datetime;
							</script>
						</div>
					</form>
							
				</div>
			</div>
		</div>
	</div>
</div>
		
</section>
	
<%@ include file="../footer.jsp" %>