\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume} % need to examine docs for these commands and customize appropriately

\LoadClass{article}

\RequirePackage{titlesec}

\titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}%
}

\newcommand{\contentsubsection}[3]{%
  \subsection[$1]{#1 \hfill #2 \hfill #3}%
}

% TODO clickable URLs without formatting
% TODO adding the bold for 'available'

\newcommand{\info}[4]{%
  \noindent
  #1 \hfill \textbar \space \hfill #2 \hfill \textbar \space \hfill #3 \hfill \textbar \space \hfill #4
}
