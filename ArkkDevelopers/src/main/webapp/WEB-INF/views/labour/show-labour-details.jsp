<%@ include file="../header.jsp" %>

<c:url var="getLabourDetailsById" value="/getLabourDetailsById" />
<section class="content index">
  <div class="1middle-bg">
    
    
    <div class="row">
      <div class="col-md-5">
        <input name="message" placeholder="Search employee By Id" class="form-control input-lg" type="text" id="labourId"> </div>
    
    	<div class="col-md-2">
        <input class="form-control" type="submit" onclick="getLabourDetailsById()">
        </div>
    
  
    <div class="col-md-5">
                  <div class="form-group">
                   
                    <select class="form-control" id="site" name="site">
                      <option>Male</option>
                      
                    </select>
                  </div>
                </div>
   
    </div>
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading new-bg">
            <h3> Show All Employees</h3>
          </div>
          <div class="middle-bg">
          <div class="table-responsive" >
            <table id="labourDetailTableId" class="table table-bordered table-hover tbl">
               <thead>
               <tr>
                <th>Sr. No</th>
                <th>Labour Id</th>
                <th>Name</th>
                <th>Device Id</th>
                <th>Mobile No</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Site</th>
                <th>Salary</th> 
                <th>Delete</th>
                <th>Edit</th>
                                        
               </tr>
               </thead>
           <tbody >
                                       
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
function getLabourDetailsById(){
		var labourId=document.getElementById("labourId").value;
		$('#labourDetailTableId td').remove();
	   $.getJSON('${getLabourDetailsById}',
				{
		 			 
					labourId : labourId,

					ajax : 'true',
				},function(data) {
								
					 			 var tr = $('<tr id="labourDetailTable"></tr>');
								 tr.append($('<td></td>').html(data.labourDetailsId));
								 tr.append($('<td></td>').html(data.labourId));
								 tr.append($('<td></td>').html(data.name));
								 tr.append($('<td></td>').html(data.deviceId));
								 tr.append($('<td></td>').html(data.mobileNo));
								 tr.append($('<td></td>').html(data.gender)); 
								 tr.append($('<td></td>').html(data.address));
								 tr.append($('<td></td>').html(data.site));
								 tr.append($('<td></td>').html(data.salary)); 
								  
								
								 
								 $('#labourDetailTableId tbody').append(tr);
				});	

}

</script>



<%@ include file="../footer.jsp" %>