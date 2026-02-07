# CreateVideoMarketingStructure.ps1
# Script to generate Video Marketing Project folder tree with specs.md placeholders

# Root directory
$root = "E:\MJ-Ahmad\MJAhmad\VM"

# Define folder structure
$structure = @{
    "YouTube" = @(
        "LongForm\raw",
        "LongForm\edited",
        "LongForm\optimized",
        "LongForm\specs.md",
        "Shorts\raw",
        "Shorts\edited",
        "Shorts\optimized",
        "Shorts\specs.md"
    )
    "Facebook" = @(
        "FeedVideos",
        "Reels",
        "specs.md"
    )
    "Instagram" = @(
        "Reels",
        "Stories",
        "specs.md"
    )
    "TikTok" = @(
        "raw",
        "edited",
        "optimized",
        "specs.md"
    )
    "LinkedIn" = @(
        "PostVideos",
        "specs.md"
    )
    "Website" = @(
        "Explainer",
        "Testimonials",
        "specs.md"
    )
    "CommonAssets" = @(
        "intros",
        "outros",
        "subtitles",
        "branding"
    )
}

# Create root folder
if (-Not (Test-Path $root)) {
    New-Item -ItemType Directory -Path $root | Out-Null
    Write-Host "Created root folder: $root"
}

# Create subfolders and files
foreach ($platform in $structure.Keys) {
    $platformPath = Join-Path $root $platform
    if (-Not (Test-Path $platformPath)) {
        New-Item -ItemType Directory -Path $platformPath | Out-Null
        Write-Host "Created platform folder: $platformPath"
    }

    foreach ($item in $structure[$platform]) {
        $itemPath = Join-Path $platformPath $item

        if ($item.EndsWith(".md")) {
            # Create placeholder specs.md file
            if (-Not (Test-Path $itemPath)) {
                New-Item -ItemType File -Path $itemPath -Force | Out-Null
                Add-Content -Path $itemPath -Value "# Specs for $platform`n`n- Length:`n- Resolution:`n- Format:`n- Notes:`n"
                Write-Host "Created specs.md for $platform"
            }
        } else {
            # Create directory
            if (-Not (Test-Path $itemPath)) {
                New-Item -ItemType Directory -Path $itemPath | Out-Null
                Write-Host "Created folder: $itemPath"
            }
        }
    }
}

Write-Host "✅ Video Marketing Project structure created successfully!"
