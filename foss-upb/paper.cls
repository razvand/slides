% Razvan Deaconescu, 2012. Based on thesis.cs.pub.ro, by Mircea Bardac,
% 2008-2009, based itself on so.cs.pub.ro by Vlad Dogaru, 2010
% razvan.deaconescu@cs.pub.ro
%
% paper.cls - class for paper presentation slides

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paper}[2012/06/14]

\LoadClassWithOptions{beamer}

% uncomment the lines bellow for Romanian Language support
% Use UTF8 file encoding when writing .tex files in Romanian
% Romanian Language support
\usepackage{ucs}
\usepackage[utf8x]{inputenc}
\PrerenderUnicode{aâîțșĂÎÂȚȘ}
\usepackage[english,romanian]{babel}
\usepackage{color}	  % if we need highlight
\usepackage{alltt}	  % if we need highlight
\usepackage{hyperref}	  % use \url{http://$URL} or \href{http://$URL}{Name}
\usepackage{underscore}	  % underscores need not be escaped
\usepackage{booktabs}     % nice looking tables

\mode<presentation>
%{ \usetheme{OSSS} }      % no theme

\useoutertheme{default}
\usecolortheme{wolverine}
\useinnertheme{rounded}

\setbeamertemplate{blocks}[rounded][shadow=true]
\setbeamertemplate{navigation symbols}{}
\setbeamersize{text margin left=1em,text margin right=2em}
\setbeamertemplate{footline}[frame number]

% Support for including graphics
\usepackage{graphicx}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

% So that we don't have to declare it a bazillion times
\institute[UPB]{Computer Science and Engineering Department \\
University POLITEHNICA of Bucharest}

% Slide-urile cu mai multe părți sunt marcate cu textul (cont.)
\setbeamertemplate{frametitle continuation}[from second]

% Fix verbatim environment: smaller text size
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

% Show contents at every section beginning. Ripped off from manual.
%\AtBeginSection[] % Do nothing for \section*
%{
%  \begin{frame}<beamer>
%    \frametitle{Outline}
%  \tableofcontents[currentsection]
%    \end{frame}
%}
