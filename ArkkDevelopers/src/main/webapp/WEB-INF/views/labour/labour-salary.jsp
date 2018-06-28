<%@ include file="../header.jsp" %>
<!-- Main content -->
<section class="content index">
  <div class="1middle-bg">
    <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <!-- <div class="panel-heading blue">
            <h3>Report</h3>
          </div> -->
          <form action="${pageContext.request.contextPath}/getLabourSalary" >
          <div class="middle-bg">
            
              <div class="row">
                <div class="col-md-2 col-sm-2">
                  <div class="form-group">
                   <div class="form-line">
                    <label for="exampleInputEmail1">Report Type :</label>
                    <select id="country" name="report" class="form-control">
                    
                    
                      <option value="B" id="text">Sitewise Report</option>
                      <option value="I">Indivisual Report </option>
                    </select>
                    </div>
                  </div>
                </div>
            <div class="col-md-2 col-sm-2">
                  <div class="form-group">
                  <div class="form-line"> 
                   <label id="otherName">Enter Your Id
                  <input  type="text" class="form-control" id="labourId" placeholder="ID" name="labourId"/> 
                  </label>
                  
                    <label id="otherbranch">Choose Firm </label>
                    <select class="form-control" id="siteId" name="siteId" >
           <option>--select--</option>
							 <c:forEach items="${branchSiteDetails}" var = "branchSiteDetails">
                             <option  value ="${branchSiteDetails.type}">${branchSiteDetails.name }</option>
                             </c:forEach>
                             </select>
                            
                  </div>
                  </div>
                </div>
                            
                    
                      <div class="col-md-3 col-sm-3">
                        <div class="form-group">
                        <div class="form-line">
                          <label for="exampleInputEmail1">Start date :</label>
                          <input type="text" class="form-control datepicker1" name="from" id="from" placeholder="From Date">
                        </div>
                        </div>
                      </div>
                      <div class="col-md-3 col-sm-3">
                        <div class="form-group">
                        <div class="form-line"> 
                          <label for="exampleInputEmail1">End date :</label>
                          <input type="text" class="form-control datepicker2" name="to" id="to" placeholder="To Date">
                        </div>
                        </div>
                      </div>
                      
                      <div class="col-md-2 col-sm-2">
                      	<input type="submit" value="get" class="btn-style">
                      </div>
                    
                  </div>
              
               
               
              </div>
             
                </form>
           </div>
         
        </div>
      </div>
      
      <div class="row">
      <div class="col-md-12 col-sm-12">
        <div class="add-blk">
          <div class="panel-heading blue">
            <h3> Labour Salary Report</h3>
          </div>
          <div class="middle-bg">
          <div class="table-responsive">
            <table id="example2" class="table table-bordered table-hover tbl">
              <tr>
                <th>Sr. No</th>
              
              
                <th>Date</th>
                <th>In Time</th>
                <th>Out Time</th>
                  <th>Total Hours</th>
                  <th>Salary/Day</th>
                
              </tr>
             <tbody>
              <c:forEach items="${getLabourSalaryDetails.labourSalaryDetailsList}" var = "getLabourSalaryDetails" varStatus="myIndex">
                <tr>
              
               
				<td>${myIndex.index+1}</td>
               
                <td>${getLabourSalaryDetails.date}</td>	
                <td>${getLabourSalaryDetails.inTime}</td>
             	<td>${getLabourSalaryDetails.outTime}</td>
                              <td>${getLabourSalaryDetails.workingHour}</td>
                              	 <td>${getLabourSalaryDetails.amount}</td>
                              
               
              </tr>
             </c:forEach>  
             
             <tr>
             <td colspan='5' align="right">Total
             </td>
              
              <td >
              ${getLabourSalaryDetails.salary }
             </td>
             </tr>
             </tbody>
                      
            </table>
            </div>
            <div class="xbottom-btn">
              <input type="button" class="btn-style mar-top0" value="Add">
              &nbsp;
              <input type="button" class="btn-style mar-top0" value="Export">
              &nbsp;
              <input type="button" class="btn-style mar-top0" value="Send To Owner">
            </div>
          </div>
        </div>
      </div>
    </div>
    
    </div></section>
<%@ include file="../footer.jsp" %>
<script>
	$(document).ready(function() {
    $("#country").on("change", function() {
        if ($(this).val() === "I") {
            $("#otherName").show();
        }
        else {
            $("#otherName").hide();
        }
    });
});
</script>

<script>
	$(document).ready(function() {
    $("#country").on("change", function() {
        if ($(this).val() === "B") {
            $("#otherbranch").show();
        }
        else {
            $("#otherbranch").hide();
        }
    });
});
</script> 