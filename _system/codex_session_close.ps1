$ErrorActionPreference = "Continue"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptRoot
$companyRoot = "M:\miniBIOTA\miniBIOTA_Company"
$companyOverview = Join-Path $companyRoot "domains\research\research_overview.md"
$companyBrief = Join-Path $companyRoot "domains\research\research_brief.md"

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "== miniBIOTA Research Codex Session Close =="
Write-Host "Repo:   $repoRoot"
Write-Host "Report: $companyBrief"
Write-Host ""

Set-Location $repoRoot
Write-Host "Git status:"
if (Test-Path (Join-Path $repoRoot ".git")) {
    git status --short --branch
} else {
    Write-Host "Git repository not initialized in this folder."
}
Write-Host ""

Write-Host "Closeout reminders:"
Write-Host "- Promote durable rules, decisions, corrections, and recurring hazards into local memory/playbooks."
Write-Host "- Update or flag Company reporting when manager-facing Research state changed: $companyBrief"
Write-Host "- Keep detailed implementation context in this repo's memory, skills, references, code, and structured records."
Write-Host "- Brain is historical/archive lookup only unless a transition plan explicitly asks for it."
Write-Host "- Do not invent ecological facts or write species, biome, observation, or chronicle records without explicit approval and current source checks."
Write-Host "- Run the smallest meaningful verification and report changed files."
