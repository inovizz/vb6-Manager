Public Class Incident

    Public Function Create(ByVal ConnectionSettings As CrmHelper, ByVal CaseName As String) As GenericEntity
        Dim crm As New CrmService.sugarsoap
        Dim auth As New CrmService.user_auth
        auth.user_name = ConnectionSettings.crmUserId
        auth.password = ConnectionSettings.crmPassword
        auth.version = ConnectionSettings.crmVer
        crm.Url = ConnectionSettings.crmURL

        Dim ReturnObject As New GenericEntity
        Try
            Dim test As String = crm.test("test")
            Dim a As Object = crm.login(auth, "SoapTest")
        Catch ex As Exception
            ReturnObject.IsError = True
            ReturnObject.Message = "Connection to SugarCrm was unsuccessfull"
            Return ReturnObject
        End Try

        Try
            Dim caseid As String = crm.create_case(ConnectionSettings.crmUserId, ConnectionSettings.crmPassword, CaseName)

            ReturnObject.Message = "Case created in SugarCrm with CaseID - " + caseid
            Return ReturnObject
        Catch ex As Exception
            ReturnObject.IsError = True
            ReturnObject.Message = "Unable to create case in SugarCrm ErrorDetails - " + ex.Message
            Return ReturnObject
        End Try

    End Function

End Class
