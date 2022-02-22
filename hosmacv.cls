\ProvidesClass{hosmacv}[2015/02/28 CV class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

%----------------------------------------------------------------------------------------
%	 REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\RequirePackage[quiet]{fontspec}
\RequirePackage[sfdefault]{ClearSans}
\RequirePackage{tikz}
\RequirePackage{xcolor}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{ragged2e}
\RequirePackage{etoolbox}
\RequirePackage{ifmtarg}
\RequirePackage{ifthen}
\RequirePackage{pgffor}
\RequirePackage{marvosym}
\RequirePackage{parskip}
\usetikzlibrary{shapes.geometric}
\usepackage{fontawesome5}


\usepackage{enumitem}
\setlist[itemize]{leftmargin=*}

\RequirePackage[hidelinks]{hyperref}
\hypersetup{
    pdftitle={hossein mani cv},
    pdfauthor={hossein mani},
    pdfsubject={resume},
    pdfkeywords={cv},
    colorlinks=false,           % no lik border color
    allbordercolors=white       % white border color for all
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\ifxetex
  \usepackage{letltxmacro}
  \setlength{\XeTeXLinkMargin}{1pt}
  \LetLtxMacro\SavedIncludeGraphics\includegraphics
  \def\includegraphics#1#{% #1 catches optional stuff (star/opt. arg.)
    \IncludeGraphicsAux{#1}%
  }%
  \newcommand*{\IncludeGraphicsAux}[2]{%
    \XeTeXLinkBox{%
      \SavedIncludeGraphics#1{#2}%
    }%
  }%
\fi

%----------------------------------------------------------------------------------------
%	 COLOURS
%----------------------------------------------------------------------------------------

\definecolor{white}{RGB}{255,255,255}
\definecolor{hosma_lbr}{HTML}{EAD3CE} % hosma light brown
\definecolor{hosma_dbr}{HTML}{57433F} % hosma dark brown

\definecolor{hosma_dbl_2}{HTML}{3C3C58} % hosma dark blue
\definecolor{hosma_dbl}{HTML}{395a86}  % hosma dark blue
\definecolor{hosma_lbl}{HTML}{577dad}  % hosma light blue

\definecolor{hosma_lgr}{HTML}{ededed}  
\definecolor{hosma_font_dbl}{HTML}{3f5f8a} % hosma fornt color dark blue


\definecolor{gray}{HTML}{4D4D4D}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{mainblue}{HTML}{0E5484}
\definecolor{maingray}{HTML}{B9B9B9}

\definecolor{pblue}{HTML}{0395DE}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{CFCBCB} % 999999
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
\definecolor{pblue}{HTML}{0395DE}
\definecolor{materialpurple}{HTML}{9C27B0}
\definecolor{materialindigo}{HTML}{3F51B5}
\definecolor{materialblue}{HTML}{2196F3}
\definecolor{materialcyan}{HTML}{00BCD4}
\definecolor{materialteal}{HTML}{009688}
\definecolor{materialgreen}{HTML}{4CAF50}
\definecolor{materiallime}{HTML}{CDDC39}
\definecolor{materialamber}{HTML}{FFC107}
\definecolor{materialbrown}{HTML}{795548}
\definecolor{materialred}{HTML}{FF4436}
\definecolor{materialorange}{HTML}{FF5722}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{white}
  \colorlet{header}{gray}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}

%----------------------------------------------------------------------------------------
%	 MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

% \renewcommand{\bfseries}{\color{black}} % Make \textbf produce coloured text instead

\pagestyle{empty} % Disable headers and footers

\setlength{\parindent}{0pt} % Disable paragraph indentation

% --------------------------------------------------------------------------------------
% 	FONTS
%-------------------------------------------------------------------------------------
\newfontfamily\headingfont[Path = fonts/]{segoeuib.ttf} %.ttf
\newfontfamily\hosmafont[Path = fonts/]{LiberationSerif-Regular.ttf} %segoeuib.ttf
\newfontfamily\hosmafontbold[Path = fonts/]{LiberationSerif-Bold.ttf} %segoeuib.ttf
\newfontfamily\antonfontbold[Path = fonts/]{Antonio-Bold.ttf} %segoeuib.ttf
\newfontfamily\antonfontregular[Path = fonts/]{antonio.regular.ttf} %segoeuib.ttf

%----------------------------------------------------------------------------------------
%	 SIDEBAR DEFINITIONS
%----------------------------------------------------------------------------------------

\setlength{\TPHorizModule}{1cm} % Left margin
\setlength{\TPVertModule}{1cm} % Top margin

\newlength\imagewidth
\newlength\imagescale
\pgfmathsetlength{\imagewidth}{5cm}
\pgfmathsetlength{\imagescale}{\imagewidth/600}

\newcommand{\profilesection}[2]{\vspace{8pt}{\color{hosma_dbl} \Large\antonfontregular #1 \rule[0.15\baselineskip]{#2}{0.5pt}}}

% Define custom commands for CV info 
\newcommand{\cvname}[1]{\renewcommand{\cvname}{\antonfontbold #1}}
\newcommand{\personalinfo}[1]{\renewcommand{\personalinfo}{\antonfontregular #1}}

\newcommand{\cvlinkedin}[1]{\renewcommand{\cvlinkedin}{#1}}
\newcommand{\cvnumberphone}[1]{\renewcommand{\cvnumberphone}{#1}}
\newcommand{\cvmail}[1]{\renewcommand{\cvmail}{#1}}
\newcommand{\cvaddress}[1]{\renewcommand{\cvaddress}{#1}}
\newcommand{\cvhome}[1]{\renewcommand{\cvhome}{#1}}
\newcommand{\cvlocation}[1]{\renewcommand{\cvlocation}{#1}}

\newcommand{\cvdate}[1]{\renewcommand{\cvdate}{#1}}
\newcommand{\cvsite}[1]{\renewcommand{\cvsite}{#1}}
\newcommand{\aboutme}[1]{\renewcommand{\aboutme}{\hosmafont #1}}
\newcommand{\profilepic}[1]{\renewcommand{\profilepic}{#1}}
\newcommand{\cvjobtitle}[1]{\renewcommand{\cvjobtitle}{\hosmafont #1}}

\newcommand{\cvmailreffirst}[1]{\renewcommand{\cvmailreffirst}{#1}}
\newcommand{\cvmailrefsec}[1]{\renewcommand{\cvmailrefsec}{#1}}
\newcommand{\cvmailrefthird}[1]{\renewcommand{\cvmailrefthird}{#1}}
\newcommand{\cvmailrefforth}[1]{\renewcommand{\cvmailrefforth}{#1}}
\newcommand{\cvmailreffifth}[1]{\renewcommand{\cvmailreffifth}{#1}}



% Command for printing the contact information icons
\newcommand*\icon[1]{\tikz[baseline=(char.base)]{\node[shape=circle,draw,inner sep=1pt, fill=mainblue,mainblue,text=white] (char) {#1};}}

% Command for making starbar with circles
\newcommand\score[2]{
\pgfmathsetmacro\pgfxa{#1+1}
\tikzstyle{scorestars}=[circle, draw, inner sep=0.22em,anchor=west]
\begin{tikzpicture}[baseline]
  \foreach \i in {1,...,#2} {
    \pgfmathparse{(\i<=#1?"hosma_dbl":"white")}
    \edef\starcolor{\pgfmathresult}
    \draw (\i*1em,0) node[name=star\i,scorestars, color=\starcolor, fill=\starcolor]  {};
   }
  \pgfmathparse{(#1>int(#1)?int(#1+1):0}
  \let\partstar=\pgfmathresult
  \ifnum\partstar>0
    \pgfmathsetmacro\starpart{#1-(int(#1))}
    \path [clip] (star\partstar.north west) rectangle 
    ($(star\partstar.south west)!\starpart!(star\partstar.south east)$);
    \fill (\partstar*1em,0) node[scorestars,fill=hosma_dbl]  {};
  \fi,
\end{tikzpicture}
\vspace{0.2cm}
}



% Command for printing bubble shape
\newcommand\skills{ 
	\smartdiagram[bubble diagram]{
        \textbf{Signal Processing}\\\textbf{Wireless}\\\textbf{Communication}\\\textbf{VLC},
        \textbf{Information Theory}\\\textbf{Error correction},
        \textbf{Cryptography}\\\textbf{Quantum Cryptography}\\\textbf{QKD},
        \textbf{~~~~~Electronics~~~~~~~}\\\textbf{Digital design},
        \textbf{~~~~Linux~~~~~}\\\textbf{~~~~~Windows~~~~},
        \textbf{\LaTeX}\\\textbf{~~~~~~~~~~~~~~\&~~~~~~~~~~~~~~}\\\textbf{MS office},
        \textbf{Artificial}\\\textbf{Intelligence},
        \textbf{Algorithms}
    }
}

% Command for printing skill progress bars
\newcommand\interests[1]{ 
	\renewcommand{\interests}{
		\begin{tikzpicture}
			\foreach [count=\i] \x/\y in {#1}{
				\draw[fill=white, white] (0,\i) rectangle (6,\i+0.2);
				\draw[fill=white, hosma_dbl] (0,\i) rectangle (\y,\i+0.2); % mainblue
				\node [above right] at (0,\i+0.2) {\x};
			}
		\end{tikzpicture}
	}
}

% Command for the references
\newcommand{\cvdoublecolumn}[2]{%
  {%
    \begin{minipage}[t]{0.5\textwidth}#1\end{minipage}%
    \hfill%
    \begin{minipage}[t]{0.5\textwidth}#2\end{minipage}%
    }%
}

% usage: \cvreference{name}{address line 1}{address line 2}{address line 3}{address line 4}{e-mail address}{phone number}
% Everything but the name is optional
% If \addresssymbol, \emailsymbol or \phonesymbol are specified, they will be used.
% (Per default, \addresssymbol isn't specified, the other two are specified.)
% If you don't like the symbols, remove them from the following code, including the tilde ~ (space).

\newcommand{\cvreference}[7]{%
    \textbf{#1}\newline% Name
    \ifthenelse{\equal{#2}{}}{}{\faIcon[regular]{address-card}~#2\newline}%
    \ifthenelse{\equal{#3}{}}{}{#3\newline}%
    \ifthenelse{\equal{#4}{}}{}{#4\newline}%
    \ifthenelse{\equal{#5}{}}{}{#5\newline}%
    \ifthenelse{\equal{#6}{}}{}{\faIcon[regular]{envelope-open}~\texttt{#6}\newline}%
    \ifthenelse{\equal{#7}{}}{}{\faIcon[regular]{phone}~#7}}

%----------------------------------------------------------------------------------------
%  SIDEBAR LAYOUT PAGE 1
%----------------------------------------------------------------------------------------

\newcommand{\makeprofile}{
    % THE BACKGROUND SIDEBAR
    \begin{tikzpicture}[remember picture,overlay]
      \node [rounded corners=15pt, rectangle, fill=hosma_lgr, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (-5cm,0.5cm){};
    \end{tikzpicture} % fill=hosma_lb
    % THE UPPER BACKGROUND SMALL RECATNGLE 
    % \begin{textblock}{6}(0, 0)
    % \begin{tikzpicture}[remember picture,overlay]
    %     \fill [rounded corners=10pt, hosma_dbl] (0,0) rectangle (7.1,-3);
    % \end{tikzpicture}
    % \end{textblock}
    %-------------------------------------------
    \vspace{1.3cm}
    %------------------------------------------------
    \begin{textblock}{6}(0.5, 0.5)
    % WRITE NAME on TOP
    \hspace{1.3cm}{\LARGE\color{hosma_dbl_2}\cvname\\}
    %------------------------------------------------
    \hspace{0.5cm}{
    \begin{tikzpicture}
        \fill[lightgray] (0,0) circle(2.20cm);
        % \clip (0,0) circle (2.1cm) node {\includegraphics[scale=0.29]{img/Hossein.jpg}};
        \clip (0,0) circle (2.1cm) node {\scalebox{-1}[1]{\includegraphics[scale=0.29]{img/Hossein.jpg}}};
    \end{tikzpicture}
    }
    
    % %------------------------------------------------
    % {\Large\color{black!80}\cvjobtitle}
    % %------------------------------------------------
    \vspace{0.5mm}
    % {\Large\color{hosma_font_dbl}\personalinfo} % hosma_dbl 
    \profilesection{Personal information\\}{6.0cm}
    
    \renewcommand{\arraystretch}{1.6}
    \begin{tabular}{p{1cm} @{\hskip 0.5cm}p{5cm}}
        
          \ifthenelse{\equal{\cvlinkedin}{}}{}{
            {$
              \begin{array}{l}
              {\href{\cvlinkedin}{\includegraphics[scale=0.03]{img/LinkedIn_Logo.png}}}
              \end{array}
              $} & \href{\cvlinkedin}{/in/hossein.mani} \\
            }
      \ifthenelse{\equal{\cvnumberphone}{}}{}{
            {$
              \begin{array}{l}
              \includegraphics[scale=0.005]{img/icon_call.png}
              \end{array}
              $} 
            & \cvnumberphone\\}
      \ifthenelse{\equal{\cvmail}{}}{}{
            {$
              \begin{array}{l}
              {\href{mailto:\cvmail}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
              \end{array}
              $} 
            & \href{mailto:\cvmail}{\cvmail}}\\
        \ifthenelse{\equal{\cvhome}{}}{}{
            {$
              \begin{array}{l}
              \includegraphics[scale=0.02]{img/icon_home_black.png}
              \end{array}
              $} 
            & \cvhome\\}
        \ifthenelse{\equal{\cvsite}{}}{}{
            {$
              \begin{array}{l}
              {\href{\cvsite}{\includegraphics[scale=0.045]{img/icon_github.png}}}
              \end{array}
              $} & \href{\cvsite}{hossein.mani} \\
            }
    \end{tabular}
    
    % ------------------------------------------ Competences
    \profilesection{Competences\\}{6.0cm}
    \renewcommand{\arraystretch}{1.6}
    \begin{tabular}{p{1cm} @{\hskip 0.05cm}p{5cm}}
        {$
          \begin{array}{l}
          {\includegraphics[scale=0.03]{img/icon_bullet.png}}
          \end{array}
          $} & Interpersonal skills \\
        {$
          \begin{array}{l}
          {\includegraphics[scale=0.03]{img/icon_bullet.png}}
          \end{array}
          $} & Computer skills \\
          {$
          \begin{array}{l}
          {\includegraphics[scale=0.03]{img/icon_bullet.png}}
          \end{array}
          $} & Management skills\\
          {$
          \begin{array}{l}
          {\includegraphics[scale=0.03]{img/icon_bullet.png}}
          \end{array}
          $} &  Problem-solving\\
     
    \end{tabular}
    %------------------------------------------------
        
    \profilesection{Hard Skills\\}{6.0cm} 
    
	\interests{{Classical \& Quantum Cryptography/5.5}, {\LaTeX/5.7},{Electronics \& Hardware/5},{Programming Languages/5.5}, {Wireless communication /5.7}, {Digital signal processing /5.7}}
    
    \interests\\
    
    % ------------------------------------------ Competences
    \profilesection{Languages\\}{6.0cm}
    
    \begin{large} 
        {English}\hfill{}{\score{5}{5}}\\
        {Persian}\hfill{}{\score{5.0}{5}}\\
        {Danish}\hfill{}{\score{3.0}{5}}\\
    \end{large}

    % ----------------------------------------- Optional digrams 
     % ----------------------------------------------- Programming skills
    % \profilesection{Programming skills}{0cm} 
    % %         {$
    % %               \begin{array}{l}
    % %               \hspace{-2mm}{\includegraphics[scale=0.84]{img/languages_muted.png}}
    % %               \end{array}
    % %         $}

    % \begin{tikzpicture}[font=\large\hosmafontbold, 
    %      text=black, 
    %      border/.style={line width=14mm}]
    %     \foreach \angle/\col [remember=\angle as \last (initially 0)] in 
    %         {120/orange, 230/cyan, 320/green!80!black, 360/red}{ %90/blue, 125/cyan, 160/green!30!black, 210/green, 270/orange, 360/red
    %             \draw[\col, border] (\last:1.8cm) 
    %                  arc[start angle=\last, end angle=\angle, radius=1.8cm];
    %             \draw[white, line width=1.5mm] (\last:1)--++(\last:1.5);
    %     }
    %     \node[line width=1.5mm, draw, circle, minimum width=2cm, white, fill=green!80, text=black] {C/C++};
    %     \node at (60:1.6cm) {Python};
    %     \node at (180:2cm) {Verilog};
    %     \node at (-80:1.8cm) {Matlab};
    %     \node at (-20:2cm) {Other};
    % \end{tikzpicture}

  \end{textblock}
}



%----------------------------------------------------------------------------------------
%  SIDEBAR LAYOUT PAGE 2
%----------------------------------------------------------------------------------------

\newcommand{\makeprofilesecondpage}{
    % THE BACKGROUND SIDEBAR
    \begin{tikzpicture}[remember picture,overlay]
      \node [rounded corners=15pt, rectangle, fill=hosma_lgr, anchor=north, minimum width=9cm, minimum height=\paperheight+1cm] (box) at (-5cm,0.5cm){};
    \end{tikzpicture} % fill=hosma_lb
    %-------------------------------------------
    \vspace{1.3cm}
    %------------------------------------------------
    \begin{textblock}{6}(0.5, 0.5)
    % %------------------------------------------------
    % {\Large\color{black!80}\cvjobtitle}

    
     % ----------------------------------------------- Programming skills
    \profilesection{Programming languages\\}{6.0cm} 
    \begin{tikzpicture}[font=\Large\hosmafontbold, 
         text=white, 
         border/.style={line width=20mm}]
        \foreach \angle/\col [remember=\angle as \last (initially 0)] in 
            {90/hosma_lbl, 160/hosma_lbl, 230/hosma_lbl, 300/hosma_lbl, 358/hosma_lbl}{ %90/blue, 125/cyan, 160/green!30!black, 210/green, 270/orange, 360/red
                \draw[\col, border] (\last:2.0cm) 
                     arc[start angle=\last, end angle=\angle, radius=2cm];
                \draw[white, line width=2.0mm] (\last:1)--++(\last:2);
        }
        \node[line width=2.0mm, draw, circle, minimum width=2cm, white, fill=hosma_lbl, text=white] {C/C++};
        \node at (60:2.1cm) {Cuda};
        \node at (30:1.8cm) {GPU};
        \node at (130:1.9cm) {Python};
        \node at (195:2cm) {Verilog};
        \node at (265:2.2cm) {MATLAB};
        \node at (-30:2.1cm) {Others};
    \end{tikzpicture}

    %------------------------------------------------ Research interests
    \vspace{0.5mm}
    % {\Large\color{hosma_font_dbl}\personalinfo} % hosma_dbl 
    \profilesection{Research interests\\}{6.0cm}
    
    \skills
    
    
    
    %------------------------------------------------ References
    % \vspace{0.5mm}
    % \profilesection{References\\}{6.0cm}
    % \renewcommand{\arraystretch}{1.6}
    % \begin{tabular}{p{1cm} @{\hskip 0.05cm}p{5cm}}
        
        
    %     \ifthenelse{\equal{\cvmailreffirst}{}}{}{
    %         {$
    %           \begin{array}{l}
    %           {\href{mailto:\cvmailreffirst}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
    %           \end{array}
    %           $} 
    %         & \href{mailto:\cvmailreffirst}{Professor Ulrik Lund Andersen}}\\
    %     \ifthenelse{\equal{\cvmailrefsec}{}}{}{
    %         {$
    %           \begin{array}{l}
    %           {\href{mailto:\cvmailrefsec}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
    %           \end{array}
    %           $} 
    %         & \href{mailto:\cvmailrefsec}{Assoc.Prof. Tobias Gehring}}\\
    %   \ifthenelse{\equal{\cvmailrefthird}{}}{}{
    %         {$
    %           \begin{array}{l}
    %           {\href{mailto:\cvmailrefthird}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
    %           \end{array}
    %           $} 
    %         & \href{mailto:\cvmailrefthird}{Dr. Christoph Pacher}}\\
    %   \ifthenelse{\equal{\cvmailrefforth}{}}{}{
    %         {$
    %           \begin{array}{l}
    %           {\href{mailto:\cvmailrefforth}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
    %           \end{array}
    %           $} 
    %         & \href{mailto:\cvmailrefforth}{Asst.Prof. Saied Hemati}}\\
    %     \ifthenelse{\equal{\cvmailreffifth}{}}{}{
    %         {$
    %           \begin{array}{l}
    %           {\href{mailto:\cvmailreffifth}{\includegraphics[scale=0.03]{img/icon_Email.png}}}
    %           \end{array}
    %           $} 
    %         & \href{mailto:\cvmailreffifth}{Assoc.Prof. Hamid Saeedi}}\\
    % \end{tabular}
    
    
  \end{textblock}
}

%----------------------------------------------------------------------------------------
%	 COLOURED SECTION TITLE BOX
%----------------------------------------------------------------------------------------

% Command to create the rounded boxes around the first three letters of section titles
\newcommand*\round[2]{%
	\tikz[baseline=(char.base)]\node[anchor=north west, draw,rectangle, rounded corners, inner sep=1.6pt, minimum size=5.5mm, text height=3.6mm, fill=#2,#2,text=white](char){#1};%
}

\def\@sectioncolor#1#2#3{%
	{%
		\color{hosma_dbl} #1#2#3% pblue
	}%
}


\renewcommand{\section}[1]{
  \par\vspace{\parskip}
	{%
		\LARGE\hosmafontbold\color{headercolor}%
		\@sectioncolor #1%
	}
  \par\vspace{\parskip}
}

\renewcommand{\subsection}[1]{
	\par\vspace{.5\parskip}{%
		\Large\hosmafont\color{headercolor} #1%
	}
	\par\vspace{.25\parskip}%
}

\pagestyle{empty}

%----------------------------------------------------------------------------------------
%	 LONG LIST ENVIRONMENT
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}

% New environment for the long list
\newenvironment{twenty}{%
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
	\end{tabular*}
}

\newcommand{\twentyitem}[5]{%
	#1&\parbox[t]{0.83\textwidth}{%
		\textbf{#2}% 
		\hfill%
		{\footnotesize#3}\\%
        \ifblank{#4}{}{#4 \\}
		#5\vspace{\parsep}%
	}\\
}



%----------------------------------------------------------------------------------------
%	 Hosma LONG LIST ENVIRONMENT
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}

% New environment for the long list by hosma
\newenvironment{hosmaenv}{%
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
	\end{tabular*}
}

\newcommand{\hosmaitem}[5]{%
	\parbox[t]{0.83\textwidth}{%
		\textbf{#2}\\% 
% 		\hfill%
		{\textcolor{hosma_dbl}{#3}}\\%
        \ifblank{#4}{}{#4 \\\vspace{-0.4cm}}
		\hspace{0.5cm}#5\vspace{\parsep}%
	}&\textcolor{hosma_dbl}{#1}\\
}
%\twentyitem{<dates>}{<title>}{<organization>}{<location>}{<description>}


%----------------------------------------------------------------------------------------
%	 SMALL LIST ENVIRONMENT
%----------------------------------------------------------------------------------------

\setlength{\tabcolsep}{0pt}

% New environment for the small list
\newenvironment{hosmashort}{%
	\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}ll}
}{%
	\end{tabular*}
}

\newcommand{\hosmaitemshort}[3]{%
	    \parbox[t]{0.83\textwidth}{
	    \textbf{#1}\\
	    \textcolor{hosma_dbl}{#2}
	    }&
	    \ifblank{#3}{}{\textcolor{hosma_dbl}{#3}\\ }\\
}

%----------------------------------------------------------------------------------------
%	 MARGINS AND LINKS
%----------------------------------------------------------------------------------------

\RequirePackage[left=7.6cm,top=0.1cm,right=1cm,bottom=0.2cm,nohead,nofoot]{geometry}


\usepackage{smartdiagram}
\smartdiagramset{
    bubble center node font = \footnotesize,
    bubble node font = \footnotesize,
    % specifies the minimum size of the bubble center node
    bubble center node size = 0.5cm,
    %  specifies the minimum size of the bubbles
    bubble node size = 0.5cm,
    % specifies which is the distance among the bubble center node and the other bubbles
    distance center/other bubbles = 0.3cm,
    % sets the distance from the text to the border of the bubble center node
    distance text center bubble = 0.5cm,
    % set center bubble color
    bubble center node color = pblue,
    % define the list of colors usable in the diagram
    set color list = {lightgray, materialcyan, orange, green, materialorange, materialteal, materialamber, materialindigo, materialgreen, materiallime},
    % sets the opacity at which the bubbles are shown
    bubble fill opacity = 0.4,
    % sets the opacity at which the bubble text is shown
    bubble text opacity = 1,
}

