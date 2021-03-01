; ---------
; Useful AutoHotkey actions collected by Witold Firlej.
; Blog posts in polish at https://grizz.pl/tags/ahk/
; ---------

;; --------- hotstrings -------

::]gm::Good morning! ;; Good morning!

::]h:: ;;hi - with empty line after
  (
  hi,

  )

::]p:: ;;regards Jk
  (

  Regards
  Jan Kowaski
  )
  :*:@@::Jan.Kowalski@mojadomena12.pl ;; mail - :*: expand imediately 

  ::btw::by the way
  ::imho::in my humble opinion
  ::asap::as soon as possible

  ;; --------- polish hotstrings -------
  ::atp::a tak przy okazji
  ::oidp::o ile dobrze pamiętam
  ::mz::moim zdaniem

  ;; --------- technical hotstrings -------
  ::]ps::<!-- PELICAN_BEGIN_SUMMARY --> 

::---::	;;72 dashes
  (
  ------------------------------------------------------------------------
  )
  ; It's faster than Send, {- 72}

::]r::[COLOR="{#}FF0000"][/COLOR]‎{Left 8} ;; add bbcode tags and move cursor backward

::]q::
  Send [QUOTE]^v[/QUOTE] ;; paste clipboard content between tags

::]pj:: ;; paste clipboard content on journal format
  {
    SendRaw, `n`n`b### %A_Hour%:%A_Min%`n`t%Clipboard%
  }
Return


  ;; ;;------------ date and time ------- https://www.autohotkey.com/docs/commands/FormatTime.htm
::]te::	;; 18-07-2015 17:24
  FormatTime, CurrentDateTime,, dd.MM.yyyy r. HH:mm
  SendInput %CurrentDateTime%
return 
::]ter:: ;; 2015-07-18 17:24
  FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm
  SendInput %CurrentDateTime%
return 
::]dz:: ;; 18-07-2015
  FormatTime, CurrentDateTime,, dd.MM.yyyy r.
  SendInput %CurrentDateTime%
return
::]dzr:: ;; 2015-07-18
  FormatTime, CurrentDateTime,, yyyy-MM-dd
  SendInput %CurrentDateTime%
return
::]h:: ;; HH:mm
  FormatTime, CurrentDateTime,, HH:mm
  SendInput %CurrentDateTime%
return

;; there are some bulit in date time variables https://www.autohotkey.com/docs/Variables.htm#date

::]ww::	;;journal entry 
  {
    SendRaw, `n`n`b### %A_Hour%:%A_Min%`n`t
  }
Return

;; --------- hotkeys -------

!.:: ;; … ellipsis 
  Send …
Return

F1::Send {Ctrl Down}{PgUp}{Ctrl Up} ;;previous browser tab
