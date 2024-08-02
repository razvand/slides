% 2018, Razvan Deaconescu, razvan.deaconescu@cs.pub.ro
%
% Update on ROSEdu curs
% Based on curs, based itself on workshop
% Based on workshop, based itself on osss
% Based on osss, based itself on so.cs.pub.ro
% Based on so.cs.pub.ro by Vlad Dogaru, 2010, based itself on thesis.cs.pub.ro
% Based on thesis.cs.pub.ro by Mircea Bardac, 2008
%
% .cls - class for simple slidess

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simple}[2018/11/29]

\LoadClassWithOptions{beamer}


%%% LaTeX Beamer Options %%%
\mode<presentation>

% Mark slides with more text.
\setbeamertemplate{frametitle continuation}[from second]

% Disable useless navigation symbols.
\setbeamertemplate{navigation symbols}{}

% Show page frame number.
\setbeamertemplate{footline}[frame number]

%%% Slide format options %%%

\ifdefined\dualscreen
  \usepackage{pgfpages}
  \setbeameroption{show notes on second screen=left}
\fi

\ifdefined\fouronone
  \usepackage{handoutWithNotes}
  \pgfpagesuselayout{4 on 1 with notes}[a4paper,border shrink=5mm]
\else
  \ifdefined\eightonone
    \usepackage{handoutWithNotes}
    \pgfpagesuselayout{8 on 1}[a4paper,border shrink=5mm]
  \fi
\fi


%%% Generic package/commands options %%%

% Romanian Language support
\usepackage{ucs}
%\usepackage[utf8x]{inputenc}
\PrerenderUnicode{aâîțșĂÎÂȚȘ}
\usepackage[english]{babel}

\usepackage{hyperref}   % use \url{http://$URL} or \href{http://$URL}{Name}
\usepackage{underscore} % underscores need not be escaped
\usepackage{booktabs}   % nice looking tables
\usepackage{array}      % column size options in tables
\usepackage[normalem]{ulem}       % for striketrough text
\usepackage{alltt}      % for verbatim text formatting

% support for including graphics
\usepackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

% Fix verbatim environment: smaller text size.
\let\oldverbatim=\verbatim
\renewenvironment{verbatim}{
  \begin{small}
  \begin{oldverbatim}
  %\vspace*{1em}
}%
{%
  %\vspace*{1em}
  \end{oldverbatim}
  \end{small}
}

% command for specifying TODOs
\newcommand{\todo}[1]{
  \textbf{TODO:} #1 \par
}

% command for formatting file or directory names
\newcommand{\file}[1]{\texttt{#1}}

% command for formatting inline commands
\newcommand{\cmd}[1]{\textbf{\texttt{#1}}}
% command for formatting inline function names
\newcommand{\func}[1]{\textbf{\texttt{#1}}}

\renewcommand{\arraystretch}{1.3}
