Option Explicit

Dim objFSO, objFolder, objFile
Dim strContent, strPath
Const ForReading = 1, ForWriting = 2

' This file reads all .md files

Set objFSO = CreateObject("Scripting.FileSystemObject")

' ####### First call on readme ##################
ReplaceText "Readme.md", ".ipynb", ".md"

' ####### Second call on initial folder ##################
set objFolder = objFSO.GetFolder("INIT")
For Each objFile In objFolder.Files
    If UCase(objFSO.GetExtensionName(objFile.Name)) = "MD" Then
        ReplaceText objFile.Path, ".ipynb", ".md"
    End If
Next

' ####### Third call on data folder ##################
set objFolder = objFSO.GetFolder("DATA")
For Each objFile In objFolder.Files
    If UCase(objFSO.GetExtensionName(objFile.Name)) = "MD" Then
        ReplaceText objFile.Path, ".ipynb", ".md"
    End If
Next

' ####### Last call on processing folder ##################
set objFolder = objFSO.GetFolder("PROC")
For Each objFile In objFolder.Files
    If UCase(objFSO.GetExtensionName(objFile.Name)) = "MD" Then
        ReplaceText objFile.Path, ".ipynb", ".md"
    End If
Next

'Clean up
Set objFolder = Nothing
Set objFSO = Nothing

MsgBox "Done!"

' ################ Functions #############################

Function ReplaceText(strPath, strOldText, strNewText)
	Set objFile = objFSO.OpenTextFile(strPath, ForReading)
	strContent = objFile.ReadAll
	objFile.Close
	If InStr(strContent, strOldText) > 0 Then
		strNewText = Replace(strContent, strOldText, strNewText)
		Set objFile = objFSO.OpenTextFile(strPath, ForWriting)
		objFile.Write strNewText  'WriteLine adds extra CR/LF
		objFile.Close
	End If
End Function
