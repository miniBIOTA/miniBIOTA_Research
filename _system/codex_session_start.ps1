$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$brainRoot = "M:\miniBIOTA\miniBIOTA_Brain"

Write-Host "miniBIOTA Research Codex startup"
Write-Host "Repo: $repoRoot"

if (Test-Path "$brainRoot\_system\agent_memory.md") {
    Write-Host "Brain memory: $brainRoot\_system\agent_memory.md"
} else {
    Write-Host "Brain memory not found at expected path: $brainRoot\_system\agent_memory.md"
}

if (Test-Path "$brainRoot\3. Ecosystem & Data\research_brief.md") {
    Write-Host "Research brief: $brainRoot\3. Ecosystem & Data\research_brief.md"
} else {
    Write-Host "Research brief not found yet at expected path."
}

if (Test-Path "$brainRoot\_system\minibiota_tools.py") {
    try {
        Push-Location $brainRoot
        python -c "import sys; sys.path.insert(0, r'_system'); import minibiota_tools as tools; print('Supabase tools import: ok')"
        Pop-Location
    } catch {
        Pop-Location
        Write-Host "Supabase tools import check failed: $($_.Exception.Message)"
    }
}

try {
    Push-Location $repoRoot
    git status --short --branch
    Pop-Location
} catch {
    Pop-Location
    Write-Host "Git status check failed: $($_.Exception.Message)"
}

Write-Host "Startup complete. Route work through:"
Write-Host "- AGENTS.md"
Write-Host "- memory/00-index.md and relevant memory files"
Write-Host "- matching skills/*/SKILL.md playbooks"
Write-Host "- relevant skills/*/reference/ files"
Write-Host "- Brain research_brief.md only when strategy-level current state matters"
Write-Host "- Supabase only when current structured records matter"
