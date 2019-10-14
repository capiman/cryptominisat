Add-Type -AssemblyName System.IO.Compression.FileSystem

function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

$wc = New-Object System.Net.WebClient
$wc.DownloadFile("https://dl.bintray.com/boostorg/release/%BOOST_VERSION%/source/boost_%BOOST_VERSION%.zip", "C:\projects\cryptominisat\boost.zip")

Unzip "C:\projects\cryptominisat\boost.zip" "C:\projects\cryptominisat"
