param(
    [string]$Version = '4.0.0'
)

$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location -LiteralPath $repoRoot

& (Join-Path $PSScriptRoot 'build-windows.ps1')

$pkgName = "A-Last-Cup-of-Tea-v$Version-windows-x64"
$stageDir = Join-Path $repoRoot "dist/$pkgName"
$zipPath = Join-Path $repoRoot "dist/$pkgName.zip"

if (Test-Path -LiteralPath $stageDir) { Remove-Item -Recurse -Force -LiteralPath $stageDir }
if (Test-Path -LiteralPath $zipPath) { Remove-Item -Force -LiteralPath $zipPath }

New-Item -ItemType Directory -Force -Path $stageDir | Out-Null

Copy-Item -LiteralPath 'dist/last_cup.exe' -Destination $stageDir
Copy-Item -LiteralPath 'Play.cmd' -Destination $stageDir
Copy-Item -LiteralPath 'README.md' -Destination $stageDir
Copy-Item -LiteralPath 'LICENSE' -Destination $stageDir
Copy-Item -LiteralPath 'docs/THIRD_PARTY.md' -Destination $stageDir

if (Test-Path -LiteralPath 'dist/FreeGLUT-LICENSE.txt') {
    Copy-Item -LiteralPath 'dist/FreeGLUT-LICENSE.txt' -Destination $stageDir
}
if (Test-Path -LiteralPath 'dist/COPYING.MinGW-w64-runtime.txt') {
    Copy-Item -LiteralPath 'dist/COPYING.MinGW-w64-runtime.txt' -Destination $stageDir
}

Compress-Archive -Path $stageDir -DestinationPath $zipPath -CompressionLevel Optimal
Write-Host "Release package created: $zipPath"
