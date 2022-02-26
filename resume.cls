\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume} % need to examine docs for these commands and customize appropriately

\LoadClass{article}

\RequirePackage{titlesec}

\titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]

\newcommand{\contentsubsection}[3]{%
  \subsection[$1]{#1 \hfill #2 \hfill #3}%
}
