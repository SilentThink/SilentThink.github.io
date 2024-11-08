@echo off
setlocal enabledelayedexpansion

for %%f in (*.mp3) do (
    set "songname=%%~nf"
    
    mkdir "!songname!"

    move "!songname!.mp3" "!songname!\song.mp3" 

    if exist "!songname!.jpg" (
        move "!songname!.jpg" "!songname!\cover.jpg"
    )

    if exist "!songname!.lrc" (
        move "!songname!.lrc" "!songname!\lyric.lrc"
    )
)

echo 文件整理完成！
pause
