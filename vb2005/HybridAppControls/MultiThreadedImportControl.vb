<ComClass(MultiThreadedImportControl.ClassId, MultiThreadedImportControl.InterfaceId, MultiThreadedImportControl.EventsId)> _
Public Class MultiThreadedImportControl

#Region "VB6 Interop Code"

#If COM_INTEROP_ENABLED Then

#Region "COM Registration"

    ' These  GUIDs provide the COM identity for this class 
    ' and its COM interfaces. If you change them, existing 
    ' clients will no longer be able to access the class.

    Public Const ClassId As String = "2ce54297-f68a-4a52-9a38-ce2850658c89"
    Public Const InterfaceId As String = "9613d945-087a-41fb-815b-b29a99bc4d01"
    Public Const EventsId As String = "4f4a77f3-771c-4a97-9728-9eae6d23ba9f"

    'These routines perform the additional COM registration needed by ActiveX controls
    <EditorBrowsable(EditorBrowsableState.Never)> _
    <ComRegisterFunction()> _
    Private Shared Sub Register(ByVal t As Type)
        ComRegistration.RegisterControl(t)
    End Sub

    <EditorBrowsable(EditorBrowsableState.Never)> _
    <ComUnregisterFunction()> _
    Private Shared Sub Unregister(ByVal t As Type)
        ComRegistration.UnregisterControl(t)
    End Sub

#End Region

#Region "VB6 Events"

    'This section shows some examples of exposing a UserControl's events to VB6.  Typically, you just
    '1) Declare the event as you want it to be shown in VB6
    '2) Raise the event in the appropriate UserControl event.

    Public Shadows Event Click() 'Event must be marked as Shadows since .NET UserControls have the same name.
    Public Event DblClick()

    Private Sub InteropUserControl_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Click
        RaiseEvent Click()
    End Sub

    Private Sub InteropUserControl_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.DoubleClick
        RaiseEvent DblClick()
    End Sub

#End Region

#Region "VB6 Properties"

    'The following are examples of how to expose typical form properties to VB6.  
    'You can also use these as examples on how to add additional properties.

    'Must Shadow this property as it exists in Windows.Forms and is not overridable
    Public Shadows Property Visible() As Boolean
        Get
            Return MyBase.Visible
        End Get
        Set(ByVal value As Boolean)
            MyBase.Visible = value
        End Set
    End Property

    Public Shadows Property Enabled() As Boolean
        Get
            Return MyBase.Enabled
        End Get
        Set(ByVal value As Boolean)
            MyBase.Enabled = value
        End Set
    End Property

    Public Shadows Property ForegroundColor() As Integer
        Get
            Return ActiveXControlHelpers.GetOleColorFromColor(MyBase.ForeColor)
        End Get
        Set(ByVal value As Integer)
            MyBase.ForeColor = ActiveXControlHelpers.GetColorFromOleColor(value)
        End Set
    End Property

    Public Shadows Property BackgroundColor() As Integer
        Get
            Return ActiveXControlHelpers.GetOleColorFromColor(MyBase.BackColor)
        End Get
        Set(ByVal value As Integer)
            MyBase.BackColor = ActiveXControlHelpers.GetColorFromOleColor(value)
        End Set
    End Property

    Public Overrides Property BackgroundImage() As System.Drawing.Image
        Get
            Return Nothing
        End Get
        Set(ByVal value As System.Drawing.Image)
            If value IsNot Nothing Then
                MsgBox("Setting the background image of an Interop UserControl is not supported, please use a PictureBox instead.", MsgBoxStyle.Information)
            End If
            MyBase.BackgroundImage = Nothing
        End Set
    End Property

#End Region

#Region "VB6 Methods"

    Public Overrides Sub Refresh()
        MyBase.Refresh()
    End Sub

    'Ensures that tabbing across VB6 and .NET controls works as expected
    Private Sub UserControl_LostFocus(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.LostFocus
        ActiveXControlHelpers.HandleFocus(Me)
    End Sub

    Public Sub New()

        ' This call is required by the Windows Form Designer.
        InitializeComponent()

        ' Add any initialization after the InitializeComponent() call.

        'Raise Load event
        Me.OnCreateControl()
    End Sub

    <SecurityPermission(SecurityAction.LinkDemand, Flags:=SecurityPermissionFlag.UnmanagedCode)> _
    Protected Overrides Sub WndProc(ByRef m As System.Windows.Forms.Message)

        Const WM_SETFOCUS As Integer = &H7
        Const WM_PARENTNOTIFY As Integer = &H210
        Const WM_DESTROY As Integer = &H2
        Const WM_LBUTTONDOWN As Integer = &H201
        Const WM_RBUTTONDOWN As Integer = &H204

        If m.Msg = WM_SETFOCUS Then
            'Raise Enter event
            Me.OnEnter(New System.EventArgs) 

        ElseIf m.Msg = WM_PARENTNOTIFY AndAlso _
            (m.WParam.ToInt32 = WM_LBUTTONDOWN OrElse _
             m.WParam.ToInt32 = WM_RBUTTONDOWN) Then

            If Not Me.ContainsFocus Then
                'Raise Enter event
                Me.OnEnter(New System.EventArgs) 
            End If

        ElseIf m.Msg = WM_DESTROY AndAlso Not Me.IsDisposed AndAlso Not Me.Disposing Then
            'Used to ensure that VB6 will cleanup control properly
            Me.Dispose()
        End If

        MyBase.WndProc(m)
    End Sub

    'This event will hook up the necessary handlers
    Private Sub InteropUserControl_ControlAdded(ByVal sender As Object, ByVal e As ControlEventArgs) Handles Me.ControlAdded
        ActiveXControlHelpers.WireUpHandlers(e.Control, AddressOf ValidationHandler)
    End Sub

    'Ensures that the Validating and Validated events fire appropriately
    Friend Sub ValidationHandler(ByVal sender As Object, ByVal e As EventArgs)

        If Me.ContainsFocus Then Return

        'Raise Leave event
        Me.OnLeave(e) 

        If Me.CausesValidation Then
            Dim validationArgs As New CancelEventArgs
            Me.OnValidating(validationArgs)

            If validationArgs.Cancel AndAlso Me.ActiveControl IsNot Nothing Then
                Me.ActiveControl.Focus()
            Else
                'Raise Validated event
                Me.OnValidated(e) 
            End If
        End If

    End Sub

#End Region

#End If

    'TODO: Remember to update InteropUserControl.manifest if you are using RegFree COM

#End Region

    'Please enter any new code here, below the Interop code


    Private Sub BulkImportWorker_DoWork(ByVal sender As System.Object, ByVal e As System.ComponentModel.DoWorkEventArgs) Handles BulkImportWorker.DoWork
        Dim ReadFile As New System.IO.StreamReader(txtImportFileName.Text)
        Dim ImportedIncident As String
        Dim SugarCrmSettings As New SugarCrmAdapter.CrmHelper

        'Getting VB6 Configuration values
        SugarCrmSettings.crmUserId = My.InteropToolbox.Globals("crmUserId").ToString()
        SugarCrmSettings.crmURL = My.InteropToolbox.Globals("crmURL").ToString()
        SugarCrmSettings.crmPassword = My.InteropToolbox.Globals("crmPassword").ToString()
        SugarCrmSettings.crmVer = My.InteropToolbox.Globals("crmVersion").ToString()
        Dim lineno As Integer
        lineno = 1
        Dim importerror As Integer
        importerror = 0
        Try

            While Not ReadFile.EndOfStream
                ImportedIncident = ReadFile.ReadLine

                txtStatus.Text = "Processing Line  " + lineno.ToString()
                Dim IncidentRequest As New SugarCrmAdapter.Incident
                Dim IncidentResponse As New SugarCrmAdapter.GenericEntity

                IncidentResponse = IncidentRequest.Create(SugarCrmSettings, ImportedIncident)
                If (IncidentResponse.IsError) Then
                    ExportList.Items.Add("Line # " + lineno.ToString() + " Error occured while creating Case " + ImportedIncident)
                    importerror = importerror + 1
                End If
                lineno = lineno + 1
            End While
            lineno = lineno - 1
        Catch ex As Exception
            Microsoft.VisualBasic.Interaction.MsgBox("Unexpected error " + ex.Message, MsgBoxStyle.Information)
        Finally
            ReadFile.Close()
            Dim summary As String
            summary = vbCrLf + "Total records processed: " + lineno.ToString() + vbCrLf
            summary += "Successfully inserted: " + CStr(lineno - importerror) + vbCrLf
            summary += "Failed: " + importerror.ToString() + vbCrLf

            Microsoft.VisualBasic.Interaction.MsgBox("Import task complted" + vbCrLf + summary, MsgBoxStyle.Information)
            txtStatus.Text = "Completed..."

        End Try
    End Sub

    Private Sub btnImport_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnImport.Click
        BulkImportWorker.RunWorkerAsync()
    End Sub
End Class