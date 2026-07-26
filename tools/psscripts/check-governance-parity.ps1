[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
Push-Location $repoRoot

try {
    $failures = New-Object System.Collections.Generic.List[string]

    function Add-Failure {
        param([string]$Message)
        $failures.Add($Message)
    }

    function Get-RelativeNames {
        param(
            [string]$Path,
            [string]$Filter
        )
        if (-not (Test-Path $Path)) {
            return @()
        }
        return @(Get-ChildItem -Path $Path -Filter $Filter | Select-Object -ExpandProperty Name | Sort-Object)
    }

    function Compare-NameSets {
        param(
            [string]$Label,
            [string[]]$Left,
            [string[]]$Right,
            [string]$LeftName,
            [string]$RightName
        )
        $onlyLeft = @($Left | Where-Object { $_ -notin $Right })
        $onlyRight = @($Right | Where-Object { $_ -notin $Left })

        if ($onlyLeft.Count -gt 0 -or $onlyRight.Count -gt 0) {
            Add-Failure "$Label mismatch. Only in ${LeftName}: [$($onlyLeft -join ', ')]. Only in ${RightName}: [$($onlyRight -join ', ')]"
        }
    }

    Write-Host "== Governance Parity Check ==" -ForegroundColor Cyan

    # Required canonical entry points.
    $requiredFiles = @(
        "AGENTS.md",
        "CLAUDE.md",
        ".github/copilot-instructions.md",
        "docs/02_RepositoryStructure.md",
        "skills.md"
    )

    foreach ($file in $requiredFiles) {
        if (-not (Test-Path $file)) {
            Add-Failure "Missing required file: $file"
        }
    }

    # Rules parity: .clinerules/rules/*.md vs .opencode/rules/*.md
    $clineRules = Get-RelativeNames ".clinerules/rules" "*.md"
    $openRules = Get-RelativeNames ".opencode/rules" "*.md"
    Compare-NameSets -Label "Rules" -Left $clineRules -Right $openRules -LeftName ".clinerules/rules" -RightName ".opencode/rules"

    # Agents parity: .clinerules/agents/*.md vs .opencode/agents/*.md
    $clineAgents = Get-RelativeNames ".clinerules/agents" "*.md"
    $openAgents = Get-RelativeNames ".opencode/agents" "*.md"
    Compare-NameSets -Label "Agents" -Left $clineAgents -Right $openAgents -LeftName ".clinerules/agents" -RightName ".opencode/agents"

    # Skills parity: .clinerules/skills/*.md (except README) vs .opencode/skills/*/SKILL.md
    $clineSkills = @(
        Get-ChildItem ".clinerules/skills" -Filter "*.md" |
            Where-Object { $_.Name -ne "README.md" } |
            ForEach-Object { [System.IO.Path]::GetFileNameWithoutExtension($_.Name) } |
            Sort-Object
    )

    $openSkills = @(
        Get-ChildItem ".opencode/skills" -Directory |
            ForEach-Object { $_.Name } |
            Sort-Object
    )

    Compare-NameSets -Label "Skills" -Left $clineSkills -Right $openSkills -LeftName ".clinerules/skills" -RightName ".opencode/skills"

    # Cursor rule count sanity check (expected modular set).
    $cursorRuleCount = @(Get-ChildItem ".cursor/rules" -Filter "*.mdc").Count
    if ($cursorRuleCount -lt 6) {
        Add-Failure "Unexpected .cursor/rules count: $cursorRuleCount (expected at least 6 modular rules)."
    }

    if ($failures.Count -eq 0) {
        Write-Host "PASS: Governance parity checks succeeded." -ForegroundColor Green
        exit 0
    }

    Write-Host "FAIL: Governance parity checks found issues:" -ForegroundColor Red
    foreach ($f in $failures) {
        Write-Host "- $f" -ForegroundColor Red
    }
    exit 1
}
finally {
    Pop-Location
}
