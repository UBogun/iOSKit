#tag IOSView
Begin iosView EmailView
   BackButtonTitle =   ""
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Send an Email"
   Top             =   0
   Begin UIKit.MFMailComposeViewController MFMailComposeViewController1
      automaticallyAdjustsScrollViewInsets=   False
      definesPresentationContext=   False
      editing         =   False
      extendedLayoutIncludesOpaqueBars=   False
      hidesBottomBarWhenPushed=   False
      Left            =   60
      LockedInPosition=   False
      modalInPopover  =   False
      modalPresentationCapturesStatusBarAppearance=   False
      PanelIndex      =   -1
      Parent          =   ""
      providesPresentationContextTransitionStyle=   False
      Scope           =   1
      Top             =   60
   End
   Begin iOSButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 9, <Parent>, 9, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Button1, 7, , 0, False, +1.00, 1, 1, 100, 
      AutoLayout      =   Button1, 3, <Parent>, 3, False, +1.00, 1, 1, 176, 
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 1, 1, 30, 
      Caption         =   "Send Message"
      Enabled         =   True
      Height          =   30.0
      Left            =   110
      LockedInPosition=   False
      Scope           =   0
      TextColor       =   &c007AFF00
      TextFont        =   ""
      TextSize        =   0
      Top             =   176
      Visible         =   True
      Width           =   100.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Property, Flags = &h21
		Private p As iOSImage
	#tag EndProperty


#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Action()
		  MFMailComposeViewController1.setToRecipients Array("email@example.com")
		  MFMailComposeViewController1.setCcRecipients Array("email@example.com")
		  MFMailComposeViewController1.setBccRecipients Array("email@example.com")
		  MFMailComposeViewController1.setSubject "This is a sample email"
		  
		  if UIKit.MFMailComposeViewController.canSendMail then
		    MFMailComposeViewController1.PresentInView(self)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
