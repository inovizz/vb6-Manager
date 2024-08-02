Imports Microsoft.InteropFormTools


<InteropForm()> _
Public Class CreateCase

    Private Sub CreateCase_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load


    End Sub

    Private Sub btnCreate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCreate.Click
        Dim SugarCrmSettings As New SugarCrmAdapter.CrmHelper


        'Getting VB6 Configuration values
        SugarCrmSettings.crmUserId = My.InteropToolbox.Globals("crmUserId")
        SugarCrmSettings.crmURL = My.InteropToolbox.Globals("crmURL")
        SugarCrmSettings.crmPassword = My.InteropToolbox.Globals("crmPassword")
        SugarCrmSettings.crmVer = My.InteropToolbox.Globals("crmVersion")

        Dim IncidentRequest As New SugarCrmAdapter.Incident
        Dim IncidentResponse As New SugarCrmAdapter.GenericEntity

        IncidentResponse = IncidentRequest.Create(SugarCrmSettings, txtName.Text)

        If IncidentResponse.IsError = True Then
            Microsoft.VisualBasic.Interaction.MsgBox(IncidentResponse.Message, MsgBoxStyle.Critical, "SugarCrm")
        Else
            Microsoft.VisualBasic.Interaction.MsgBox(IncidentResponse.Message, MsgBoxStyle.Information, "SugarCrm")
        End If

    End Sub
End Class