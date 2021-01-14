//%attributes = {}
Form:C1466.mail:=New object:C1471

Form:C1466.mail.subject:="Append email to a mailbox with 4D"

Form:C1466.mail.textBody:="This email is saved on your mail server thanks to the IMAP_transporter.append( ) function."
Form:C1466.mail.htmlBody:="This email is saved on your mail server thanks to the IMAP_transporter.append( ) function."

Form:C1466.trace:=False:C215

Form:C1466.IMAP:=cs:C1710.IMAPServerInfo.new()
Form:C1466.transporter:=Null:C1517

OBJECT SET FONT:C164(*; "Password"; "%password")

ShowBoxInfo(False:C215)
