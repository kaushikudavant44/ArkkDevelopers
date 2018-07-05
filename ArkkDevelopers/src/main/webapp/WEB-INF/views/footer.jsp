 

    <!-- Popper.JS -->
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>-->
    <!-- Bootstrap JS -->
	
	
	

       
    
    
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/json-utils.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/date-util.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>	
	<script src="${pageContext.request.contextPath}/resources/js/DataStructure.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/UserInfo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/StatisticsInfo.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/msg.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/dashboard.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popup.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $(this).toggleClass('active');
            });
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script>
    $(function () {
        $('.datepicker1').datepicker({
        	closeOnDateSelect: true,
            format: 'yyyy-mm-dd',
            autoclose: true
        });
    }); 
    /* $(function () {
        $('.datepicker1').datetimepicker({
            format: 'yyyy-mm-dd hh:mm:ss'}).on('changeDate', function(e){
                $(this).datetimepicker('hide');
            }); */
    
    </script>
    
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>  --%>

<!--<script src="js/jquery.dataTables.min.js"></script> -->
<!--<script src="js/dataTables.bootstrap.min.js"></script>--> 
<!--<script src="js/jquery.slimscroll.min.js"></script> -->
<!--<script src="js/fastclick.js"></script>--> 
<%-- <script src="${pageContext.request.contextPath}/resources/js/adminlte.min.js"></script>  --%>
<!--<script src="js/demo.js"></script> -->
<!--<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>-->
</body>
</html>
