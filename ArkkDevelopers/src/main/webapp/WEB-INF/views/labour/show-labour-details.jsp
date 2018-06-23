<%@ include file="../header.jsp" %>
<section class="content index">
  <div class="1middle-bg">
    <div class="row">
      <div class="col-md-6">
        <input name="message" placeholder="Search employee ..." class="form-control input-lg" type="text">
        <span class="glyphicon glyphicon-search search-icon"></span> </div>
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
                <th>Name</th>
                <th>Site</th>
                <th>Mobile No</th>
                <th>Gender</th>
                <th>Device Id</th>
                <th>Salary</th>
                <th>Address</th>
                <th>Delete</th>
                <th>Edit</th>
              </tr>
             
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                
              </tr>
             
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


</script>



<%@ include file="../footer.jsp" %>