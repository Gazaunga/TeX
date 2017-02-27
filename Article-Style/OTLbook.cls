\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{memoir}
}
\ProcessOptions\relax
\LoadClass[11pt,letterpaper,twoside]{scrbook}
%
\RequirePackage[english]{babel}
\RequirePackage{parskip}
\RequirePackage{kantlipsum}
\RequirePackage{mathptmx}
\RequirePackage{avant}
\RequirePackage{xcolor}
\RequirePackage{mdframed}
\RequirePackage{blindtext}
\RequirePackage[paperwidth=9cm, paperheight=11.5cm, top=0.1cm, left=0.1cm, right=0.1cm, bottom=0.2cm]{geometry}
\RequirePackage{microtype}
%18cm x 22.86cm is 6x9
\renewcommand{\maketitle}{%
    \twocolumn[%
        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \@title
        \medskip
        ]%
}
%
\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\large\sffamily\slshape\headlinecolor}%
}

\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setlength{\textwidth}{17.5cm}
\setlength{\textheight}{22cm}
\setcounter{secnumdepth}{0}

% on such a small "page", we have to let LaTeX to be sloppy
\frenchspacing 
\sloppy
\widowpenalty=10000
%LET'S BEGIN

\pagestyle{empty}

%---------

\endinput
