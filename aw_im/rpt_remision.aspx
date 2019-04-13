<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_remision.aspx.cs" Inherits="aw_im.rpt_remision" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row">
         
            <div class="row" id="div_rpt" runat="server" visible="false">
                <div class="col-lg-1 ">
                </div>
                <div class="col-lg-8 text-center">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="800px" waitmessagefont-names="Verdana" waitmessagefont-size="14pt" Width="800px" ShowBackButton="False" ShowFindControls="False" ShowPageNavigationControls="False" AsyncRendering="true"  InteractiveDeviceInfos="(Collection)">
                    </rsweb:ReportViewer>
                </div>
                <div class="col-lg-1 ">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
