Option Strict On
Imports System.Windows.Forms
Imports System.ComponentModel

<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MultiThreadedImportControl
    Inherits System.Windows.Forms.UserControl

    'MultiThreadedImportControl overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.BulkImportWorker = New System.ComponentModel.BackgroundWorker
        Me.txtImportFileName = New System.Windows.Forms.TextBox
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.btnImport = New System.Windows.Forms.Button
        Me.ExportList = New System.Windows.Forms.ListBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.txtStatus = New System.Windows.Forms.Label
        Me.SuspendLayout()
        '
        'BulkImportWorker
        '
        '
        'txtImportFileName
        '
        Me.txtImportFileName.Location = New System.Drawing.Point(84, 19)
        Me.txtImportFileName.Name = "txtImportFileName"
        Me.txtImportFileName.Size = New System.Drawing.Size(282, 20)
        Me.txtImportFileName.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(15, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(63, 13)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "File Name"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(15, 42)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(210, 65)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "(Example: C:\Import\Case.txt)" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "Tips for success" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "=============" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "1) Each Case sh" & _
            "ould be entered in one line" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10)
        '
        'btnImport
        '
        Me.btnImport.Location = New System.Drawing.Point(282, 57)
        Me.btnImport.Name = "btnImport"
        Me.btnImport.Size = New System.Drawing.Size(75, 23)
        Me.btnImport.TabIndex = 3
        Me.btnImport.Text = "Start Import"
        Me.btnImport.UseVisualStyleBackColor = True
        '
        'ExportList
        '
        Me.ExportList.FormattingEnabled = True
        Me.ExportList.Location = New System.Drawing.Point(18, 162)
        Me.ExportList.Name = "ExportList"
        Me.ExportList.Size = New System.Drawing.Size(339, 108)
        Me.ExportList.TabIndex = 4
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(15, 136)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(132, 13)
        Me.Label3.TabIndex = 5
        Me.Label3.Text = "Bulk Import Errors List"
        '
        'txtStatus
        '
        Me.txtStatus.AutoSize = True
        Me.txtStatus.Font = New System.Drawing.Font("Verdana", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtStatus.ForeColor = System.Drawing.Color.Navy
        Me.txtStatus.Location = New System.Drawing.Point(15, 286)
        Me.txtStatus.Name = "txtStatus"
        Me.txtStatus.Size = New System.Drawing.Size(0, 13)
        Me.txtStatus.TabIndex = 6
        '
        'MultiThreadedImportControl
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.Controls.Add(Me.txtStatus)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.ExportList)
        Me.Controls.Add(Me.btnImport)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.txtImportFileName)
        Me.Name = "MultiThreadedImportControl"
        Me.Size = New System.Drawing.Size(378, 316)
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents BulkImportWorker As System.ComponentModel.BackgroundWorker
    Friend WithEvents txtImportFileName As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents btnImport As System.Windows.Forms.Button
    Friend WithEvents ExportList As System.Windows.Forms.ListBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtStatus As System.Windows.Forms.Label

End Class
