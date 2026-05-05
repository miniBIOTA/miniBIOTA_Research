$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$brainRoot = "M:\miniBIOTA\miniBIOTA_Brain"

Write-Host "miniBIOTA Research Codex closeout"
Write-Host "Repo: $repoRoot"

Push-Location $repoRoot
Write-Host ""
Write-Host "Research repo status:"
git status --short --branch
Pop-Location

if (Test-Path "$brainRoot\3. miniBIOTA_Research\research_brief.md") {
    Write-Host "Research brief exists: $brainRoot\3. miniBIOTA_Research\research_brief.md"
} else {
    Write-Host "Research brief missing at expected path."
}

Write-Host ""
Write-Host "Closeout reminder:"
Write-Host "- Read changed files end to end, including memory, skills, references, archive notes, and research files."
Write-Host "- Update Brain research_brief.md only when manager-facing research state changed and the user has not forbidden it."
Write-Host "- Confirm no Supabase records, structured records, ecological claims, or ecosystem actions changed unless explicitly approved."
Write-Host "- Verify Supabase only when current ecology or structured record state matters."
Write-Host "- Commit and push completed work."
