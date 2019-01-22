\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aspasia-constitution}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass{book}

\RequirePackage[papersize={6in,9in},margin=1in]{geometry}

\RequirePackage[utf8]{inputenc}
\RequirePackage{luatexja-fontspec} % use LuaLaTex
\setmainjfont{FandolSong} % set Chinese font

\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=false,spacing=false,factor=1100,stretch=10,shrink=10]{microtype} % microtype
\usepackage[all]{nowidow} % widow control

\RequirePackage{hyperref} % hyperlinks
\RequirePackage{xcolor}
\definecolor{cc0000}{HTML}{cc0000}
\hypersetup{
	colorlinks   = true, %Colours links instead of ugly boxes
	urlcolor     = cc0000, %Colour for external hyperlinks
	linkcolor    = cc0000, %Colour of internal links
	citecolor   = cc0000, %Colour of citations
	breaklinks  = true,
	pdfencoding = unicode
}

\RequirePackage{fancyhdr} % set header
\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{#1}} % remove section number in heading
\fancyhead[LO,RE]{\rightmark}
\fancyhead[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0pt}

\renewcommand{\contentsname}{目录 / Contents} % set title of toc

%% set title formats, based on https://gist.github.com/eyliu/166080

\RequirePackage[small]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}

\titleclass\article{top}[\chapter]
\titleformat{\article}[display]{\Large \bfseries}{第 \thearticle\ 条 /  Article \thearticle}{1.5em}{\LARGE\bfseries}
\titlespacing*{\article}{0mm}{*7}{*10.5}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\vspace{1em}}
{\hspace*{-1.8em} \textbf{第 \thecontentslabel\ 条 / Article \thecontentslabel} \hspace*{1em}}
{}
{\titlerule*[1pc]{.}\contentspage}

\makeatletter
\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[block]{\normalsize \bfseries}
{第 \thesection\ 款 /  Section \thesection.}{.5em}{\normalsize \normalfont \itshape}
\titlespacing{\section}{0mm}{*2}{*1}[0mm]
\titlecontents{section}
[1.5em]
{}
{\hspace*{-0.5em} 第 \thecontentslabel\ 款 / Section \thecontentslabel \hspace*{1em}}
{}
{\titlerule*[1pc]{.}\contentspage}

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\roman{enumii}}

%\newcommand{\article}[2]{ %legacy format for chapter titles
%	\newpage\vspace*{4em}
%	{\noindent\bfseries\Large #1\par}
%	\vspace{2em}
%	{\noindent\LARGE #2\par}
%	\vspace{4em}
%	}

% name of the group
\newcommand{\name}{Aspasia}

\RequirePackage{enumitem}
\RequirePackage{url}