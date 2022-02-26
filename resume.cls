\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume} % need to examine docs for these commands and customize appropriately

\LoadClass{article}

\RequirePackage{titlesec}

\titleformat{\section}         % customize \section
  {\Large\scshape\raggedright} % make header large, small caps and ragged-right

  {}{0em}                      % no prefix to headers
  {}                           % code for before header
  [\titlerule]                 % code for after header


