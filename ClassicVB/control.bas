Attribute VB_Name = "control"
Public db As ADODB.Connection
Public admin As String
Public user As String
Public uname As String
Public selectcno, selectcname
Public CANCEL As Boolean
' Global Variables
Public g_InteropToolbox As InteropToolbox

Sub Main()
    ' Instantiate the Toolbox
    Set g_InteropToolbox = New InteropToolbox
    g_InteropToolbox.Initialize
    
    ' Call Initialize method only when first creating the toolbox
    ' This aids in the debugging experience
    g_InteropToolbox.Initialize

    ' Signal Application Startup
    g_InteropToolbox.EventMessenger.RaiseApplicationStartedupEvent
    
    
    ' Do application logic
    Set db = New ADODB.Connection
    db.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\data.mdb;Persist Security Info=False;"
    DataEnvironment1.Connection1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\data.mdb;Persist Security Info=False;"
    log.Show vbmodel

End Sub
