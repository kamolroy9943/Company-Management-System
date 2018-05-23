<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Default.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage" style="margin-left: 35px">
      <ul class="quick-actions">
        <li class="bg_lb"> <a href="Default.aspx"> <i class="icon-dashboard"></i> <span class="label label-important">20</span> My Dashboard </a> </li>
        <li class="bg_lg span3"> <a href="EmployeeList.aspx"> <i class="icon-signal"></i> All Employee</a> </li>
        <li class="bg_ly"> <a href="EmployeeEntry.aspx"> <i class="icon-inbox"></i><span class="label label-success">101</span> Add New Employee </a> </li>
        <li class="bg_lo"> <a href="AttendanceList.aspx"> <i class="icon-th"></i>Employee Attendance</a> </li>
        <li class="bg_ls"> <a href="grid.html"> <i class="icon-fullscreen"></i> Full width</a> </li>
          <li class="bg_lg"> <a href="CalanderPage.aspx"> <i class="icon-calendar"></i> Calendar</a> </li>
       <%-- <li class="bg_lo span3"> <a href="form-common.html"> <i class="icon-th-list"></i> Forms</a> </li>
        <li class="bg_ls"> <a href="buttons.html"> <i class="icon-tint"></i> Buttons</a> </li>
        <li class="bg_lb"> <a href="interface.html"> <i class="icon-pencil"></i>Elements</a> </li>
        <li class="bg_lr"> <a href="error404.html"> <i class="icon-info-sign"></i> Error</a> </li>--%>

      </ul>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Site Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">
            <div class="span9">
              <div class="chart"></div>
            </div>
            <div class="span3">
              <ul class="site-stats">
                <li class="bg_lh"><i class="icon-user"></i> <strong>2540</strong> <small>Total Users</small></li>
                <li class="bg_lh"><i class="icon-plus"></i> <strong>120</strong> <small>New Users </small></li>
                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>656</strong> <small>Total Shop</small></li>
                <li class="bg_lh"><i class="icon-tag"></i> <strong>9540</strong> <small>Total Orders</small></li>
                <li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> <small>Pending Orders</small></li>
                <li class="bg_lh"><i class="icon-globe"></i> <strong>8540</strong> <small>Online Orders</small></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box--> 
    <hr/>
  </div>
</div>

</asp:Content>
