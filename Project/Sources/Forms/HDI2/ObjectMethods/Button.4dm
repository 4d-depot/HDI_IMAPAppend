var $status; $mailboxName : Object
var $itemID : Integer

If (Form:C1466.trace)
	TRACE:C157
End if 
If (Is a list:C621(ListRef))
	$itemID:=Selected list items:C379(ListRef; $arr; *)
	
	// search the box information of the selected box
	$mailboxName:=Form:C1466.mailboxes.search($itemID)
	
	Form:C1466.mail.keywords:=New object:C1471
	If (Bool:C1537(Form:C1466.mail.isDraft))
		Form:C1466.mail.keywords["$draft"]:=True:C214
	End if 
	
	$status:=Form:C1466.transporter.append(Form:C1466.mail; $mailboxName.name)
	If ($status.success)
		ALERT:C41("Email saved")
	Else 
		ALERT:C41("Error: "+$status.statusText)
	End if 
End if 
