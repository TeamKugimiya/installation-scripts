Write-Host -BackgroundColor DarkBlue -ForegroundColor White "######################################"
Write-Host -BackgroundColor DarkBlue -ForegroundColor White "###           釘宮翻譯組           ###"
Write-Host -BackgroundColor DarkBlue -ForegroundColor White "###     Prism Launcher 安裝腳本    ###"
Write-Host -BackgroundColor DarkBlue -ForegroundColor White "######################################"

Write-Host -BackgroundColor Black -ForegroundColor Red "警告：本腳本將會安裝軟體。"
Write-Host -BackgroundColor Black -ForegroundColor Red "請確認您是從釘宮翻譯組官方網站取得本腳本。"
Write-Host -BackgroundColor Black -ForegroundColor Red "若您從第三方網站取得，請務必仔細檢查腳本內容，以避免潛在的安全風險！"

$confirm = Read-Host -Prompt "請確認您是從釘宮翻譯組官方網站取得，並同意執行安裝（輸入 'yes' 確認）"

if ($confirm -eq "yes") {
    Write-Host -BackgroundColor Black -ForegroundColor Green "已確認。開始安裝..."

    Write-Host -BackgroundColor White -ForegroundColor Black "正在安裝 Prism Launcher..."
    winget install --id=PrismLauncher.PrismLauncher -e

    Write-Host -BackgroundColor White -ForegroundColor Black "正在安裝 Temurin Java 8..."
    winget install --id=EclipseAdoptium.Temurin.8.JRE -e

    Write-Host -BackgroundColor White -ForegroundColor Black "正在安裝 Temurin Java 17..."
    winget install --id=EclipseAdoptium.Temurin.17.JRE -e

    Write-Host -BackgroundColor White -ForegroundColor Black "正在安裝 Temurin Java 21..."
    winget install --id=EclipseAdoptium.Temurin.21.JRE -e

    Write-Host -BackgroundColor Black -ForegroundColor Green "安裝完成！"
} else {
    Write-Host -BackgroundColor Black -ForegroundColor Red "已取消安裝"
}

Write-Host "按任意鍵退出..."
[System.Console]::ReadKey($true) | Out-Null
