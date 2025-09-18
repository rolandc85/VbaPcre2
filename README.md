# VbaPcre2
 PCRE2 Regular Expression (Regex) Library Wrapper for TwinBasic and Microsoft Visual Basic For Applications (VBA 32+64 bit)

This project inherits the source code from VbPcre2 of Mr. @jpbro

https://github.com/jpbro/VbPcre2

The project related licenses are clearly stated in the Repo.


-------------------------------------------------------------
### Project objectives
  Previously mentioned Mr. @jpbro:
  > The secondary goal of this project is to be a drop-in replacement for the VBScript.RegExp object.

  Also makes the Pcre2 library work in TwinBasic and VBA (Excel, Word, PowerPoint, Outlook Mail, ...)



### Outstanding features added to the project:

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
  Debug.Print "          Match count: "; m.count
  Debug.Print "           Match Text: "; m(0)
  Debug.Print "   Match - FirstIndex: "; m(0).FirstIndex
  Debug.Print "    Match - LastIndex: "; m(0).LastIndex
  Debug.Print "          SubMatch[1]: "; m(0).SubMatches(1)
  Debug.Print "SubMatch - FirstIndex: "; m(0).SubMatchFirstIndex(1)
  Debug.Print " SubMatch - LastIndex: "; m(0).SubMatchLastIndex(1)
  Debug.Print "  SubMatch['numbers']: "; m(0).SubMatches(re.IndexByName("numbers"))
End Sub
```
-------------------------------------------------------------
### Here are some common modern syntaxes in PCRE2, not found in VBScript.RegExp:
By leveraging the Pcre2 library, PCRE2 supports many modern syntaxes, including asymmetric groups ```((?>...))```, character class options (e.g., ```(?i)```), Unicode property alternative names ```(\p{...})```, nested options ```((?i:...))```, whitespace wildcards ```(\s)```, and time suffix types ```(\d{1,2})```.

+ Possessive Groups: ```(?>...)``` groups sub-expressions together without allowing backtracks, which improves performance.
+ Character class options: Use ```(?i)``` to enable case-insensitive mode in that sub-expression, ```(?m)``` for multi-line mode, and ```(?s)``` for viewing every character as part of a line.
+ Unicode property alternative names: Use ```\p{<name>}``` or ```\P{<name>}``` to match characters with specific Unicode properties (e.g., ```\p{Lu}``` for uppercase).
+ Nested Options: ```(?i:abc)``` applies case-insensitive options to that subgroup only.
+ Characters representing whitespace and words: ```\s``` matches any whitespace character (including non-ASCII characters), and \w matches any word character.
+ Time-based quantifiers: Allows you to quantify a sample over a given period of time.
+ Backreference separation: ```\1``` references the contents of the group capturing number 1.
- Positive Lookahead : ```(?=...)``` matches when the pattern followed by the pattern in parentheses.
- Negative Lookahead : ```(?!...)``` matches when the pattern that follows is not the pattern in parentheses.
- Positive Lookbehind : ```(?<=...)``` matches when the preceding pattern is the pattern in parentheses.
- Negative Lookbehind : ```(?<!...)``` matches when the preceding pattern is not the pattern in parentheses.
