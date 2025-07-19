# Define expected install location
$poetryInstallPath = Join-Path $env:APPDATA "Python\Scripts\poetry.exe"
$poetryCmd = $null

# Check if poetry exists at the expected install location
if (Test-Path $poetryInstallPath) {
    Write-Host "Poetry not in PATH, but found at $poetryInstallPath"
    $poetryCmd = $poetryInstallPath
}
# Poetry not found at all, install it
else {
    Write-Host "Poetry not found. Installing Poetry..."
    # Install poetry using the instructions at: https://python-poetry.org/docs/#installing-with-the-official-installer
    (Invoke-WebRequest -Uri https://install.python-poetry.org -UseBasicParsing).Content | py -

    # Check again after installation
    if (Test-Path $poetryInstallPath) {
        Write-Host "Poetry installed at $poetryInstallPath"
        $poetryCmd = $poetryInstallPath
    } else {
        Write-Error "Poetry installation failed. poetry.exe not found at expected location."
        exit 1
    }
}

# Now use the resolved poetry path to install dependencies
Write-Host "Using Poetry at $poetryCmd to install dependencies..."
& $poetryCmd install --no-root

# Prevent the console from closing right away, so you can read the results
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
