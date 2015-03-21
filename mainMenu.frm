VERSION 5.00
Begin VB.Form mainMenu 
   Appearance      =   0  'Flat
   BackColor       =   &H00503E2C&
   BorderStyle     =   0  'None
   Caption         =   "TTmagic"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5910
   BeginProperty Font 
      Name            =   ".VnAvant"
      Size            =   15.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9000
   ScaleMode       =   0  'User
   ScaleWidth      =   6000
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image btnexit 
      Height          =   885
      Left            =   3240
      Picture         =   "mainMenu.frx":0000
      Top             =   5520
      Width           =   1800
   End
   Begin VB.Image about 
      Height          =   885
      Left            =   960
      Picture         =   "mainMenu.frx":02DC
      Top             =   5520
      Width           =   1800
   End
   Begin VB.Image play 
      Height          =   1335
      Left            =   1680
      Picture         =   "mainMenu.frx":0597
      Top             =   3840
      Width           =   2700
   End
   Begin VB.Image Image4 
      Height          =   2190
      Left            =   1800
      Picture         =   "mainMenu.frx":09E6
      Top             =   600
      Width           =   3390
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00503E2C&
      Caption         =   "MATH"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   39.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   3240
      TabIndex        =   2
      Top             =   2520
      Width           =   2415
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00503E2C&
      Caption         =   "Mét s¶n phÈm nh¸i cña TTmagic :v"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   8640
      Width           =   5895
   End
   Begin VB.Image exitpressed 
      Height          =   885
      Left            =   3240
      Picture         =   "mainMenu.frx":103E
      Top             =   5520
      Width           =   1800
   End
   Begin VB.Image aboutpressed 
      Height          =   885
      Left            =   960
      Picture         =   "mainMenu.frx":1319
      Top             =   5520
      Width           =   1800
   End
   Begin VB.Image playpressed 
      Height          =   1335
      Left            =   1680
      Picture         =   "mainMenu.frx":15D3
      Top             =   3840
      Width           =   2700
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00503E2C&
      Caption         =   "Freaking"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   2640
      Width           =   3495
   End
End
Attribute VB_Name = "mainMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub about_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
about.Visible = False
End Sub

Private Sub about_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
MsgBox "Made by Nguyen Thanh Tung - TH18.17", vbOKOnly, "About"
about.Visible = True
End Sub


Private Sub btnexit_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
btnexit.Visible = False
End Sub

Private Sub btnexit_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
btnexit.Visible = True
Unload mainMenu
Unload game
Unload gameover

End Sub

Private Sub play_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
play.Visible = False
End Sub

Private Sub play_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
game.Show
play.Visible = True
End Sub
