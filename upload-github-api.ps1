# 使用 GitHub API 上传文件
# 需要先创建 Personal Access Token

$token = "YOUR_GITHUB_TOKEN"  # 替换为你的 token
$owner = "luo542015332"
$repo = "RootGuard"
$branch = "main"

$headers = @{
    Authorization = "token $token"
    Accept = "application/vnd.github.v3+json"
}

# 获取文件列表
$files = Get-ChildItem -Path "C:\Users\Administrator\.qclaw\workspace\RootGuard" -Recurse -File

foreach ($file in $files) {
    $relativePath = $file.FullName.Substring("C:\Users\Administrator\.qclaw\workspace\RootGuard\".Length)
    $relativePath = $relativePath -replace "\\", "/"
    
    # 跳过 .git 目录和临时文件
    if ($relativePath -like ".git/*" -or $relativePath -like "*.bat" -and $relativePath -notlike ".github/*") {
        continue
    }
    
    $content = [Convert]::ToBase64String([IO.File]::ReadAllBytes($file.FullName))
    
    $body = @{
        message = "Add $relativePath"
        content = $content
        branch = $branch
    } | ConvertTo-Json
    
    $url = "https://api.github.com/repos/$owner/$repo/contents/$relativePath"
    
    try {
        Invoke-RestMethod -Uri $url -Method Put -Headers $headers -Body $body
        Write-Host "Uploaded: $relativePath"
    } catch {
        Write-Host "Failed: $relativePath - $_"
    }
}