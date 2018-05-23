<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalanderPage.aspx.cs" Inherits="CompanyManagementSystem.Web.User_Interface.CalanderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Sample pages</a> <a href="#" class="current">Calendar</a></div>
    <h1>Calendar</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box widget-calendar">
          <div class="widget-title"> <span class="icon"><i class="icon-calendar"></i></span>
            <h5>Calendar</h5>
            <div class="buttons"> <a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-inverse btn-mini"><i class="icon-plus icon-white"></i> Add new event</a>
              <div class="modal hide" id="modal-add-event">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">×</button>
                  <h3>Add a new event</h3>
                </div>
                <div class="modal-body">
                  <p>Enter event name:</p>
                  <p>
                    <input id="event-name" type="text" />
                  </p>
                </div>
                <div class="modal-footer"> <a href="#" class="btn" data-dismiss="modal">Cancel</a> <a href="#" id="add-event-submit" class="btn btn-primary">Add event</a> </div>
              </div>
            </div>
          </div>
          <div class="widget-content">
            <div class="panel-left">
              <div id="fullcalendar"></div>
            </div>
            <div id="external-events" class="panel-right">
              <div class="panel-title">
                <h5>Event Calander</h5>
              </div>
            </div>
              <div class="Calendar"></div>
              <div class="dayClickWindow"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
       
</div>  
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.0.1/fullcalendar.min.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.0.1/fullcalendar.min.css">

    <script>
        $(document).ready(function () {

            $('.Calendar').fullCalendar({

                dayClick: function (data, event, view) {
                    $('.dayClickWindow').show();
                }
            });

        });

    </script>
</asp:Content>
