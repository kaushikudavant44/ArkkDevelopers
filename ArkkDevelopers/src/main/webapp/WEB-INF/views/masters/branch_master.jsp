  <%@ include file="../new-header.jsp" %>
  
  <c:url var="deleteBranchById" value="/deleteBranchById"/>
<!-- Main content -->
<section class="content index">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3>Add Branch</h3>
          </div>
          <div class="middle-bg">
            <form name="myForm" action="${pageContext.request.contextPath}/insertBranchSite"   method="post">
              <div class="row">
               <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Select Type :</label>
                    <select class="form-control" id="type" name="type" placeholder="Type Branch name..." required>
                    <option value="1">Branch</option>
                    <option value="2">Site</option>
                    
                    
                    </select>
                  </div>
                  </div>
                </div>
                
                <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Branch/Site Name :</label>
                    <input type="text"  class="form-control" id="name" name="name" placeholder="Type Branch name..." required>
                  </div>
                  </div>
                </div>
                
                <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Device Id :</label>
                    <input type="text"  class="form-control" id="deviceId" name="deviceId" placeholder="Device Id..." required>
                  </div>
                  </div>
                </div>
                 
                 
                <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Registration Date :</label>
                    <input type="text" class="form-control datepicker1" id="date" name='date' placeholder="Contact No" required>
                  </div>
                  </div>
                </div>
                
                 
                <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Contact No :</label>
                    <input type="text" class="form-control" id="mobile_no" name="mobile_no" placeholder="Contact No" required>
                  </div>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6">
                   <div class="form-group">
        <div class="form-line">
                    <label for="exampleInputEmail1">Address</label>
                    <textarea class="form-control" placeholder="Address " name="address" id="address" rows="1" required> </textarea>
                  </div>
                  </div>
                </div>
                <hr>
                <div class="col-md-12 col-sm-12">
                  <input type="submit" value="Save" class="btn-style">
                 <!--  <input type="button" value="Clear" class="btn-style"> -->
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3> Added Branch List</h3>
          </div>
          <div class="middle-bg">
            <div class="table-responsive">
              <table id="example2" class="table table-bordered table-hover tbl">
                <thead>
                  <tr>
                    <th>Branch/Site Name</th>
                
                    <th>Type</th>
                        <th>Device Id</th>
                    <th>Date</th>
                    <th>Edit</th>
                  </tr>
                </thead>
                <tbody>
                 <c:forEach items="${branchSiteDetailsList}" var = "branchSiteDetailsList">
                  <tr>
                  
                    <td>${branchSiteDetailsList.name}</td>
                    
                     <c:choose>
         
         <c:when test = "${branchSiteDetailsList.type == 1}">
            <td>Branch</td>
         </c:when>
                    <c:when test = "${branchSiteDetailsList.type == 2}">
            <td>Site</td>
         </c:when>
                   
                   </c:choose>
                    
                     <td>${branchSiteDetailsList.deviceId}</td>
                    <td>${branchSiteDetailsList.date}</td>
                    <td align="center"><a href="#" data-toggle="modal" data-target="#squarespaceModal"><span class="glyphicon glyphicon-trash" onclick="deleteBranchById(${branchSiteDetailsList.branchSiteId})"></span></a></td>
                  </tr>
                 </c:forEach>
                   
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

  <%@ include file="../footer.jsp" %>
  
  <script>
function deleteBranchById(branchSiteId){

	alert("vfdvd");
	 $.getJSON('${deleteBranchById}',
				{
		 branchSiteId : branchSiteId,
					
		ajax : 'true'
				});
}
</script>