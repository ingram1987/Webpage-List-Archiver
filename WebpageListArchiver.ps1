###Webpage List Archiver--------###
###Developed by Ryan Watson-----###
###https://github.com/ingram1987###
###http://ITswapShop.com--------###
###Created on 2019 Sept. 15-----###

# A list of URLs and their respective short names
$domains = (@("https://github.com","GitHub"),
    @("https://www.gnu.org/","GNU"),
    @("http://constitutionus.com/","ConstitutionUS")
    )

# Edit these paths to fit your environment. Wget is a prerequisite.
$wgetExe = "C:\Program Files\wget-1.20.3-win64\wget.exe"
$saveDir = "C:\Users\Owner"

# Gets the current date/time
$date = Get-Date

# Command line switches for Wget that are used
$optAdjustExtension = "-E"
$optPageRequisites = "-p"
$optSpanHosts = "-H"
$optConverLinks = "-k"
$optDirectoryPrefix = "-P"
$optAccept = "-A"
$optNoHostDirectories = "-nH"
$optExecute = "-e"
$optUserAgent = "-U"
$optNoCheckCertificates = "--no-check-certificate"

# Some of the command line switches require additional information passed to them
$acceptedExt = "html"
$robots = "robots=off"
$userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36"

# Iterate through all URLs, download each of them, save them locally
function DownloadDomains {
    foreach ($domain in $domains) {
        $directoryPrefixPath = $saveDir + "\WLA\$($domain[1])\$($date.Year)\$($date.Month)\$($date.Day)\$($date.Hour)\$($date.Minute)"
        write-host ("Downloading: " + $domain[1])
        & $wgetExe $optUserAgent $userAgent $optAdjustExtension $optPageRequisites $optSpanHosts $optConvertLinks $optDirectoryPrefix $directoryPrefixPath $optAccept $acceptedExt $optNoHostDirectories $optNoCheckCertificates $domain[0] $optExecute $robots
    }
}

# List all of the Domains to be downloaded
function ListDomains {
    Write-Host ("Webpages to be downloaded:")
    foreach ($domain in $domains) {
        Write-Host ($domain[1])
    }
    Write-Host ("----------------")
}

# Start the script
ListDomains
DownloadDomains