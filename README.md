# files-list
VBA Import from CMD Directory listing text file

- jbus-dir.bat
  - run in CMD with no parameters for usage prompts
  - outputs Windows directory including subfolders to files-list.txt
  - open in a text editor such as Notepad to see the batch code
  - the core command line statement is DIR /S

- file-list-WriteData.bas
  - create new Excel macro-enabled workbook, import to module
    - Alt+F11 opens the Visual Basic Editor
    - right click on the project, select Import File, navigate and select
    - File/SaveAs a macro-enabled workbook (.xlsm or .xlsb)

- files-list.txt
  - sample output from jbus-dir.bat
  - ** OR ** run jbus-dir.bat on your own folders
  - Open files-list.txt:
    - File/Open/Browse, Text files, select files-list.txt
    - Text Import Wizard page 1: Fixed Width, Next
    - Text Import Wizard page 2: delete all break lines, Next
    - Text Import Wizard page 3: column format = Text, Finish
    - Right click on the bottom tab of the worksheet, move to workbook containing the WriteData macro

**WITH THE DATA FROM files-list.txt in column A, run the macro WriteData**