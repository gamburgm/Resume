\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume} % need to examine docs for these commands and customize appropriately

\LoadClass{extarticle}

\RequirePackage{titlesec}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{extsizes}

\nofiles
\pagestyle{empty}

\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
\titleformat{\subsection}{\normalsize\bfseries\raggedright}{}{0em}{}{}

% FIXME do I want bold? what's the deal with bold and serif typefaces? and small-caps?
\newcommand{\name}[1]{%
  \centerline{\Huge{\bfseries{#1}}}
}

\newcommand{\contentsubsection}[3]{%
  \subsection[#1]{#1 \hfill #2 \hfill #3}%
}

% TODO clickable URLs without formatting
% TODO adding the bold for 'available'

\newcommand{\info}[4]{%
  \centerline{#1 \textbar \space #2 \textbar \space #3 \textbar \space #4}
}

\newcommand{\contentitem}[1]{%
  \item[$\bullet$] \raggedright{#1}
}

\newcommand{\techskills}[2]{%
  \underline{#1}: #2
}

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


% TODO want to create a command that takes varargs for elements of a subsection
% \newcommand{\contentitem}[1]{%
%   \
