# greet.ps1
param (
    [string]$PersonName,
    [string]$GreetingWord = "Hello"
)

# Process the logic
$Message = "$GreetingWord, $PersonName! Welcome to GitHub Actions."
Write-Host $Message

# Set an environment variable for subsequent steps if needed
Write-Host "Greeting generated successfully."

# Map the final string to the GitHub Action output variable
if ($env:GITHUB_OUTPUT) {
    Add-Content -Path $env:GITHUB_OUTPUT -Value "full-message=$Message"
}
