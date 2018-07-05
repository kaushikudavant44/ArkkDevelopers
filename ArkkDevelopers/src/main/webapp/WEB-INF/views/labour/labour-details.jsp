<%@ include file="../new-header.jsp" %>
<section class="content index">
  <div class="1middle-bg">
    <div class="xrow">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3>Add Labour</h3>
          </div>
          <div class="middle-bg">
            <form name="myForm" action="${pageContext.request.contextPath}/saveLabourDetails" method="post">
              <div class="row">
                <div class="col-md-12 col-sm-12">
                </div>
                
                <div class="col-md-4 col-sm-4">  
                 <div class="form-group">
                  <div class="form-line">
                  
                    <label for="exampleInputEmail1">Labour Id :</label>
                    <input type="number" class="form-control" name="labourId" id="labourId" placeholder="Labour Id" onkeypress='return IsNumeric(event)'>
                  </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Name :</label>
                    <input type="text" class="form-control" id="name" name="labourName" placeholder="Full name" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)">
                  </div>
                  </div>
                </div>              
               <div class="col-md-4 col-sm-4">
                 <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Mobile Number :</label>
                    <input type="text" class="form-control" name="mobileNumber" id="labourId" placeholder="Mobile Number" onkeypress='return IsNumeric(event)'>
                  </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                 <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Gender :</label>
                    <select class="form-control" id="gender" name="gender">
                      <option>Male</option>
                      <option>Female</option>
                    </select>
                  </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                 <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Site :</label>
                     <select class="form-control" id="site" name="site" onchange="getDeviceIdBySite()">
                     <option>---select---</option>
                      <c:forEach items="${branchSiteDetailsList}" var = "branchSiteDetailsList">
                             <option value ="${branchSiteDetailsList.deviceId}">${branchSiteDetailsList.name}</option>
                             </c:forEach>
                      
                    </select>
                  </div>
                  </div>
                
                </div>
                 <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Device Id :</label>
                     <input type="text" class="form-control"  id="deviceId" name="deviceId" placeholder="Device Id" readonly onkeypress='return IsNumeric(event)'>
                  </div>
                  </div>
                </div>
                  <script>
                  function getDeviceIdBySite(){
                	  var site=document.getElementById("site").value;
                	  
                	  document.getElementById("deviceId").value=site;
                	  	  
                  } 
                  </script>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Salary :</label>
                    <input type="text" class="form-control" id="salary" name="salary" placeholder="Salary" onkeypress='return IsNumeric(event)'>
                  </div>
                  </div>
                </div>
                <div class="col-md-4 col-sm-4">
                  <div class="form-group">
                  <div class="form-line">
                    <label for="exampleInputEmail1">Address</label>
                    <textarea class="form-control" placeholder="Address" id="address" name="address" rows="1"></textarea>
                  </div>
                  </div>
                </div>
                
                
                <div class="col-md-12 col-sm-12">
                  <div class="form-group">
                    <input type="submit" value="Save" class="btn-style mar-top0">
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

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1 || keyCode==9);
            //document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
       
    </script>

<!-- <script type="text/javascript">
function getDeviceIdByBranch(){
	
	
	var siteId=document.getElementById("site").value;
	$.getJSON(
			'${getDeviceIdByBranch}',
			{
				siteId : siteId,
				
				ajax : 'true'
			},
			function(data) {
				document.getElementById("deviceId").value=data.deviceId;
				


			})
	
}


</script> -->


<%@ include file="../footer.jsp" %>