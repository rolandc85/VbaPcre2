# VbaPcre2
 PCRE2 Regular Expression (Regex) Library Wrapper for Microsoft Visual Basic For Applications (VBA 32+64 bit))

This project inherits the source code from VbPcre2 of Mr. @jpbro

https://github.com/jpbro/VbPcre2

The project related licenses are clearly stated in the Repo.




-------------------------------------------------------------
#### Project objectives
  Previously mentioned Mr. @jpbro:
  > The secondary goal of this project is to be a drop-in replacement for the VBSscript RegExp object.

Also makes the Pcre2 library work in TwinBasic and VBA (Excel, Word, PowerPoint, Outlook Mail, ...)

#### Outstanding features added to the project:

- Inherit the syntax ```SubMatches``` instead of ```SubMatchValue```
- Add string retrieval from named group with position return function ```IndexByName``` in IRegExp Class, return position in group ```SubMatches```

#### VBA Example Code:

```VBA
Sub test1()
  Dim re As IRegExp, m As Object
  Set re = New IRegExp
  re.Pattern = "(?<numbers>123).+?(?<chars>abc).+?(?<sign>@@@)"
  re.GlobalSearch = True
  Set m = re.Execute("123  abc  @@@")
  Debug.Print "        Match count: "; m.count
  Debug.Print "         Match Text: "; m(0)
  Debug.Print "        SubMatch[1]: "; m(0).SubMatches(1)
  Debug.Print "SubMatch['numbers']: "; m(0).SubMatches(re.IndexByName("numbers"))
End Sub
```
