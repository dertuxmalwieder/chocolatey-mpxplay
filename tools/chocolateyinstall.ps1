$packageName        = 'Mpxplay'
$url                = "https://sourceforge.net/projects/mpxplay/files/Mpxplay/Mpxplay v1.66/mpxp166w.zip/download?use_mirror=autoselect"
$checksum           = "C8D336EBF6EE8169A1F1908E7E4D8FE0B92D6228F4166582B9DCBED35F0BBAAB"

$packageArgs = @{
  packageName   = $packageName
  url           = $url
  unzipLocation = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
  checksumType  = 'sha256'
  checksum      = $checksum
}

Install-ChocolateyZipPackage @packageArgs