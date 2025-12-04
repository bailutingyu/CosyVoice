param(
    [string]$Port = "8000",
    [string]$ModelDir = "C:\Users\Administrator\.cache\modelscope\hub\models\iic\CosyVoice2-0.5B"
)

# quick launcher for CosyVoice webui
$env:PYTHONWARNINGS = "ignore"
Set-Location "D:\Development\CosyVoice"
Start-Process -FilePath "C:\ProgramData\anaconda3\envs\cosyvoice\python.exe" `
    -ArgumentList "webui.py","--model_dir","$ModelDir","--port","$Port" `
    -WorkingDirectory "D:\Development\CosyVoice" `
    -RedirectStandardOutput "D:\Development\CosyVoice\webui.log" `
    -RedirectStandardError "D:\Development\CosyVoice\webui.err.log"
