# Webpage-List-Archiver
Archive a list of webpages/websites by downloading them and storing them locally.
* Add your list of URLs and their respective shortend names.
* Edit the $wgetExe & $saveDir variables.  
Wget is required and must be installed (http://gnuwin32.sourceforge.net/packages/wget.htm).

Use this script as a scheduled task or run it manually. You can archive a list of webpages and review them for changes with this script. Useful for webpages that change frequently and you want an offline copies automatically stored locally.


Here is an example of the file structure after running the script twice:

<pre>\---WLA
    +---ConstitutionUS
    |   \---2019
    |       \---9
    |           \---15
    |               \---11
    |                   +---26
    |                   |       index.html
    |                   |       
    |                   \---31
    |                           index.html
    |                           
    +---GitHub
    |   \---2019
    |       \---9
    |           \---15
    |               \---11
    |                   +---26
    |                   |       index.html
    |                   |       
    |                   \---31
    |                           index.html
    |                           
    \---GNU
        \---2019
            \---9
                \---15
                    \---11
                        +---26
                        |       index.html
                        |       
                        \---31
                                index.html</pre>
                                
