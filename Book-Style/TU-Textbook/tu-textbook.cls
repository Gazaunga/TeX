\ProvidesClass{TU-textbook}[03/13/2017 version 1.0.1]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{memoir}
}
\ProcessOptions \relax


\LoadClass[nols,letterpaper,symmetric,justified,marginals=raggedouter,notoc,usenames,dvipsnames,svgnames,table]{tufte-book}
\RequirePackage{hyperref}
\RequirePackage{microtype}
\RequirePackage{graphicx}
\RequirePackage[english]{babel}
\RequirePackage{xcolor}
\RequirePackage{kantlipsum}
\RequirePackage[most]{tcolorbox}
\RequirePackage{mdframed,fontspec}
\RequirePackage{titletoc}
\RequirePackage{etoolbox}
\setcounter{tocdepth}{1}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
%%%%%%%%%%%%%%%%
\def\@maketitle{%
\begingroup
\drop=0.1\textheight
\fboxsep 0.5\baselineskip
\sffamily
\vspace*{\drop}
\centering
{\color{cyan!60!black}{\LARGE CONUNDRUMS}}\par
\vspace{0.5\drop}
\colorbox{Dark}{\textcolor{white}{\normalfont\itshape\Large
Puzzles for the Mind}}\par
\vspace{\drop}
{\Large J.M. Ottley}\par
\vfill
{\footnotesize T.U. PRESS}\par
\vspace*{\drop}
\endgroup}
%%%%%%%%%%%%%%%%
\hypersetup{colorlinks}
\pretocmd{\tableofcontents}{\begin{mdframed}[backgroundcolor=ptcbackground,outermargin=\dimexpr-\marginparwidth-\marginparsep\relax,innermargin=0pt,hidealllines=true]\let\cleardoublepage\relax}{}{}
  \apptocmd{\tableofcontents}{\end{mdframed}}{}{}
  \definecolor{secnum}{RGB}{13,151,225}
\definecolor{ptcbackground}{RGB}{212,237,252}
\definecolor{ptctitle}{RGB}{0,177,235}
%%%%%%%%%%%%%%%%
\def\chpcolor{cyan!60!black} %blue!45
\def\chpcolortxt{cyan!40!black} %blue!60
%\def\chpcolor{yellow!80!black}
%\def\chpcolortxt{black}
\def\sectionfont{\sffamily\LARGE}

\setcounter{secnumdepth}{2}

\makeatletter
%Section:
\def\@sectionstrut{\vrule\@width\z@\@height12.5\p@}
\def\@makesectionhead#1{%
  {\par\vspace{20pt}%
   \parindent 0pt\raggedleft\sectionfont
   \colorbox{\chpcolor}{%
     \parbox[t]{90pt}{\color{white}\@sectionstrut\@depth4.5\p@\hfill
       \ifnum\c@secnumdepth>\z@\thesection\fi}%
   }%
   \begin{minipage}[t]{\dimexpr\textwidth-90pt-2\fboxsep\relax}
   \color{\chpcolortxt}\@sectionstrut\hspace{5pt}#1
   \end{minipage}\par
   \vspace{10pt}%
  }
}
\def\section{\@afterindentfalse\secdef\@section\@ssection}
\def\@section[#1]#2{%
  \ifnum\c@secnumdepth>\m@ne
    \refstepcounter{section}%
    \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}%
  \else
    \phantomsection
    \addcontentsline{toc}{section}{#1}%
  \fi
  \sectionmark{#1}%
  \if@twocolumn
    \@topnewpage[\@makesectionhead{#2}]%
  \else
    \@makesectionhead{#2}\@afterheading
  \fi
}
\def\@ssection#1{%
  \if@twocolumn
    \@topnewpage[\@makesectionhead{#1}]%
  \else
    \@makesectionhead{#1}\@afterheading
  \fi
}
\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtcolorbox[auto counter]{problem}[2][]{%
   breakable,
    blankest,
    enhanced,
    attach boxed title to top left={yshift=-\tcboxedtitleheight},
    left=\tcboxedtitlewidth+2mm,
    top=0pt,
    colback=white,
    fonttitle=\bfseries\sffamily,
    coltitle={cyan!60!black},
    colbacktitle=white,
    colframe=white,
    title=\thetcbcounter, 
    overlay unbroken and first={%
        \node[fill=gray!30, inner sep=1pt, 
            minimum width=\tcboxedtitlewidth, 
            outer sep=0pt, 
            anchor=north] at (title.south) {%
            \foreach \i in {1,...,4}{%
            \ifnum\i>#2%
                \,\textcolor{cyan!60!black}{$\bullet$}%
            \else
                \,\textcolor{red}{$\bullet$}%           
            \fi}};}, 
    #1}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhf{}
\fancyhead{}     
\fancyhead[RE]{\rightmark}     
\fancyhead[LO]{\leftmark}     
\fancyhead[RO]{\thepage}     
\fancyhead[LE]{\thepage}
\endinput
