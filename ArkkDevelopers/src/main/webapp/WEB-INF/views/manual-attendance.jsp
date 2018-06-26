<%@include file="header.jsp" %>               
    <!-- Main content -->
    <section class="content index">
    <div class="1middle-bg">
			<div class="row">
				<div class="col-md-12 col-sm-12">
				<div class="add-blk">
				<div class="panel-heading blue"><h3>ManaulAttendance</h3></div>
				<div class="middle-bg">
					
  						<div class="row">
                                <div class="col-md-4 col-sm-4">
								<div class="form-group">
							<label for="exampleInputEmail1">EmployeeId :</label>
							
							 <input type="text" class="form-control"  name="stu_id" onclick="this.select()" onKeyDown="if(event.keyCode==13)"  id="stu_id">
							                             
							</div>
							</div>
	
	<script type="text/javascript">

    document.getElementById('stu_id').onkeydown = function(event) {
	var id=document.getElementById('stu_id').value;
    if (event.keyCode == 13) {
       
        window.open("ManualLabour.jsp?id="+id,"_self");
    }
}


</script> 

						</div>
					</div>
				</div>
			</div>
				
			</div>
			</div>
		
		
	</section>

<%@ include file="footer.jsp" %>