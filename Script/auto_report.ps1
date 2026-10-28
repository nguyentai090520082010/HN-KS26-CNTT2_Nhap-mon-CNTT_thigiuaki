# Script: auto_report.ps1
# Tac gia: Nguyen Duc Tai
# Ngay tao: 28/10/2026

Write-Host "Dang loc log..."
"=== BAO CAO LOI ===" > logs/auto_report.txt
Get-Content logs/gift.log | Select-String "ERROR" >> logs/auto_report.txt
Write-Host "Hoan thanh!"

