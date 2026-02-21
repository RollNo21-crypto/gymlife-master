$content = Get-Content index.html
$newContent = $content[0..185] + $content[749..($content.Count-1)]
$newContent | Set-Content index_clean.html
Remove-Item index.html -Force
Rename-Item index_clean.html index.html
