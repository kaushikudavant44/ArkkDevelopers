      <%@ include file="header.jsp" %>
       
       <!-- Main content -->
<section class="content index">
<ol class="breadcrumb1">
  <li><a href="#"><i class="fa fa-dashboard"></i>Calendar</a></li>
</ol>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-4 col-lg-4 col-xs-12">
    <div class="white-blk">
      <div class="user-bg"> <a href="#">
        <div class="user-circle"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Admin</h4>
        </div>
        </a> </div>
      <div class="edit-profile">
        <ul>
          <li><a href="#" class="hvr-float">Change password</a></li>
          <li><a href="#" class="hvr-float">Edit Profile</a></li>
          <li>Root Admin</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="col-md-4 col-lg-4 col-xs-12">
    <div class="white-blk">
      <div class="user-bg sky"> 
      <!--<a href="#">
        <div class="user-circle"> <img src="images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Account Management</h4>
        </div>
        </a> -->
        
    <div id="myCarousel" class="carousel slide" data-interval="2000" data-ride="carousel">
    	<!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li> 
        </ol>   
       
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="active item">
               <div class="user-circle"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Account Management</h4>
        </div>
         		
            </div>
            <div class="item">
                <div class="user-circle"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Account Management</h4>
        </div>
            </div>
            <div class="item">
                <div class="user-circle"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Account Management</h4>                              
            </div>
        </div>
        <!-- Carousel controls -->
        
    </div>
</div>
        
      </div>  
      <div class="edit-profile">
        <ul>
          <li><a href="#" class="hvr-float"> Add Employee</a></li>
          <li><a href="#" class="hvr-float"> Edit Employee Profile</a></li>
        </ul>
      </div>
    </div>
  </div>

  
  <div class="col-md-4 col-lg-4 col-xs-12">
    <div class="white-blk">
      <div class="user-bg orange"> <a href="#">
        <div class="user-circle"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="thumb-lg img-center img-responsive">
          <h4 >Reports</h4>
        </div>
        </a> </div>
      <div class="edit-profile">
        <ul>
          <li><a href="#" class="hvr-float"> Attendance Report</a></li>
          <li><a href="#" class="hvr-float"> Employee Details</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
</section>
<!-- ./wrapper --> 
 <%@ include file="footer.jsp" %>
