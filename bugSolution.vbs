Explicitly declare functions and specify return types.  Avoid implicit type conversions. 
Corrected code:
```vbscript
Option Explicit 'Always a good practice

Sub Main
  Dim result As Integer
  result = myFunc(5) 
  MsgBox result
End Sub

Function myFunc(x As Integer) As Integer
  myFunc = x * 2
End Function
```
The `Option Explicit` statement forces you to declare all variables which helps prevent typos and undefined variables.  Explicitly defining the data types of both the function arguments and the return value improves code readability, maintainability, and reduces the risk of unexpected type conversions.