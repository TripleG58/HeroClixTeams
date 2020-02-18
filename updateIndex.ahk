#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileDelete, index.html
FileAppend % list_files(A_ScriptDir), index.html

list_files(Directory)
{
	files =
	Loop %Directory%\teams\*.*
	{
		files = %files%`n<a href="teams/%A_LoopFileName%">%A_LoopFileName%</a><br>
	}
	return files
}