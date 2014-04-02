 <%@ page import="main.*"%>
 <%@ page import ="java.util.*" %>
<jsp:include page="../templates/header.jsp" />
<script src="../../js/userConf.js"></script>
<script>
onload = checkNME();
</script>
<div class="row">
	<div class="col-md-3 text-left panel-group" id="accordion">
		<ul class="nav nav-pills nav-stacked">
			<li><a href="nmeHome.jsp"><span
					class="glyphicon glyphicon-home"></span> <strong><u><%=Strings.HOME%></u></strong></a></li>
			<li><a data-toggle="collapse" data-parent="#accordion"
				href="#collapseOne"><span class="glyphicon glyphicon-stats"></span> <strong><u><%=Strings.NMEQUERIES%></u></strong></a></li>

			<div id="collapseOne" class="panel-collapse collapse">
				<ul class="nav nav-pills nav-stacked text-left">
					<li><a href="nmeCountNumFailures.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.NUM_FAILURES_FOR_EACH_IMSI_BY_TIME_PERIOD%></a></li>
					<li><a href="nmeCountEventCauseModel.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.UNIQUE_EVENTID_AND_CAUSECODE_COMBINATION_AND_OCCURANCES_BY_MODEL%></a></li>
					<li><a href="nmeTopMOC.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.TOP_10_MARKET_OPERATOR_CELL_NODES_BY_TIME_PERIOD%></a></li>
					<li><a href="nmeTopIMSI.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.TOP_10_IMSIS%></a></li>
					<li><a href="nmeTopMOCGraph.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.TOP_10_MARKET_OPERATOR_CELL_NODES_GRAPHICAL%></a></li>
				</ul>
			</div>
			<li><a data-toggle="collapse" data-parent="#accordion"
				href="#collapseTwo"><span class="glyphicon glyphicon-stats"></span> <strong><u><%=Strings.CSQUERIES%></u></strong></a></li>
			<div id="collapseTwo" class="panel-collapse collapse">
				<ul class="nav nav-pills nav-stacked text-left">
					<li><a href="csEventCause.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.UNIQUE_EVENTID_AND_CAUSECODE_COMBINATIONS_BY_IMSI%></a></li>
					<li><a href="csNumOfFail.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.NUM_FAILURES_BY_IMSI_BY_TIME_PERIOD%></a></li>
					<li><a href="csUniqueCodes.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.UNIQUE_CAUSECODES_BY_IMSI%></a></li>
				</ul>
			</div>
			<li><a data-toggle="collapse" data-parent="#accordion"
				href="#collapsethree"><span class="glyphicon glyphicon-stats"></span> <strong><u><%=Strings.SEQUERIES%></u></strong></a></li>

			<div id="collapsethree" class="panel-collapse collapse">
				<ul class="nav nav-pills nav-stacked text-left">
					<li><a href="seListIMSI.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.ALL_IMSIS_BY_TIME_PERIOD%></a></li>
					<li><a href="seCountForModel.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.NUM_FAILURES_BY_MODEL_BY_TIME_PERIOD%></a></li>
					<li><a href="seIMSIByFC.jsp"><span
							class="glyphicon glyphicon-arrow-right"></span> <%=Strings.IMSIS_BY_FAILURE_CLASS%></a></li>
				</ul>
			</div>
		</ul>
		<a class="twitter-timeline" width="250" height="250" data-dnt="true" href="https://twitter.com/ericsson" data-widget-id="444114613219520513"><%=Strings.TWEETS%></a>
		
	</div>

	<div class="col-md-9">
		<h3 class="col-md-12 text-center">
			<strong><em><%=Strings.PROFILE_PAGE%></em></strong>
		</h3>
		<p style="padding: 1px;" class="col-md-12"></p>
		<div class="col-md-6">
			<dl class="dl-horizontal">
				<dt><%=Strings.PROFILE_USERNAME%></dt>
				<dd style="padding-bottom: 20px;"id= "tblusername"></dd>
				<dt><%=Strings.PROFILE_ROLE%></dt>
				<dd id = "tblrole"></dd>

			</dl>
			<h4 class="center col-md-offset-3"
				style="padding-top: 20px; padding-bottom: 20px;">
				<strong><em>Contact Details</em></strong>
			</h4>
			<dl class="dl-horizontal">
				<dt><%=Strings.PROFILE_EMAIL%></dt>
				<dd style="padding-bottom: 20px;" id = "tblemail"></dd>
				<dt><%=Strings.PROFILE_PHONE%></dt>
				<dd id = "tblphone"></dd>
			</dl>

		</div>
		<div class="col-md-6">
			<dl class="dl-horizontal">
				<dt><%=Strings.PROFILE_FIRSTNAME%></dt>
				<dd style="padding-bottom: 20px;" id = "tblfirstname"></dd>
				<dt><%=Strings.PROFILE_LASTNAME%></dt>
				<dd id = "tbllastname"></dd>
			</dl>
			<div class=" col-md-12 center">
				<script src="//platform.linkedin.com/in.js" type="text/javascript"></script>
				<script type="IN/JYMBII" data-companyid="1060" data-format="inline"></script>
			</div>
		</div>
	</div>
<script> loadUserDetails();</script>				
<jsp:include page="../templates/footer.jsp" />