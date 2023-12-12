$powerpoint = New-Object -ComObject PowerPoint.Application
$pptx = $powerpoint.Presentations.Add($msoFalse)
$dir = Get-Location
foreach ($file in Get-ChildItem -Path $dir -Filter *.pptx -Name) {
    [void] $pptx.Slides.InsertFromFile((Join-Path $dir $file), $pptx.Slides.Count)
    Write-Output "Combined $file"
}
$pptx.SaveAs((Join-Path $dir "combined.pptx"))
$pptx.Close()