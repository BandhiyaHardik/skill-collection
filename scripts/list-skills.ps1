param(
    [string]$Search = '',
    [switch]$Markdown
)

$skillRoot = Join-Path (Split-Path $PSScriptRoot -Parent) 'skills'
$skills = @(Get-ChildItem -LiteralPath $skillRoot -Directory | Sort-Object Name | ForEach-Object {
    $skillFile = Join-Path $_.FullName 'SKILL.md'
    if (-not (Test-Path -LiteralPath $skillFile)) { return }
    $head = @(Get-Content -LiteralPath $skillFile -TotalCount 15)
    $nameLine = $head | Where-Object { $_ -match '^name:\s*(.+?)\s*$' } | Select-Object -First 1
    $descriptionLine = $head | Where-Object { $_ -match '^description:\s*(.+?)\s*$' } | Select-Object -First 1
    $name = if ($nameLine -match '^name:\s*(.+?)\s*$') { $Matches[1].Trim('"', "'") } else { $_.Name }
    $description = if ($descriptionLine -match '^description:\s*(.+?)\s*$') { $Matches[1].Trim('"', "'") } else { '' }
    [pscustomobject]@{ Name = $name; Description = $description; Folder = $_.Name }
})

if ($Search) {
    $skills = @($skills | Where-Object { $_.Name -match $Search -or $_.Description -match $Search })
}

if ($Markdown) {
    '# Skill catalog'
    ''
    "Generated from the current SKILL.md metadata. $($skills.Count) skills listed."
    ''
    '| Skill | What it does |'
    '| --- | --- |'
    foreach ($skill in $skills) {
        $description = $skill.Description.Replace('|', '\|')
        "| [$($skill.Name)](skills/$($skill.Folder)/SKILL.md) | $description |"
    }
} else {
    $skills | Select-Object Name, Description | Format-Table -Wrap -AutoSize
    "`n$($skills.Count) skills listed."
}
