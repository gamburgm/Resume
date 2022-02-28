\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume} % need to examine docs for these commands and customize appropriately

\LoadClass{extarticle}

\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{extsizes}

\nofiles
\pagestyle{empty}

\setlength{\parskip}{-0.5em}

% TODO separate this file into two sections: pure-formatting commands and formatting+semantic commands (e.g. \techskills)
% TODO can I format it such that no section can be split on a page?

\titleformat{\section}{\large\raggedright}{}{0em}{}[\titlerule]
\titleformat{\subsection}{\normalsize\bfseries\raggedright}{}{0em}{}{}

% FIXME do I want bold? what's the deal with bold and serif typefaces? and small-caps?
\newcommand{\name}[1]{%
  \centerline{\Huge{\bfseries{#1}}}
}

\newcommand{\alignablebox}[1]{\parbox{.333\textwidth}{\strut#1}}

\newcommand{\contentsubsection}[3]{%
  \subsection{\alignablebox{\raggedright{#1}}%
              \alignablebox{\centering{#2}}%
              \alignablebox{\raggedleft{#3}}}
}

% TODO clickable URLs without formatting
% TODO adding the bold for 'available'

\newcommand{\info}[4]{%
  \centerline{#1 \textbar \space #2 \textbar \space #3 \textbar \space #4}
}

\newcommand{\school}[3]{%
  \contentsubsection{#1, \textnormal{#2}}{}{#3}
}

\newcommand{\major}[2]{%
  \textit{#1}, \textbf{#2 GPA}
}

\newcommand{\contentitem}[1]{%
  \item[$\bullet$] \raggedright{#1}
}

\newcommand{\labelledline}[2]{%
  #1: #2
}

\newcommand{\ulline}[2]{%
  \labelledline{\underline{#1}}{#2}
}

\newcommand{\bfline}[2]{%
  \labelledline{\textbf{#1}}{#2}
}

\newcommand{\techskills}[2]{\ulline{#1}{#2}}

\makeatletter

% to enable bulleted lists
\newcommand{\contentitems}{%
  \begin{itemize}[leftmargin=*]
    \itemsep -0.25em
    \formatnextitem
}

\newcommand{\formatnextitem}[1]{%
  \contentitem{#1}
  \@ifnextchar\bgroup{\formatnextitem}{\end{itemize}}
}

\makeatother
