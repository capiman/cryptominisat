Add-Type -AssemblyName System.IO.Compression.FileSystem

function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

$wc = New-Object System.Net.WebClient
$wc.DownloadFile("https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.zip", "C:\projects\cryptominisat\boost_1_71_0.zip")

Unzip "C:\projects\cryptominisat\boost_1_71_0.zip" "C:\projects\cryptominisat"
