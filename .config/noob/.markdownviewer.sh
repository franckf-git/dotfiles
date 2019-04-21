#! /bin/bash

Reset='\e[0m'

color_heading1='\e[1;4;91m'
color_heading2='\e[1;4;92m'
color_heading3='\e[1;4;93m'
color_heading4='\e[1;4;94m'
color_heading5='\e[1;4;95m'
color_heading6='\e[1;4;96m'

color_italicbold='\e[1;4m'
color_bold='\e[1m'
color_italic='\e[4m'

color_url='\e[4;94m'
color_url_clean='\e[4m'
color_list='\e[4;35m'
color_code='\e[7m'
color_line='\e[31m'

color_blockquote='\e[1;100m'
color_subblockquote='\e[100m'
color_definition='\e[32m'
color_footnote='\e[1;36m'
color_encart='\e[4;36m'

echo -e "$( cat $1 |
sed -e 's/^# \(.*\)/\'$color_heading1'\1\'$Reset'/g' |                #heading1
sed -e 's/^## \(.*\)/\'$color_heading2'\1\'$Reset'/g' |               #heading2
sed -e 's/^### \(.*\)/\'$color_heading3'\1\'$Reset'/g' |              #heading3
sed -e 's/^#### \(.*\)/\'$color_heading4'\1\'$Reset'/g' |             #heading4
sed -e 's/^##### \(.*\)/\'$color_heading5'\1\'$Reset'/g' |            #heading5
sed -e 's/^###### \(.*\)/\'$color_heading6'\1\'$Reset'/g' |           #heading6
sed -e 's/^\(=====.*\)/\'$color_line'\1\'$Reset'/g' |                #heading1
sed -e 's/^\(-----.*\)/\'$color_line'\1\'$Reset'/g' |               #heading2
sed -e 's/^---$/\'$color_line'-------------------\'$Reset'/g' |   #line
sed -e 's/^\*\*\*$/\'$color_line'-------------------\'$Reset'/g' |   #line
sed -e 's/^___$/\'$color_line'-------------------\'$Reset'/g' |  #line bis
sed -e 's/\*\*\*\(.*\)\*\*\*/\'$color_italicbold'\1\'$Reset'/g' |     #italicbold
sed -e 's/\_\_\_\(.*\)\_\_\_/\'$color_italicbold'\1\'$Reset'/g' |     #italicbold bis
sed -e 's/\*\*\(.*\)\*\*/\'$color_bold'\1\'$Reset'/g' |               #bold
sed -e 's/\_\_\(.*\)\_\_/\'$color_bold'\1\'$Reset'/g' |               #bold bis
sed -e 's/\*\(.*\)\*/\'$color_italic'\1\'$Reset'/g' |                 #italic
sed -e 's/\_\(.*\)\_/\'$color_italic'\1\'$Reset'/g' |                 #italic bis
sed -e 's/\[\(.*\)\](\(.*\))/\'$color_url_clean'\1\'$Reset' \'$color_url'\2\'$Reset'/g' |    #url
sed -e 's/^- \(.*\)/\'$color_list'\1\'$Reset'/g' |                    #list
sed -e 's/^\* \(.*\)/\'$color_list'\1\'$Reset'/g' |                    #list
sed -e 's/^\([0-9]\. .*\)/\'$color_list'\1\'$Reset'/g' |                    #list
sed -e 's/`\(.*\)`/\'$color_code'\1\'$Reset'/g' |                     #code
sed -e 's/^    \(.*\)/\'$color_code'\1\'$Reset'/g' |                  #code bis
sed -e 's/^> \(.*\)/\'$color_blockquote'|    \1\'$Reset'/g' |         #blockquote
sed -e 's/^>> \(.*\)/\'$color_subblockquote'|        \1\'$Reset'/g' | #subblockquote
sed -e 's/^:  \(.*\)/\'$color_definition'    \1\'$Reset'/g' |         #definition
sed -e 's/\[\^\(.*\)\]/\'$color_footnote'\1\'$Reset'/g' |             #footnote
sed -e 's/^<kbd>\(.*\)<\/kbd>/\'$color_encart'\1\'$Reset'/g'          #encart
)"

#sed -e 's/^[0-9]\) \(.*\)/\'$color_list'\1\'$Reset'/g' |                    #list
exit $?
