\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{OTL-academic}
\LoadClass{scrartcl}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{kantlipsum}


\ProcessOptions
%commands%
\newdimen\thesectionwdmax
\newdimen\sectiontitlewd
\AtBeginDocument{%
  \setbox0=\hbox{{\usekomafont{disposition}\usekomafont{section}\scalebox{2}{99}}}%
  \thesectionwdmax\wd0%
  \sectiontitlewd\dimexpr\textwidth-\thesectionwdmax-.75cm-1pt\relax
}

\renewcommand\sectionformat{\protect\scalebox{2}{\thesection}}
\addtokomafont{section}{\huge}

\makeatletter
\renewcommand\sectionlinesformat[4]{%
  \ifstr{#1}{section}
    {\ifstr{#3}{}
      {\@hangfrom{\hskip #2#3}{#4}}
      {%
        \begin{tabular}{@{}r@{\hspace{.25cm}\vrule width 1pt\hspace{.5cm}}l@{}}
        \parbox{\thesectionwdmax}{\centering#3}%
        &%
        {\parbox{\sectiontitlewd}{\raggedright#4}}%
        \end{tabular}%
      }%
    }
    {\@hangfrom{\hskip #2#3}{#4}}%
}

\newcommand\sectionpreamble[1]{{%
  \vfill
  \setlength\fboxsep{2em}%
  \colorbox{lightgray}{%
    \parbox{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}
      {\raggedright #1}%
  }%
  \vfill
  \clearpage
}}
\makeatother

\endinput
