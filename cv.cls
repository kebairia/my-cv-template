% vim: set ft=tex
\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2021/11/24 My custom CV class]
% sections and subsections
\RequirePackage{titlesec}
\titleformat{\section}         % Customise the \section command 
  {\large\bfseries\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]   

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
  \centerline{\large\bfseries{#1}}
}
\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}
