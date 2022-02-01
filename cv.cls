% vim: set ft=tex
\LoadClass[11pt, letterpaper]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mire}[2021/11/24 Minimal resume class]
\usepackage{geometry}
\usepackage[utf8]{inputenc}
\geometry{a4paper, margin=.4in,top=.2in}

\usepackage{graphicx}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fonts & colours
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{xcolor}

\definecolor{hd-red}   {RGB}{197, 13, 41}
\definecolor{hd-brown} {RGB}{ 90, 15, 20}
\definecolor{hd-beige} {RGB}{245, 240, 234}
\definecolor{hd-yellow}{RGB}{255, 191, 0}
\definecolor{hd-blue}  {RGB}{70, 129, 180}

\usepackage{fontspec}
\setmainfont{Cronos Pro}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hyperlinks & bookmarks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[%
  colorlinks = true,
  citecolor  = black,
  linkcolor  = black,
  urlcolor   = black,
  filecolor  = black,      
  pdfpagemode= FullScreen,
  ]{hyperref}

\RequirePackage{bookmark}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Commands and Macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{xcolor}
\newcommand{\link}[2]{\href{#1} {\underline{#2}}}

% sections and subsections
%-------------------------
\RequirePackage{titlesec}
\titleformat{\section}                  % Customise the \section command 
  {\large\bfseries\scshape\raggedright} % Make the \section headers large (\Large),
                                        % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                               % Can be used to give a prefix to all sections, like 'Section ...'
  {}                                    % Can be used to insert code before the heading
  [{\titlerule[1pt]}]   

\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
%% You name here
%---------------
\newcommand{\name}[1]{%
    \centerline{\normalsize\bfseries{#1}}
\vspace{.3cm}
}
% Entries
%--------
\newcommand{\entry}[4]{
\begin{minipage}[t]{.16\linewidth}
\textsc{#1}
\end{minipage}
\begin{minipage}[t]{.8\linewidth}
{\bf#2}\\\textit{#3}\\ \normalsize{#4}
\end{minipage}\\
}

% Contacts
%---------
\newcommand{\contact}[2]{
  \href {#1} {\emph {#2}}
}
% skills

\usepackage{tikz}

\definecolor{white}{RGB}{255,255,255}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{_black}{HTML}{1d2021}
\definecolor{maingray}{HTML}{B9B9B9}

\newcommand\skills[1]{ 
    \begin{tikzpicture}
        \foreach [count=\i] \x/\y in {#1}{
            \draw[fill=maingray,maingray] (0,\i) rectangle (6,\i+0.4);
            \draw[fill=white,_black](0,\i) rectangle (\y,\i+0.4);
            \node[above right] at (0,\i+0.4) {\x};
        }
    \end{tikzpicture}
}
