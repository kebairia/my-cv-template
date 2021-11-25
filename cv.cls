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
  linkcolor  = hd-red,
  urlcolor   = black,
  filecolor  = hd-red,      
  pdfpagemode= FullScreen,
  ]{hyperref}

\RequirePackage{bookmark}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MACROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\contact}[2]{\href {#1} {\emph {#2}}}
\newcommand{\link}[2]{\href{#1} {\underline{#2}}}
% Link images
\newcommand{\lkd}{\includegraphics[height=.85em]{img/new/linkedin.png}}
\newcommand{\yt}{\includegraphics[height=.85em]{img/new/yt.png}}
\newcommand{\gh}{\includegraphics[height=.85em]{img/new/git.png}}
\newcommand{\tw}{\includegraphics[height=.85em]{img/new/twitter.png}}
\newcommand{\phone}{\includegraphics[height=.85em]{img/phone.png}}
\newcommand{\www}{\includegraphics[height=.85em]{img/www.png}}
\newcommand{\email}{\includegraphics[height=.85em]{img/email.png}}

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
}
%% Your contact info here
%\newcommand{\contact}[2]{
        %\makebox[110pt][c]{
            %#1 \normalsize\itshape{#2}   
            %}
        %}
%\newcommand{\longcontact}[5]{%
    %\noindent
    %#1\hfill {\large\textperiodcentered}\hfill #2\hfill
    %{\large\textperiodcentered}\hfill #3\\
    %#4\hfill #5%
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       CONTACT ICONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
