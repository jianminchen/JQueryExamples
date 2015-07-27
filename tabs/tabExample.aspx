<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tabExample.aspx.cs" Inherits="JqueryExamples_tabs_tabExample" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>jQuery Tabs</title>
    <link type="text/css" href="css/smoothness/jquery-ui-1.8.21.custom.css" rel="Stylesheet" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <link type="text/css" 
href="Stylesheet.css" // Add your own .css file (Optional)
rel="Stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            // Simple Tab
            $("#SimpleTab").tabs({ collapsible: true });
            //
            // Tabs - Set Active Panel
            $('#btnSetActiveTab').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "selected", 2);
            });
            //
            // Tabs - Get Active Panel
            $('#btnGetActiveTab').click(function (event) {
                event.preventDefault();
                alert($("#SimpleTab").tabs("option", "selected"));
            });
            //
            // Tabs - Collapse All
            $('#btnCollapse').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "selected", -1);
            });
            //
            // Tabs - Cache Remote Content
            $('#btnCache').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "cache", false);
            });
            //
            // Tabs - Add Tab
            $('#btnAddTab').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "spinner", "Loading, Please wait...");
                $("#SimpleTab").tabs("option", "cache", false);
                $('#SimpleTab').tabs("add", 'TabData.aspx?TabID=4', 'Tab-4');
                $('#SimpleTab').tabs("add", 'TabData.aspx?TabID=5', 'Tab-5');
            });
            //
            // Tabs - Remove Tab
            $('#btnRemoveTab').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("remove", 2);
            });
            //
            // Tabs - AjaxOption Error Handling
            $('#btnHandleError').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs(
                {
                    collapsible: true,
                    ajaxOptions:
                    {
                        error: function (XMLHttpRequest, reqStatus, errIndex, Anchor) {
                            $(Anchor.hash).html(
                            "Unable to load data, Please contact Administrator");
                        }
                    }
                });
                $('#SimpleTab').tabs("add", 'Error.aspx?TabID=5', 'Tab-4');
            });
            //
            // Tabs - Mouse Over Tab Switching
            $('#btnMouseOver').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "event", "mouseover");
            });
            //
            // Tabs - Mouse Over Tab Switching
            $('#btnAnimate').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs("option", "fx", { opacity: 'toggle' });
                $("#SimpleTab").tabs("option", "duration", "slow");
            });
            //
            // Tabs - Event Handler
            $('#btnEventHandler').click(function (event) {
                event.preventDefault();
                $("#SimpleTab").tabs(
                {
                    select: function (event, ui) {
                        alert('Tab ' + ui.index + ' Selected');
                    }
                });
                //
                // Binding event after initializing the Tab
                $("#SimpleTab").bind("tabsload", function (e, tab) {
                    alert("The tab at index " + tab.index + " was loaded");
                });
            });


            //
            // Icon Tab
            $("#divIconTab").tabs({ collapsible: true });
            //
            // Image Tab
            $("#divImageTab").tabs({ collapsible: true });
        });
      </script>         
</head>
<body>
    <form id="frmTabs" runat="server">
        <table>
            <tr valign="top">
                <td>Simple Tab: </td>
                <td>
                    <div id="SimpleTab">
                          <ul>
                                <li><a href="#tab1">Tab-1</a></li>
                                <li><a href="#tab2">Tab-2</a></li>
                                <li><a href="#tab3">Tab-3</a></li>
                          </ul>
                          <div id="tab1">
                                Tab-1 Content goes here.
                          </div>
                          <div id="tab2">
                                Tab-2 Content goes here.
                          </div>
                          <div id="tab3">
                                Tab-3 Content goes here.
                          </div>
                    </div>
                </td>               
            </tr>
            <tr valign="top">
                <td>Tabs - Set Active Tab </td>
                <td>
                    <asp:Button
ID="btnSetActiveTab"
runat="server"
Text="Set Active Tab" />
                </td>               
            </tr> 
            <tr valign="top">
                <td>Tabs - Get Active Tab </td>
                <td>
                    <asp:Button
ID="btnGetActiveTab"
runat="server"
Text="Get Active Tab" />
                </td>               
            </tr>     
            <tr valign="top">
                <td>Tabs - Collapse </td>
                <td>
                    <asp:Button
ID="btnCollapse"
runat="server"
Text="Collapse" />
                </td>               
            </tr>   
            <tr valign="top">
                <td>Tabs - Caching </td>
                <td>
                    <asp:Button
ID="btnCache"
runat="server"
Text="Cache Tab" />
                </td>               
            </tr>             
            <tr valign="top">
                <td>Tabs - Add New Tab </td>
                <td>
                    <asp:Button
ID="btnAddTab"
runat="server"
Text="Add Tabs" />
                </td>               
            </tr> 
            <tr valign="top">
                <td>Tabs - Remove Tab </td>
                <td>
                    <asp:Button
ID="btnRemoveTab"
runat="server"
Text="Remove Tabs" />
                </td>               
            </tr> 
            <tr valign="top">
                <td>Tabs - Ajax Error Handling</td>
                <td>
                    <asp:Button
ID="btnHandleError"
runat="server"
Text="Handle Error" />
                </td>               
            </tr>  
            <tr valign="top">
                <td>Tabs - MouseOver </td>
                <td>
                    <asp:Button
ID="btnMouseOver"
runat="server"
Text="Mouse Over" />
                </td>               
            </tr>
            <tr valign="top">
                <td>Tabs - Animation </td>
                <td>
                    <asp:Button
ID="btnAnimate"
runat="server"
Text="Animate Tab" />
                </td>               
            </tr>
            <tr valign="top">
                <td>Tabs - Event Handlers </td>
                <td>
                    <asp:Button
ID="btnEventHandler"
runat="server"
Text="Event Handler" />
                </td>               
            </tr>  
<tr valign="top">
                <td>Icon Tab: </td>
                <td>
                    <div id="divIconTab">
                          <ul>
                                <li><a href="#tab4"><img class="ui-icon ui-icon-document" border="0"/>Tab-1</a></li>
                                <li><a href="#tab5"><img class="ui-icon ui-icon-comment" border="0"/>Tab-2</a></li>
                                <li><a href="#tab6"><img class="ui-icon ui-icon-locked" border="0"/>Tab-3</a></li>
                          </ul>
                          <div id="tab4">
                                Tab-1 Content goes here.
                          </div>
                          <div id="tab5">
                                Tab-2 Content goes here.
                          </div>
                          <div id="tab6">
                                Tab-3 Content goes here.
                          </div>
                    </div>
                </td>               
            </tr>  
            <tr valign="top">
                <td>Image Tab: </td>
                <td>
                    <div id="divImageTab">
                          <ul>
                                <li><a href="#tab7"><img src="images/Home.JPG" border="0"/>Tab-1</a></li>
                                <li><a href="#tab8"><img src="images/Security.JPG" border="0"/>Tab-2</a></li>
                                <li><a href="#tab9"><img src="images/Users.JPG" border="0"/>Tab-3</a></li>
                          </ul>
                          <div id="tab7">
                                Tab-1 Content goes here.
                          </div>
                          <div id="tab8">
                                Tab-2 Content goes here.
                          </div>
                          <div id="tab9">
                                Tab-3 Content goes here.
                          </div>
                    </div>
                </td>               
            </tr>             
         </table> 
    </form>
</body>
</html>