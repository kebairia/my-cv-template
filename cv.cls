% vim: set ft=tex
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mire}[2021/11/24 Minimal resume class]
\usepackage{geometry}
\usepackage{graphicx}
\geometry{a4paper, margin=.4in,top=.2in}


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
\setmainfont{Minion Pro}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hyperlinks & bookmarks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[%
  colorlinks = true,
  citecolor  = hd-red,
  linkcolor  = black,
  urlcolor   = black,
  filecolor  = hd-red,      
  pdfpagemode= FullScreen,
  ]{hyperref}

\RequirePackage{bookmark}

\usepackage{xcolor}
\newcommand{\link}[2]{\href{#1} {\underline{#2}}}



% sections and subsections
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
\newcommand{\name}[1]{%
    \centerline{\normalsize\bfseries{#1}}
\vspace{.3cm}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       CONTACT ICONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\newcommand{\entry}[2]{%
    %\subsection[#1]{#1 \hspace{.7cm} #2}%
%}
% Making the \entry command

%\newcommand{\slimentry}[2]{

%\begin{minipage}[t]{.15\linewidth}
%\hfill \textsc{#1}
%\end{minipage}
%\hfill\vline\hfill
%\begin{minipage}[t]{.80\linewidth}
%#2
%\end{minipage}\\
%\vspace{.25cm}
%}

\newcommand{\entry}[4]{
%\ifthenelse{\isempty{#3}}
%{\slimentry{#1}{#2}}{

\begin{minipage}[t]{.15\linewidth}
\textsc{#1}
\end{minipage}
%\hfill
\begin{minipage}[t]{.80\linewidth}
{\bf#2}\\\textit{#3} \footnotesize{#4}
\end{minipage}\\
\vspace{.2cm}
}

\newcommand{\experience}[3]{
    \begin{minipage}[t]{.10\linewidth}
        #1
    \end{minipage}
    \begin{minipage}[t]{.80\linewidth}
        {\bf#2}\\
        \begin{itemize}
            \item #3 
        \end{itemize}
    \end{minipage}\\
\vspace{.2cm}
}
