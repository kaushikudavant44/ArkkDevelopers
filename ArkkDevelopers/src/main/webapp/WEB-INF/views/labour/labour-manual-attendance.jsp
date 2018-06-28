<%@include file="../header.jsp" %>     
<c:url var="getLabourDetailsById" value="/getLabourDetailsById" />          
    <!-- Main content -->
    <section class="content index">
    <div class="1middle-bg">
			<div class="row">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manaul Attendance</h3></div>
				<div class="middle-bg">
					
  						<div class="row">
                                <div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Labour Id :</label>
							
							 <input type="text" class="form-control" name="labourId" id="labourId" >
							 
							                             
							</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							
							 <input type="submit" class="form-control" name="id" id="id" onclick="getLabourDetailsById()">
						                      
							</div>
							</div>

						</div>
					
					</div>
				</div>
			</div>
				
			</div>
	</div>
		
		
	</section>

	 <script>
	 function getLabourDetailsById(){
		 var labourId=document.getElementById("labourId").value;
		 
		 $.getJSON('${getLabourDetailsById}',
					{
				
				labourId : labourId,
						
				ajax : 'true'

					},function(data) {
						alert(data.labourId);
						document.getElementById("editLabourId").value=data.labourId;
						document.getElementById("editName").value=data.name;
					
					})
	 }
	 
	 </script>
	 <section class="content index">
    
			<div class="1middle-bg" id="myModel"> 
			<div class="row">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manaul Attendance</h3></div>
				<div class="middle-bg">
					<form action="${pageContext.request.contextPath}/saveEmployeeManualAttendance" method="post">
  						<div class="row">
         
         
         					<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Labour Id :</label>
							<input type="text" class="form-control" id="editLabourId" name="userID" placeholder="Labour Id">
							</div>
							</div>
																				
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Labour Name :</label>
							<input type="text" class="form-control" id="editName" name="name" placeholder="Name">
							</div>
							</div>
														
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Site :</label>
							<select class="form-control" id="editSite" name="deviceId" onchange="getLabourBySite()">
                    <option>--select---</option>
                      <c:forEach items="${branchSiteDetailsList}" var = "branchSiteDetailsList">
                             <option  value ="${branchSiteDetailsList.type}">${branchSiteDetailsList.name}</option>
                             </c:forEach>
                      
                    </select>
							</div>
							</div>
							
							
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">direction :</label>
							<select class="form-control" id="direction" name="direction">
                              <option value="in">in</option>
                              <option value="out">out</option>
                            </select>
							</div>
							</div>
                            
                            
							
                            <div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Date And Time</label>
							<input type="text" class="form-control datepicker3" id="time" name="date" placeholder="Date">
							</div>
							</div>
							
							
							
							<div class="col-md-12 col-sm-12">
                            <div class="form-group">
								<input type="submit" value="Save" class="btn btn-primary new-btn">
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
							               
							document.getElementById("time").value=datetime;
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