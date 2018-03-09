\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dredg}[3/8/2018 Example LaTeX class]

\LoadClass[11pt,a4paper]{article}
\RequirePackage{microtype}
\RequirePackage{ragged2e}
\RequirePackage[absolute]{textpos}
\RequirePackage[english]{babel}
\RequirePackage{fontspec,titlesec,xltxtra,xunicode}
\RequirePackage{fontawesome}
\RequirePackage[hidelinks]{hyperref}
\hypersetup{ colorlinks,
linkcolor=darkblue,
filecolor=darkgreen,
urlcolor=darkred,
citecolor=darkblue }
%\RequirePackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\pagestyle{empty}
\defaultfontfeatures{Ligatures=TeX}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/OpenSansCondensed/]{OpenSansCondensed-Bold.ttf}
\setmainfont[Path = fonts/Arimo/]{Arimo-Regular.ttf}
\setmonofont[Scale=0.90, Path = fonts/OfficeCodePro/,
BoldFont=OfficeCodePro-Medium.otf,
Color={0019D4}
]{OfficeCodePro-Medium.otf}
\titleformat*{\section}{\Large\bfseries\sffamily}
\titleformat*{\subsection}{\large\bfseries\sffamily}
\titleformat*{\subsubsection}{\itshape}
