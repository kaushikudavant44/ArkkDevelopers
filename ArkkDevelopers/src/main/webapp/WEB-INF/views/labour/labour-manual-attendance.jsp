<%@include file="../header.jsp" %>               
    <!-- Main content -->
    <section class="content index">
    <div class="1middle-bg">
			<div class="row">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manaul Attendance</h3></div>
				<div class="middle-bg">
					<form action="" method="">
  						<div class="row">
                                <div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Labour Id :</label>
							
							 <input type="text" class="form-control" name="id" id="id" >
							 
							                             
							</div>
							</div>
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							
							 <input type="submit" class="form-control" name="id" id="id">
						                      
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

	 
	 <section class="content index">
    
			<div class="1middle-bg" id="myModel">
			<div class="row">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>Manaul Attendance</h3></div>
				<div class="middle-bg">
					<form action="controller/LabourAttendance.jsp">
  						<div class="row">
         
																				
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Labour Name :</label>
							<input type="text" class="form-control" id="firstName" name="firstName" placeholder="First name" readonly>
							</div>
							</div>
														
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Branch :</label>
							<select class="form-control" id="site" name="site" onchange="getLabourBySite()">
                    <option>--select---</option>
                      <c:forEach items="${branchSiteDetailsList}" var = "branchSiteDetailsList">
                             <option  value ="${branchSiteDetailsList.type}">${branchSiteDetailsList.name}</option>
                             </c:forEach>
                      
                    </select>
							</div>
							</div>
							
							<div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">Device Id :</label>
							<input type="text" class="form-control" id="deviceid" name="deviceid" readonly>
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
							<input type="text" class="form-control" id="time" name="date" placeholder="Date" readonly>
							</div>
							</div>
							
							
							
							<div class="col-md-12 col-sm-12">
                            <div class="form-group">
								<input type="submit" value="Save" class="btn btn-primary new-btn">
	                        </div>
							</div> 
							
                       
                                        
										
							<script type="text/javascript">
							var currentdate = new Date(); 
							var datetime = ""+currentdate.getDate()+"-"
							                +(currentdate.getMonth()+1)+"-" 
							                + currentdate.getFullYear()+" " 
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