Attribute VB_Name = "Module2"
Sub WriteData()
    cols = "C:F"
    Columns(cols).ClearContents
    j = 1
    x = "Directory of "
    For i = 1 To Cells(Rows.Count, "A").End(xlUp).Row
        Cells(i, "A").Activate
        With ActiveCell
            s = .Formula
            If InStr(s, x) > 0 Then d = Mid(s, InStr(s, x) + Len(x))
            If IsDate(Left(s, 19)) = True Then
                With Cells(j, "C")
                    .Formula = d
                    .Offset(0, 1).Value = Left(s, 20)
                    .Offset(0, 2).Value = Trim(Mid(s, 21, 19))
                    .Offset(0, 3).Value = Mid(s, 40)
                End With
                j = j + 1
            End If
        End With
    Next i
    Columns(cols).EntireColumn.AutoFit
    [A1].Activate
End Sub
