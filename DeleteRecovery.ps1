# Check if a directory was provided as an argument
param(
    [string]$RootDir = $(throw "Please provide the path to the directory where the search should start.")
)

# Get all directories named 'RECOVERY' at any depth within the specified directory and delete them
Get-ChildItem -Path $RootDir -Recurse -Directory -Filter "RECOVERY" | ForEach-Object {
    Remove-Item -Path $_.FullName -Recurse -Force
    Write-Output "Deleted folder: $($_.FullName)"
}

Write-Output "All 'RECOVERY' directories have been deleted from $RootDir."
