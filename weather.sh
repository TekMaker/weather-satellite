## weather.txt auto-downloader by TekMaker
## the issue is that the Weather.txt file from Celestrak has been moved from celestrak.com to celestrak.org
## this will start the download, move it to the right place and start WxToImg all in one easy go.
## This is neccesary as the Linux version of wxtoimg doe not have an accesible setting to change the weather.txt file url
## store this file in your /home  folder and run it as sh weather.sh
                                 
cd Downloads
wget http://celestrak.org/NORAD/elements/weather.txt ## downloads the updated file
sudo mv  weather.txt /usr/local/lib/wx/tle -f ## moves and overwrites it in wxtoimg settings

wxtoimg -G ## run wxtoimg in graphical mode
