%%	University of Alabama at Birmingham Dissertation class file
%%	-----------------------------------------------------------
%%	(adapted 2025‑07‑15: per‑section top‑margin offsets in front matter)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UABdissertationclass}
\LoadClass[12pt]{report}

%%	IMPORTING PACKAGES
\usepackage{geometry}
\geometry{
  letterpaper,
  top     = 1in,
  bottom  = 1in,
  left    = 1.5in,
  right   = 1in,
  footskip= 0.5in,
  heightrounded,
%  showframe
}
\usepackage{tocloft}
\usepackage{titlesec}
\usepackage{setspace}
\usepackage{textcase}
\usepackage{afterpage}

\usepackage{ifthen}
\usepackage{eso-pic}
\usepackage{etoolbox}

%%	FORMATTING TABLE OF CONTENTS
\renewcommand{\contentsname}{\hfill\begin{center}
TABLE OF CONTENTS
\end{center}  \hfill
}
\renewcommand{\cfttoctitlefont}{\vspace*{-0.3in}}
\renewcommand{\cftaftertoctitle}{\begin{flushright}
\textit{Page}
\end{flushright}}
\renewcommand{\cftaftertoctitleskip}{-10pt} 
\renewcommand{\cftchapfont}{ }
\renewcommand{\cftdot}{.}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchappagefont}{}
\renewcommand\cftchappresnum{CHAPTER }
\cftsetindents{chapter}{0em}{6.5em}
\renewcommand{\cftbeforechapskip}{12pt}
\renewcommand{\cftbeforesecskip}{0pt}
\renewcommand{\cftbeforesubsecskip}{0pt}

%%	FORMATTING LIST OF TABLES AND FIGURES
\renewcommand{\listfigurename}{\hfill\begin{center}
LIST OF FIGURES 
\end{center} \hfill}
\renewcommand{\cftloftitlefont}{\hfill\vspace*{-0.3in}}
\renewcommand{\cftafterloftitle}{
\begin{flushleft}
\textit{Figure}\hspace{372pt}\textit{Page}
\end{flushleft}
}
\renewcommand{\cftafterloftitleskip}{-3pt}
\renewcommand{\listtablename}{\hfill List of Tables \hfill}
\renewcommand{\cftlottitlefont}{\pagebreak\vspace*{1in}\hfill\MakeTextUppercase}
\renewcommand{\cftafterlottitle}{
\begin{flushleft}
\textit{Table}\hspace{372pt}\textit{Page}
\end{flushleft}}
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}

%%	DEFINING COMMANDS
\newcommand\committee[1]{\renewcommand\@committee{#1}}
\newcommand\@committee{Committee names here.}
\newcommand\adviser[1]{\renewcommand\@adviser{#1}}
\newcommand\@adviser{Adviser name here.}
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\@degree{Degree name here.}
\newcommand\university[1]{\renewcommand\@university{#1}}
\newcommand\@university{University name here.}
\newcommand\program[1]{\renewcommand\@program{#1}}
\newcommand\@program{Graduating program here.}
\newcommand\school[1]{\renewcommand\@school{#1}}
\newcommand\@school{School name here.}
\newcommand\gradyear[1]{\renewcommand\@gradyear{#1}}
\newcommand\@gradyear{\the\year}
\newcommand\place[1]{\renewcommand\@place{#1}}
\newcommand\@place{Place here}
\newcommand\keywords[1]{\renewcommand\@keywords{#1}}
\newcommand\@keywords{Place up to 6 keywords here.}
\renewcommand\abstract[1]{\renewcommand\@abstract{#1}}
\newcommand\@abstract{Abstract text here.}
\newcommand\dedication[1]{\renewcommand\@dedication{#1}}
\newcommand\@dedication{Dedication text here.}
\newcommand\acknowledgments[1]{\renewcommand\@acknowledgments{#1}}
\newcommand\@acknowledgments{Acknowledgments text here.}
\newcommand\typeofdoc[1]{\renewcommand\@typeofdoc{#1}}
\newcommand\@typeofdoc{Document type here.}

%%	COMMAND TO MAKE COPYRIGHT PAGE
\newcommand{\makecopyright}{
  \vspace*{\fill}
  \thispagestyle{empty}
  {\centering
    \begin{singlespace}
    Copyright by\\
    \@author\\
    \@gradyear
    \end{singlespace}
  }
}

%% NAME BIBLIOGRAPHY
\renewcommand{\bibname}{References}

%%	MAKE THE FRONT MATTER
\newcommand{\makefrontmatter}{
  \thispagestyle{empty}
  {\centering
    \begin{singlespace}
      \vspace*{0.8in}
      \renewcommand{\and}{\NoCaseChange{\\}}
      \MakeTextUppercase{\@title} \\[6\baselineskip]
      by \\[\baselineskip]
      \MakeTextUppercase{\@author} \\[2\baselineskip]
      \MakeTextUppercase{\@adviser, Committee Chair \and \@committee}
      \vfill
      A DISSERTATION \\[\baselineskip]
      Submitted to the graduate faculty of \@university,\\
      in partial fulfillment of the requirements for the degree of\\
      \@degree\\[\baselineskip]
      \MakeTextUppercase{\@place}\\[\baselineskip]
      \@gradyear
    \end{singlespace}
  }
  \pagebreak

  \begin{frontmatter}
	\begin{center}
	\MakeTextUppercase{\@title} \\
	\MakeTextUppercase{\@author} \\
	\MakeTextUppercase{\@program} \\
	ABSTRACT
	\end{center}
	\addcontentsline{toc}{chapter}{ABSTRACT}
    \begin{doublespace}
    \@abstract
    \end{doublespace}
    
    
    \vfill
	\begin{flushleft}
		Keywords: \@keywords
	\end{flushleft}
	
	\newpage
	\vspace*{0.5in}
	\addcontentsline{toc}{chapter}{DEDICATION}
	{\centering
	\singlespacing
	DEDICATION\par}
	\vspace*{0.5in}
	\begin{doublespace}
	  \@dedication
	\end{doublespace}
	\newpage
	
	\newpage
	\vspace*{0.5in}
	\addcontentsline{toc}{chapter}{ACKNOWLEDGMENT}
	{\centering
	\singlespacing
	ACKNOWLEDGEMENT\par}
	\vspace*{0.5in}
	\begin{doublespace}
	  \@acknowledgments
	\end{doublespace}
	\pagebreak

	\begin{spacing}{1}
		\tableofcontents
		\pagebreak
        \addcontentsline{toc}{chapter}{LIST OF FIGURES}
        \listoffigures
    \end{spacing}

  \end{frontmatter}
}

%%	FRONT MATTER ENVIRONMENT
\newenvironment{frontmatter}{
  \makecopyright
  \pagebreak
  \pagenumbering{roman}
  \setcounter{page}{3}
  \setcounter{chapter}{0}
}

%%	BODY ENVIRONMENT
\newenvironment{body}{
  \pagebreak
  \pagenumbering{arabic}
  \setcounter{page}{1}
  \setcounter{chapter}{0}
  \flushbottom
  \begin{doublespace}
    \renewcommand{\@makechapterhead}[2]{
      {\centering
        \vspace{0.625in}
        \MakeTextUppercase{\@chapapp\space\thechapter}
        \vspace{0.5\baselineskip}
        \begin{spacing}{1}
          \MakeTextUppercase{##1}
        \end{spacing}
        \vspace{\baselineskip}\par
      }
    }
    \renewcommand{\@makeschapterhead}[1]{
      {\centering
        \vspace{0.625in}
        \MakeTextUppercase{##1}
        \vspace{\baselineskip}\par
      }
    }
    \renewcommand{\section}{
      \@startsection{section}{1}{0mm}{4ex}{2ex}{\normalsize}
    }
    \renewcommand{\subsection}{
      \@startsection{subsection}{1}{0mm}{1mm}{1mm}{\normalsize}
    }
    \topskip=-1in
}{
  \end{doublespace}
}
