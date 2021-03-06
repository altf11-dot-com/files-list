@ECHO OFF
IF [%1]==[] GOTO USAGE
IF [%1]==[PDF] GOTO DIR_BY_TYPE
IF [%1]==[PNG] GOTO DIR_BY_TYPE
IF [%1]==[JPG] GOTO DIR_BY_TYPE
IF [%1]==[XLS] GOTO DIR_BY_TYPE
IF [%1]==[DOC] GOTO DIR_BY_TYPE
:DIR_USER_CUSTOM
DIR %1 /S 1>files-list.txt 2>&1
TYPE files-list.txt
GOTO END_OF_BAT
:DIR_BY_TYPE
DIR *.%1? /S 1>files-list.txt 2>&1
TYPE files-list.txt
GOTO END_OF_BAT
:USAGE
ECHO Usage:
ECHO "jbus-dir [PDF|PNG|JPG|XLS|DOC|(or enter your own custom expression)]"
:END_OF_BAT
ECHO ON