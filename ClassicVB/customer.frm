VERSION 5.00
Begin VB.Form customer 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Customers"
   ClientHeight    =   6765
   ClientLeft      =   60
   ClientTop       =   165
   ClientWidth     =   11295
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6765
   ScaleWidth      =   11295
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00AAAD7E&
      Height          =   735
      Left            =   0
      ScaleHeight     =   675
      ScaleWidth      =   12795
      TabIndex        =   30
      Top             =   0
      Width           =   12855
      Begin VB.CommandButton Command9 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   7440
         Style           =   1  'Graphical
         TabIndex        =   40
         Top             =   120
         Width           =   825
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Save"
         Height          =   375
         Left            =   5400
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   120
         Width           =   825
      End
      Begin VB.CommandButton Command8 
         Caption         =   "Modify"
         Height          =   375
         Left            =   6360
         Style           =   1  'Graphical
         TabIndex        =   36
         Top             =   120
         Width           =   915
      End
      Begin VB.CommandButton Command1 
         Caption         =   "New"
         Height          =   375
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   120
         Width           =   615
      End
      Begin VB.CommandButton Command3 
         Caption         =   "List All"
         Height          =   375
         Left            =   9600
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   120
         Width           =   1035
      End
      Begin VB.CommandButton Command5 
         Caption         =   ">>"
         Height          =   375
         Left            =   10680
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   120
         Width           =   405
      End
      Begin VB.CommandButton Command4 
         Caption         =   "<<"
         Height          =   375
         Left            =   9120
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   120
         Width           =   435
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Master"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   31
         Top             =   120
         Width           =   5175
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Misc"
      Height          =   1065
      Left            =   120
      TabIndex        =   24
      Top             =   5520
      Width           =   11085
      Begin VB.TextBox bal 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2400
         TabIndex        =   27
         Top             =   630
         Width           =   1695
      End
      Begin VB.CheckBox types 
         Caption         =   "Types"
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   4560
         TabIndex        =   26
         Top             =   735
         Width           =   855
      End
      Begin VB.TextBox payment 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2400
         TabIndex        =   25
         Top             =   210
         Width           =   1695
      End
      Begin VB.Label Label10 
         Caption         =   "Balance"
         Height          =   195
         Left            =   720
         TabIndex        =   29
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label12 
         Caption         =   "Payment"
         Height          =   195
         Left            =   720
         TabIndex        =   28
         Top             =   315
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Details"
      Height          =   4650
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   11055
      Begin VB.CommandButton Command7 
         Caption         =   "Reports"
         Height          =   375
         Left            =   9480
         Style           =   1  'Graphical
         TabIndex        =   39
         Top             =   840
         Width           =   1035
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Query"
         Height          =   375
         Left            =   9480
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   360
         Width           =   1065
      End
      Begin VB.TextBox cno 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   12
         Top             =   555
         Width           =   1695
      End
      Begin VB.TextBox cardno 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   11
         Top             =   930
         Width           =   1695
      End
      Begin VB.TextBox cname 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   10
         Top             =   1335
         Width           =   3330
      End
      Begin VB.TextBox society 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   9
         Top             =   1755
         Width           =   3330
      End
      Begin VB.TextBox Building 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   8
         Top             =   2175
         Width           =   3345
      End
      Begin VB.TextBox floor 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   7
         Top             =   2580
         Width           =   3345
      End
      Begin VB.TextBox phone 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   7530
         TabIndex        =   6
         Top             =   2985
         Width           =   2955
      End
      Begin VB.TextBox area 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   7515
         TabIndex        =   5
         Top             =   2565
         Width           =   2955
      End
      Begin VB.TextBox city 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   2310
         TabIndex        =   4
         Top             =   3015
         Width           =   3345
      End
      Begin VB.TextBox remark 
         ForeColor       =   &H00FF0000&
         Height          =   1005
         Left            =   2310
         TabIndex        =   3
         Top             =   3435
         Width           =   8220
      End
      Begin VB.TextBox wing 
         ForeColor       =   &H00FF0000&
         Height          =   315
         Left            =   7500
         TabIndex        =   2
         Top             =   2160
         Width           =   2985
      End
      Begin VB.Label Label5 
         Caption         =   "Customer No"
         Height          =   195
         Left            =   630
         TabIndex        =   23
         Top             =   660
         Width           =   1215
      End
      Begin VB.Label Label6 
         Caption         =   "Card Number"
         Height          =   195
         Left            =   630
         TabIndex        =   22
         Top             =   1050
         Width           =   1215
      End
      Begin VB.Label Label7 
         Caption         =   "Customer Name"
         Height          =   195
         Left            =   630
         TabIndex        =   21
         Top             =   1440
         Width           =   1425
      End
      Begin VB.Label Label1 
         Caption         =   "Socitey"
         Height          =   195
         Left            =   630
         TabIndex        =   20
         Top             =   1860
         Width           =   1215
      End
      Begin VB.Label Label2 
         Caption         =   "Bulding"
         Height          =   195
         Left            =   630
         TabIndex        =   19
         Top             =   2280
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Floor"
         Height          =   195
         Left            =   630
         TabIndex        =   18
         Top             =   2700
         Width           =   1215
      End
      Begin VB.Label Label4 
         Caption         =   "Phone"
         Height          =   195
         Left            =   5910
         TabIndex        =   17
         Top             =   3090
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "Area"
         Height          =   195
         Left            =   5910
         TabIndex        =   16
         Top             =   2670
         Width           =   1215
      End
      Begin VB.Label Label9 
         Caption         =   "City"
         Height          =   195
         Left            =   630
         TabIndex        =   15
         Top             =   3120
         Width           =   1215
      End
      Begin VB.Label Label11 
         Caption         =   "Remark"
         Height          =   195
         Left            =   630
         TabIndex        =   14
         Top             =   3540
         Width           =   1215
      End
      Begin VB.Label Label13 
         Caption         =   "Wing"
         Height          =   195
         Left            =   5910
         TabIndex        =   13
         Top             =   2280
         Width           =   1215
      End
   End
   Begin VB.TextBox status 
      BackColor       =   &H00808080&
      Height          =   330
      Left            =   5850
      TabIndex        =   0
      Top             =   765
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Enabled         =   0   'False
      Visible         =   0   'False
      Begin VB.Menu new 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu save 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu edit 
         Caption         =   "&Edit"
         Shortcut        =   ^M
      End
      Begin VB.Menu load 
         Caption         =   "&load"
         Shortcut        =   ^L
      End
      Begin VB.Menu viewall 
         Caption         =   "&View All"
         Shortcut        =   ^A
      End
      Begin VB.Menu up 
         Caption         =   "&Up"
         Shortcut        =   ^U
      End
      Begin VB.Menu down 
         Caption         =   "&Down"
         Shortcut        =   ^D
      End
      Begin VB.Menu qry 
         Caption         =   "&Qry"
         Shortcut        =   ^Q
      End
      Begin VB.Menu report 
         Caption         =   "&Report"
         Shortcut        =   ^R
      End
   End
End
Attribute VB_Name = "customer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cmode As String
Dim rsc As ADODB.Recordset
'
'Private Sub ck_Click(Index As Integer)
'If ck(Index).Value = 1 Then
'For i = 0 To 11
'tk(i).Visible = False
'If Index <> i Then
'ck(i).Value = 0
'End If
'Next i
'tk(Index).Visible = True
'End If
'End Sub

Private Sub Command1_Click()
new_Click
End Sub

Private Sub Command2_Click()
save_Click
End Sub

Private Sub Command3_Click()
viewall_Click
End Sub

Private Sub Command4_Click()
up_Click
End Sub

Private Sub Command5_Click()
down_Click
End Sub

Private Sub Command6_Click()
qry_Click
End Sub

Private Sub Command7_Click()
report_Click
End Sub

Private Sub Command8_Click()
edit_Click
End Sub

Private Sub Command9_Click()

viewall_Click
End Sub

Private Sub down_Click()
If cmode = "viewopen" Then
On Error Resume Next
rsc.MoveNext
If Not rsc.EOF Then
    clearall
    cno = rsc!cno
    cardno = rsc!cardno
    cname = rsc!cname
    society = rsc!society
    Building = rsc!Building
    floor = rsc!floor
    phone = rsc!phone
    area = rsc!area
    city = rsc!city
    bal = rsc!bal
    Remark = rsc!Remark
    types = rsc!types
    payment = rsc!payment
    wing = rsc!wing
Else
    MsgBox "No records to scroll down", vbInformation
End If
Else
    MsgBox "PLEASE CLICK VIEW ALL RECORDS THEN CLICK ME", vbInformation, "CB"
End If
End Sub

Private Sub edit_Click()
unlocks
cno.Enabled = False
cmode = "edit"
Command8.Enabled = False 'modify
Command1.Enabled = False 'new

Command3.Enabled = False 'list all
Command4.Enabled = False 'forward
Command5.Enabled = False 'backward

Command6.Enabled = False 'query
Command7.Enabled = False 'report

Command2.Enabled = True 'save
Command9.Enabled = True 'cancel
End Sub

Private Sub Form_Load()
Set rsc = New ADODB.Recordset
db.Execute "delete * from buffer"
'db.Execute "INSERT INTO buffer SELECT [duelist].[cno] AS cno, [due]-[paid] AS payable, [start] AS startdate, [lcreatedon] AS enddate FROM duelist INNER JOIN paidlist ON [duelist].[cno]=[paidlist].[cno];"
'db.Execute "INSERT INTO buffer SELECT duelist.cno AS cno, [due]-iif(isnull([paid]),0,paid) AS payable, duelist.start AS startdate, paidlist.lcreatedon AS enddate FROM duelist LEFT JOIN paidlist ON duelist.cno = paidlist.cno;"
db.Execute "insert into buffer SELECT duelist.cno AS cno, [due]-iif(isnull([paid]),0,paid) AS payable, duelist.start AS startdate, format(iif(isdate(paidlist.lcreatedon),paidlist.lcreatedon,duelist.start),'dd-mmm-yyyy') AS enddate  FROM duelist LEFT JOIN paidlist ON duelist.cno = paidlist.cno;"
db.Execute "UPDATE cmst INNER JOIN buffer ON [cmst].[CNo]=buffer.cno SET cmst.Bal = buffer.payable;"
locks
Command8.Enabled = False 'modify
Command1.Enabled = True 'new

Command3.Enabled = True 'list all
Command4.Enabled = True 'forward
Command5.Enabled = True 'backward

Command6.Enabled = True 'query
Command7.Enabled = True 'report

Command2.Enabled = False 'save
Command9.Enabled = False 'cancel
End Sub

Private Sub fresh_Click()
adof.RecordSource = "tmpcmst"
adof.Refresh
GVIEW.Refresh

End Sub

Private Sub load_Click()
On Error Resume Next
clearall
cno = InputBox("enter cno")
Dim rscno As ADODB.Recordset
Set rscno = New ADODB.Recordset
rscno.Open "select * from cmst where cno = " & cno, db
If Not rscno.EOF Then
cno = rscno!cno
cardno = rscno!cardno
cname = rscno!cname
society = rscno!society
Building = rscno!Building
floor = rscno!floor
phone = rscno!phone
area = rscno!area
city = rscno!city
bal = rscno!bal
Remark = rscno!Remark
types = rscno!types
payment = rsno!payment
Else
    cno = 1
End If
rscno.Close
locks

End Sub

Private Sub new_Click()
clearall

cmode = "new"
unlocks
Dim rscno As ADODB.Recordset
Set rscno = New ADODB.Recordset
rscno.Open "select max(Cno) + 1 as cmax from cmst", db
If Not rscno.EOF Then
    cno = rscno!cmax
Else
    cno = 1
End If
rscno.Close
cno.Enabled = False
cardno.SetFocus

Command8.Enabled = False 'modify
Command1.Enabled = False 'new

Command3.Enabled = False 'list all
Command4.Enabled = False 'forward
Command5.Enabled = False 'backward

Command6.Enabled = False 'query
Command7.Enabled = False 'report

Command2.Enabled = True 'save
Command9.Enabled = True 'cancel

End Sub

Private Sub qry_Click()
On Error Resume Next
Dim qtype As Integer
qtype = InputBox("1 cno" & vbCr & "2 cardno" & vbCr & "3 cname" & vbCr & _
"4 society" & vbCr & "5 Building" & vbCr & "6 Floor" & vbCr & "7 Phone" & vbCr & _
"8 Area " & vbCr & "9 City" & vbCr & "10 ModifiedBy" & vbCr & "11 Modified Date" & vbCr & _
"12 Remark" & vbCr & "13 payment" & "14 Wing", "Search")
If (qtype = 0) Then Exit Sub
Values = InputBox("Enter Value")
If (Values = "") Then Exit Sub
Select Case qtype
Case 1
sql = "select * from cmst where cno = " & Values
Case 2
sql = "select * from cmst where cardno like '%" & Values & "%'"
Case 3
sql = "select * from cmst where cname like '%" & Values & "%'"
Case 4
sql = "select * from cmst where society like '%" & Values & "%'"
Case 5
sql = "select * from cmst where building like '%" & Values & "%'"
Case 6
sql = "select * from cmst where floor like '%" & Values & "%'"
Case 7
sql = "select * from cmst where phone like '%" & Values & "%'"
Case 8
sql = "select * from cmst where area like '%" & Values & "%'"
Case 9
sql = "select * from cmst where city like '%" & Values & "%'"
Case 10
sql = "select * from cmst where modifiedby like '%" & Values & "%'"
Case 11
sql = "select * from cmst where modifiedon like #" & Values & "#"
Case 12
sql = "select * from cmst where remark like '%" & Values & "%'"
Case 13
sql = "select * from cmst where payment like " & Values & ""
Case 14
sql = "select * from cmst where wing like '%" & Values & "%'"
End Select
jump:
    If cmode = "viewopen" Then
    rsc.Close
    End If

    rsc.Open sql, db, adOpenDynamic, adLockOptimistic
    
    If Err.Number = 3705 Then
    Err.Clear
    rsc.Close
    GoTo jump
    End If
 If Not rsc.EOF Then
    cno = rsc!cno
    cardno = rsc!cardno
    cname = rsc!cname
    society = rsc!society
    Building = rsc!Building
    floor = rsc!floor
    phone = rsc!phone
    area = rsc!area
    city = rsc!city
    bal = rsc!bal
    Remark = rsc!Remark
    types = rsc!types
    payment = rsc!payment
    wing = rsc!wing
End If
cmode = "viewopen"
Exit Sub
errh:
MsgBox Err.Description
End Sub

Private Sub report_Click()
On Error Resume Next
Dim qtype As Integer
qtype = InputBox("1 cno" & vbCr & "2 cardno" & vbCr & "3 cname" & vbCr & _
"4 society" & vbCr & "5 Building" & vbCr & "6 Floor" & vbCr & "7 Phone" & vbCr & _
"8 Area " & vbCr & "9 City" & vbCr & "10 ModifiedBy" & vbCr & "11 Modified Date" & vbCr & _
"12 Remark" & vbCr & "13 payment" & vbCr & "14 Wing", "Search")
If (qtype = 0) Then Exit Sub
Values = InputBox("Enter Value")
If (Values = "") Then Exit Sub
Select Case qtype
Case 1
sql = "select * from cmst where cno = " & Values
Case 2
sql = "select * from cmst where cardno like '%" & Values & "%'"
Case 3
sql = "select * from cmst where cname like '%" & Values & "%'"
Case 4
sql = "select * from cmst where society like '%" & Values & "%'"
Case 5
sql = "select * from cmst where building like '%" & Values & "%'"
Case 6
sql = "select * from cmst where floor like '%" & Values & "%'"
Case 7
sql = "select * from cmst where phone like '%" & Values & "%'"
Case 8
sql = "select * from cmst where area like '%" & Values & "%'"
Case 9
sql = "select * from cmst where city like '%" & Values & "%'"
Case 10
sql = "select * from cmst where modifiedby like '%" & Values & "%'"
Case 11
sql = "select * from cmst where modifiedon like #" & Values & "#"
Case 12
sql = "select * from cmst where remark like '%" & Values & "%'"
Case 13
sql = "select * from cmst where payment like " & Values & ""
Case 14
sql = "select * from cmst where wing like '%" & Values & "%'"
End Select
jump:
db.Execute "drop view qry"
db.Execute "Create View Qry As " + sql
dr.Show
Exit Sub
errh:
MsgBox Err.Description

End Sub

Private Sub save_Click()
On Error GoTo errh
If cmode = "new" Then
createdby = uname
modifiedby = uname
db.Execute "INSERT INTO cmst ( cno, cardno, cname, society, building, floor, phone, area, city, createdby, modifiedby, createdon, modifiedon, bal, remark, types ,payment,wing)VALUES (" & cno & ", '" & cardno & "', '" & cname & "', '" & society & "', '" & Building & "', '" & floor & "', '" & phone & "', '" & area & "', '" & city & "', '" & createdby & "', '" & modifiedby & "', now(), now(), 0, '" & Remark & "', " & types.Value & "," & payment & ",'" & wing & "');"
cmode = "save"
End If
If cmode = "edit" Then
modifiedby = uname
db.Execute "UPDATE cmst SET cardno = '" & cardno & "', cname = '" & cname & "', society = '" & society & "', building = '" & Building & "', floor = '" & floor & "', phone = '" & phone & "', area = '" & area & "', city = '" & city & "', modifiedby = '" & modifiedby & "', modifiedon = now(), remark = '" & Remark & "', types = " & types.Value & ", payment = " & payment & ",wing='" & wing & "' WHERE cno=" & cno & ";"
cmode = "save"
End If
locks
Command8.Enabled = True 'modify
Command1.Enabled = True 'new

Command3.Enabled = True 'list all
Command4.Enabled = True 'forward
Command5.Enabled = True 'backward

Command6.Enabled = True 'query
Command7.Enabled = True 'report

Command2.Enabled = False 'save
Command9.Enabled = False 'cancel
Exit Sub
errh:
MsgBox Err.Description, vbInformation, "CB"
Exit Sub
End Sub

Private Sub update_Click()

cmode = "update"
End Sub

Sub locks()
cno.Enabled = False
cardno.Enabled = False
cname.Enabled = False
society.Enabled = False
Building.Enabled = False
floor.Enabled = False
phone.Enabled = False
area.Enabled = False
city.Enabled = False
bal.Enabled = False
Remark.Enabled = False
types.Enabled = False
payment.Enabled = False
wing.Enabled = False
End Sub
Sub unlocks()
cno.Enabled = True
cardno.Enabled = True
cname.Enabled = True
society.Enabled = True
Building.Enabled = True
floor.Enabled = True
phone.Enabled = True
area.Enabled = True
city.Enabled = True
bal.Enabled = True
Remark.Enabled = True
types.Enabled = True
payment.Enabled = True
wing.Enabled = True
End Sub
Sub clearall()
cno = ""
cname = ""
cardno = ""
society = ""
Building = ""
floor = ""
phone = ""
area = ""
city = ""
Remark = ""
bal = ""
payment = ""
wing = ""
types.Value = 0
End Sub

Private Sub SSTab1_Click(PreviousTab As Integer)

End Sub

Private Sub SSTab1_DblClick()

End Sub

Private Sub sellist_Click()
For i = 0 To sellist.ListCount - 1
    If sellist.Selected(i) = True Then
     strs = strs & "," & sellist.List(i)
    End If
Next i
If Len(strs) Then
db.Execute "drop table tmpcmst"
db.Execute "select " & Right(strs, Len(strs) - 1) & " into tmpcmst from cmst"
End If
End Sub

Private Sub stb_Click(PreviousTab As Integer)
Dim a(12) As String
If stb.Tab = 1 Then
a(1) = "Customer No"
a(2) = "Card Number"
a(3) = "Customer Name"
a(4) = "Society"
a(5) = "Building"
a(6) = "Floor"
a(7) = "City"
a(8) = "Remark"
a(9) = "Wing"
a(10) = "Area"
a(11) = "Phone"
a(12) = "Payment"
'ck(0).Caption = a(1)
'ck(1).Caption = a(2)
'ck(2).Caption = a(3)
'ck(3).Caption = a(4)
'ck(4).Caption = a(5)
'ck(5).Caption = a(6)
'ck(6).Caption = a(7)
'ck(7).Caption = a(8)
'ck(8).Caption = a(9)
'ck(9).Caption = a(10)
'ck(10).Caption = a(11)
'ck(11).Caption = a(12)
'For i = 0 To 11
'tk(i).Visible = False
'Next i
End If
db.Execute "drop table tmpcmst"
db.Execute "select * into tmpcmst from cmst"
End Sub

Private Sub tk_KeyPress(Index As Integer, KeyAscii As Integer)
'If KeyAscii = 13 Then
'Values = tk(Index)
'Select Case Index
''A(1) = "Customer No"
''A(2) = "Card Number"
''A(3) = "Customer Name"
''A(4) = "Society"
''A(5) = "Building"
''A(6) = "Floor"
''A(7) = "City"
''A(8) = "Remark"
''A(9) = "Wing"
''A(10) = "Area"
''A(11) = "Phone"
''A(12) = "Payment"
'
'Case 1
'sql = "select * into tmp2  from tmpcmst where cno = " & Values
'Case 1
'sql = "select * into tmp2  from tmpcmst where cardno like '%" & Values & "%'"
'Case 2
'sql = "select * into tmp2  from tmpcmst where cname like '%" & Values & "%'"
'Case 3
'sql = "select * into tmp2  from tmpcmst where society like '%" & Values & "%'"
'Case 4
'sql = "select * into tmp2  from tmpcmst where building like '%" & Values & "%'"
'Case 5
'sql = "select * into tmp2  from tmpcmst where floor like '%" & Values & "%'"
'Case 6
'sql = "select * into tmp2  from tmpcmst where phone like '%" & Values & "%'"
'Case 7
'sql = "select * into tmp2  from tmpcmst where area like '%" & Values & "%'"
'Case 8
'sql = "select * into tmp2  from tmpcmst where city like '%" & Values & "%'"
'Case 9
'sql = "select * into tmp2  from tmpcmst where modifiedby like '%" & Values & "%'"
'Case 11
'sql = "select * into tmp2  from tmpcmst where modifiedon like #" & Values & "#"
'Case 12
'sql = "select * into tmp2  from tmpcmst where remark like '%" & Values & "%'"
'Case 13
'sql = "select * into tmp2  from tmpcmst where payment like " & Values & ""
'Case 14
'sql = "select * into tmp2  from tmpcmst where wing like '%" & Values & "%'"
'End Select
'db.Execute "drop table tmp2"
'db.Execute sql
'db.Execute "delete from tmpcmst"
'db.Execute "insert into tmpcmst select * from tmp2"
'MsgBox "COMPLETED CLICK REFRESH TO VIEW RESULTS", vbInformation
'End If
End Sub

Private Sub up_Click()
If cmode = "viewopen" Then
On Error Resume Next
rsc.MovePrevious
If Not rsc.BOF Then
    clearall
    
    cno = rsc!cno
    cardno = rsc!cardno
    cname = rsc!cname
    society = rsc!society
    Building = rsc!Building
    floor = rsc!floor
    phone = rsc!phone
    area = rsc!area
    city = rsc!city
    bal = rsc!bal
    Remark = rsc!Remark
    types = rsc!types
    payment = rsc!payment
    wing = rsc!wing
Else
    MsgBox "No records to scroll up", vbInformation
End If
Else
    MsgBox "PLEASE CLICK VIEW ALL RECORDS THEN CLICK ME", vbInformation, "CB"
End If
End Sub

Private Sub viewall_Click()
On Error Resume Next
rsc.Open "select count(*) as cmax from cmst", db, adOpenDynamic, adLockOptimistic
If Not rsc.EOF Then
    status = rsc!cmax
    rsc.Close
    rsc.Open "select * from cmst", db, adOpenDynamic, adLockOptimistic
    cno = rsc!cno
    cardno = rsc!cardno
    cname = rsc!cname
    society = rsc!society
    Building = rsc!Building
    floor = rsc!floor
    phone = rsc!phone
    area = rsc!area
    city = rsc!city
    bal = rsc!bal
    Remark = rsc!Remark
    types = rsc!types
    payment = rsc!payment
    wing = rsc!wing
    Command8.Enabled = True 'modify
    Command1.Enabled = True 'new
    
    Command3.Enabled = True 'list all
    Command4.Enabled = True 'forward
    Command5.Enabled = True 'backward
    
    Command6.Enabled = True 'query
    Command7.Enabled = True 'report
    
    Command2.Enabled = False 'save
    Command9.Enabled = False 'cancel
    Command8.Enabled = True 'modify
    locks
End If
cmode = "viewopen"
End Sub

