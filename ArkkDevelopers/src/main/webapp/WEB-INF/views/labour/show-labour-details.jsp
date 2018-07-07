<%@ include file="../new-header.jsp" %>

<c:url var="getLabourDetailsById" value="/getLabourDetailsById" />
<c:url var="showLabourDetailsBySite" value="/showLabourDetailsBySite" />
<c:url var="deleteLabourRecordById" value="/deleteLabourRecordById" />
<c:url var="editLabourRecordById" value="/editLabourRecordById" />

<section class="content index">
  <div class="1middle-bg">
    
    
    <div class="xrow">
      <div class="col-md-5">
      <div class="form-group">
        <div class="form-line">
        <input name="message" placeholder="Search Labour By Id" class="form-control" type="text" id="labourId"> </div>
        <span class="glyphicon glyphicon-search search-icon"></span> 
    </div>
    </div>
    	<div class="col-md-2">
    	<div class="form-group">
                        
        <input class="btn-style mar-top0" type="submit" onclick="getLabourDetailsById()">
       
        </div>
        </div>
    
  
    <div class="col-md-5">
                  <div class="form-group">
                        <div class="form-line">
                   
                    <select class="form-control" id="site" name="site" onchange="getLabourBySite()">
                    <option>--select---</option>
                      <c:forEach items="${branchSiteDetailsList}" var = "branchSiteDetailsList">
                             <option  value ="${branchSiteDetailsList.branchSiteId}">${branchSiteDetailsList.name}</option>
                             </c:forEach>
                      
                    </select>
                  </div>
                  </div>
                </div>

    </div>
      </div>
    <div class="xrow">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3> Show All Labours</h3>
          </div>
          <div class="middle-bg">
          <div class="table-responsive" id="labourTable">
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
                   <tr>
                <td>1</td>
                <td>${labourDetails.labourId}</td>
                <td>${labourDetails.name}</td>
                <td>${labourDetails.deviceId}</td>
                <td>${labourDetails.mobileNo}</td>
                <td>${labourDetails.gender}</td>
                <td>${labourDetails.address}</td>
                <td>${labourDetails.site}</td>
                <td>${labourDetails.salary}</td>
                <td><span onclick="deleteLabourRecord(${labourDetails.labourId})" class="glyphicon glyphicon-trash"></span></td>
                <td><span onclick="editLabourById(${labourDetails.labourId})" class="glyphicon glyphicon-edit"></span></td>
              </tr>                   
          	</tbody> 
                       
                       
            </table>
            </div>
            <div class="xbottom-btn">
             
              <input type="button" id="labour" class="btn-style mar-top0" value="Export">
              &nbsp;
              <!-- <input type="button" class="btn-style mar-top0" value="Send To Owner"> -->
            </div>
          </div>
        </div>
      </div>
    </div>

</section>

 <form action="${pageContext.request.contextPath}/saveLabourDetails" method="post">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

  	<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
         <div class="row">
               
                    <input type="hidden" class="form-control" name="labourId" id="editLabourId">
                    <input type="hidden" class="form-control" name="gender" id="editGender" placeholder="Enter name">
                    <input type="hidden" class="form-control" name="editLabourDetailsId" id="editLabourDetailsId" placeholder="Enter name">
                    <input type="hidden" class="form-control" name="deviceId" id="editDeviceId" placeholder="Enter name">
                  	<input type="hidden" class="form-control" name="site" id="editSite" placeholder="Enter name">
                  	
                <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Name :</label>
                    <input type="text" class="form-control" name="labourName" id="editName" placeholder="Enter name">
                  </div>
                  </div>
                  
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Mobile Number :</label>
                    <input type="text" class="form-control" name="mobileNumber" id="editMobileNumber" placeholder="Enter Mobile Number">
                  </div>
                  </div>
                 
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">salary :</label>
                    <input type="text" class="form-control" name="salary" id="editSalary" placeholder="Enter Salary">
                  </div>
                  </div>
                  
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Address :</label>
                    <input type="text" class="form-control" name="address" id="editAddress" placeholder="Enter Address">
                  </div>
                  </div>
                  
                  <div class="col-md-6 col-sm-6">
                  <div class="form-group">
                  <input type="submit" class="form-control">
                  </div>
                  </div>
                </div>   
      </div>
      </div>
      
    </div>
   
  </div>
 </form>
<%@ include file="../footer.jsp" %>

<script>
function getLabourDetailsById(){
		var labourId=document.getElementById("labourId").value;
		
		$('#labourDetailTableId td').remove();
	   $.getJSON('${getLabourDetailsById}',
				{
		 			 
					labourId : labourId,

					ajax : 'true',
				},function(data) {
								alert(data.labourId);
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
								 tr.append($('<td></td>').html('<span onclick="deleteLabourRecord('+data.labourId+')" class="glyphicon glyphicon-trash"></span>'));
								 tr.append($('<td></td>').html('<span onclick="editLabourById('+data.labourId+')" class="glyphicon glyphicon-edit"></span>')); 
								
								 
								 $('#labourDetailTableId tbody').append(tr);
				});	

}



function getLabourBySite() {
	 
	
	var siteId=document.getElementById("site").value; 
	alert(""+siteId);
	 $('#labourDetailTableId td').remove();
	$('#site option:eq(0)').prop('selected', 'selected');	
		  
	 $.getJSON('${showLabourDetailsBySite}',
															{
																siteId : siteId,
																
																ajax : 'true'
															},
															function(data) {
																
																
																 $.each(
																		 data,
																			function(key, data) {

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
																			 tr.append($('<td></td>').html('<span onclick="deleteLabourRecord('+data.labourId+')" class="glyphicon glyphicon-trash"></span>'));
																			 tr.append($('<td></td>').html('<span onclick="editLabourById('+data.labourId+')" class="glyphicon glyphicon-edit"></span>'));
																			 		
																
																 $('#labourDetailTableId tbody').append(tr);
																		})


															})
	 
	 
			}


function deleteLabourRecord(labourId) {
		
	$('#labourDetailTableId td').remove();
	 $.getJSON('${deleteLabourRecordById}',
															{
		 					labourId : labourId,
																
							ajax : 'true'
															})
			}	
			
			

function editLabourById(labourId) {
		 
		$.getJSON('${editLabourRecordById}',
				{
			
			labourId : labourId,
					
			ajax : 'true'

				},function(data) {
					document.getElementById("editLabourId").value=data.labourId;
					document.getElementById("editLabourDetailsId").value=data.labourId;
					document.getElementById("editName").value=data.name;
					document.getElementById("editMobileNumber").value=data.mobileNo;
					document.getElementById("editSalary").value=data.salary;
					document.getElementById("editAddress").value=data.address;
					document.getElementById("editDeviceId").value=data.deviceId;
					document.getElementById("editSite").value=data.site;
					document.getElementById("editGender").value=data.gender;
				})
		
		$('#myModal').modal('show');
	 
	}				

</script>

<script type="text/javascript">
	$(function(){
	
    $('#labour').click(function(){
   
    	var url='data:application/vnd.ms-excel,' + encodeURIComponent($('#labourTable').html()) 
        location.href=url
        return false
    })
})
</script>