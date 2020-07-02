#mousemove by Max G

Clear-Host
Echo "Moving mouse..."
Add-Type -AssemblyName System.Windows.Forms

$PlusOrMinus = 1
while ($true)
{
  $p = [System.Windows.Forms.Cursor]::Position
  $x = $p.X + $PlusOrMinus
  $y = $p.Y + $PlusOrMinus
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  Start-Sleep -Seconds 30
  $PlusOrMinus *= -1
}
