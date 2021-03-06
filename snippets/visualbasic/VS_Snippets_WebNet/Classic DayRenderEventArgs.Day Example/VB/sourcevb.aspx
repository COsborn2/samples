<!--<Snippet1>-->
<%@ Page Language="VB" AutoEventWireup="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>DayRenderEventArgs Example</title>
<script language="VB" runat="server">
   
    Sub DayRender(source As Object, e As DayRenderEventArgs)
        If Not e.Day.IsOtherMonth And Not e.Day.IsWeekend Then
            e.Cell.BackColor = System.Drawing.Color.Yellow
        End If
    End Sub 'DayRender

   </script>
 
</head>
 
<body>
 
   <form id="form1" runat="server">

      <h3>DayRenderEventArgs Example</h3>
 
      <asp:Calendar id="calendar1"                     
                    OnDayRender="DayRender"
                    runat="server">

         <WeekendDayStyle BackColor="gray">
         </WeekendDayStyle>

      </asp:Calendar>
                   
   </form>
         
</body>
</html>
   
<!--</Snippet1>-->
