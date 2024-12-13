Function used without declaration or explicit type definition: In VBScript, if you use a function without explicitly declaring it or specifying its return type, VBScript might implicitly create a variant function which can lead to unexpected type coercion or errors during runtime. This is especially problematic if the function is expected to return a specific type. 
Example:
```vbscript
Sub Main
  Dim result
  result = myFunc(5) 'myFunc is not declared
  MsgBox result
End Sub

Function myFunc(x)
  myFunc = x * 2
End Function
```
This code may work, but the implicit type conversion can be problematic if myFunc needs to return a specific type. A better practice would be to explicitly define the function like this:
```vbscript
Function myFunc(x)
  myFunc = CInt(x * 2) 'Explicitly return an integer
End Function
```