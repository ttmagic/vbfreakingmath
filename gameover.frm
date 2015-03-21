VERSION 5.00
Begin VB.Form gameover 
   BackColor       =   &H00503E2C&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4995
   BeginProperty Font 
      Name            =   ".VnAvant"
      Size            =   15.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   3495
   ScaleWidth      =   4995
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image menu 
      Height          =   885
      Left            =   2760
      Picture         =   "gameover.frx":0000
      Top             =   2280
      Width           =   1800
   End
   Begin VB.Image play 
      Height          =   885
      Left            =   480
      Picture         =   "gameover.frx":01F7
      Top             =   2280
      Width           =   1800
   End
   Begin VB.Image menupressed 
      Height          =   885
      Left            =   2760
      Picture         =   "gameover.frx":05AE
      Top             =   2280
      Width           =   1800
   End
   Begin VB.Image playpressed 
      Height          =   885
      Left            =   480
      Picture         =   "gameover.frx":087F
      Top             =   2280
      Width           =   1800
   End
   Begin VB.Label Label4 
      BackColor       =   &H00503E2C&
      Caption         =   "Best"
      ForeColor       =   &H00989898&
      Height          =   375
      Left            =   720
      TabIndex        =   4
      Top             =   1560
      Width           =   855
   End
   Begin VB.Label lbl2 
      BackColor       =   &H00503E2C&
      Caption         =   "69"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C1FF&
      Height          =   615
      Left            =   1680
      TabIndex        =   3
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label lbl1 
      BackColor       =   &H00503E2C&
      Caption         =   "69"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C1FF&
      Height          =   615
      Left            =   1680
      TabIndex        =   2
      Top             =   720
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H00503E2C&
      Caption         =   "New"
      ForeColor       =   &H00989898&
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00503E2C&
      Caption         =   "Game Over"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5055
   End
End
Attribute VB_Name = "gameover"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub menu_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
menu.Visible = False
gameover.Hide
Unload game
End Sub

Private Sub menu_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
menu.Visible = True
End Sub


Private Sub play_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
play.Visible = False
gameover.Hide
Unload game
Load game
game.Show
End Sub

Private Sub play_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
play.Visible = True
End Sub
