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
          <form action="${pageContext.request.contextPath}/getEmployeeSalary" >
          <div class="middle-bg">
            
              <div class="row">
                <div class="col-md-2 col-sm-2">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Report Type :</label>
                    <select id="country" name="report" class="form-control">
                    
                    
                      <option value="B" id="text">Firmwise Report</option>
                      <option value="I">Indivisual Report </option>
                    </select>
                  </div>
                </div>
            <div class="col-md-2 col-sm-2">
                  <div class="form-group">
                   <label id="otherName">Enter Your Id
                  <input  type="text" class="form-control" id="empId" placeholder="ID" name="empId"/> 
                  </label>
                  
                    <label id="otherbranch">Choose Firm 
                    <select class="form-control input-lg" id="branchId" name="branchId" >
           <option>--select--</option>
							 <c:forEach items="${branchSiteDetails}" var = "branchSiteDetails">
                             <option  value ="${branchSiteDetails.type}">${branchSiteDetails.name }</option>
                             </c:forEach>
                             </select>
                            </label>
                  </div>
                </div>
                            
                    <div class="row">
                      <div class="col-md-3 col-sm-3">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Select Month :</label>
 <select class="form-control input-lg" id="monthId" name="monthId">
    <option value=''>--Select Month--</option>
    <option value='1'>Janaury</option>
    <option value='2'>February</option>
    <option value='3'>March</option>
    <option value='4'>April</option>
    <option value='5'>May</option>
    <option value='6'>June</option>
    <option value='7'>July</option>
    <option value='8'>August</option>
    <option value='9'>September</option>
    <option value='10'>October</option>
    <option value='11'>November</option>
    <option value='12'>December</option>
    </select>                         </div>
                      </div>
                     <!--  <div class="col-md-3 col-sm-3">
                        <div class="form-group">
                          <label for="exampleInputEmail1">End date :</label>
                          <input type="text" class="form-control datepicker2" name="to" id="to" placeholder="To Date">
                        </div>
                      </div>
                    </div>
                  </div> -->
              
               <input type="submit" value="get">
               
              </div>
             
                </form>
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
          <div class="table-responsive">
            <table id="example2" class="table table-bordered table-hover tbl">
              <tr>
                <th>Sr. No</th>
                <th>Employee Id</th>
                <th>Name</th>
                <th>No of days</th>
                <th>Salary</th>
                
              </tr>
             <tbody>
                <c:forEach items="${getEmployeeSalaryDetails}" var = "getEmployeeSalaryDetails" varStatus="myIndex">
                <tr>
                <td>${myIndex.index+1}</td>
                <td>${getEmployeeSalaryDetails.empId}</td>
                <td>${getEmployeeSalaryDetails.name}</td>
                <td>${getEmployeeSalaryDetails.noOfDays}</td>
                <td>${getEmployeeSalaryDetails.salary}</td>
                
              </tr>
             </c:forEach>
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