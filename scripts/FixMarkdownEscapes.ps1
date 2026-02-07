# FixMarkdownEscapes.ps1
# Purpose: Scan all Markdown (.md) files in the project and fix escaped characters
# Author: MJ Ahmad (Video Marketing Project)

# Root path (current directory)
$root = "E:\MJ-Ahmad\MJAhmad\VM"

# Get all .md files recursively
$files = Get-ChildItem -Path $root -Recurse -Filter *.md

foreach ($file in $files) {
    Write-Host "Processing: $($file.FullName)"

    # Read file content
    $content = Get-Content $file.FullName -Raw

    # Replace escaped Markdown characters
    $fixed = $content `
        -replace '\\#', '#' `       # Fix headers
        -replace '\\-', '-' `       # Fix lists
        -replace '\\\*', '*' `      # Fix bullet points
        -replace '\\>', '>' `       # Fix blockquotes
        -replace '\\_', '_'         # Fix italics/underline

    # Save back to file
    Set-Content -Path $file.FullName -Value $fixed

    Write-Host "✅ Fixed escapes in: $($file.FullName)"
}

Write-Host "🎉 All Markdown files processed successfully!"
