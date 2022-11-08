\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trinhbay}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}
%%%%%%%%%%%%

\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{grffile}
\RequirePackage{longtable}
\RequirePackage{wrapfig}
\RequirePackage{rotating}
\RequirePackage[normalem]{ulem}
\RequirePackage{amsmath}
\RequirePackage{textcomp}
\RequirePackage{amssymb}
\RequirePackage{capt-of}
\RequirePackage{hyperref}
\RequirePackage{tabularx}
\RequirePackage[a4paper,left=3cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage[fontsize=13pt]{scrextend}
\RequirePackage{indentfirst}
\RequirePackage{listings}
\RequirePackage{amsthm}
\RequirePackage{xpatch}
\RequirePackage[nottoc,notlof,notlot,numbib]{tocbibind}
\RequirePackage{setspace}
\RequirePackage[titles]{tocloft}
\RequirePackage{polyglossia}
\RequirePackage[shortlabels]{enumitem}


\setdefaultlanguage{vietnamese}
\RequirePackage{fontspec}

\setmainfont{Times New Roman}

%\setromanfont{Times New Roman}
%\setsansfont[Scale=MatchLowercase]{Times New Roman}
%\setmonofont[Scale=MatchLowercase]{Arial}
%\usepackage{sectsty}

% Khoang cach 1cm dau doan
\setlength{\parindent}{1cm}

% Format chuong
\newcommand{\customchapterfont}{%
   \large%
   \bfseries%
}
\makeatletter
\renewcommand{\@makechapterhead}[1]{%

{\customchapterfont
\centering
\vspace{5pt}% % thêm khoảng cách theo chiều dọc
\ifnum \c@secnumdepth >\m@ne
\MakeUppercase{ \@chapapp } \space \thechapter % đánh số chương
\par\nobreak
%\vskip 10\p@
\fi
\interlinepenalty\@M
\MakeUppercase{#1}\par % tiêu đề chương
\vspace{5pt}% % thêm khoảng cách chiều dọc
\nobreak
\vskip 20\p@
}}
\renewcommand{\@makeschapterhead}[1]{%
\vspace*{25\p@}%
{\customchapterfont
\centering
\vspace{5pt}% % thêm khoảng cách chiều dọc
\interlinepenalty\@M
\MakeUppercase{#1}\par % tiêu đề chương
\vspace{5pt}% % thêm khoảng cách chiều dọc
\nobreak
\vskip 20\p@
}}
\makeatother

% Font section
\makeatletter
\renewcommand{\section}{\@startsection
{section}% % tên
{1}% % thứ tự
{10mm}% % thụt đầu dòng
{-0.2\baselineskip}% % trước khi cách
{0.2\baselineskip}% % sau khi cách
{\bfseries}} % kiểu font

\renewcommand{\subsection}{\@startsection
{subsection}% % tên
{2}% % thứ tự
{10mm}% % thụt đầu dòng
{-0.2\baselineskip}% % trước khi cách
{0.2\baselineskip}% % sau khi cách
{\bfseries}} % kiểu font

\renewcommand{\subsubsection}{\@startsection
{subsubsection}% % tên
{3}% % thứ tự
{10mm}% % thụt đầu dòng
{-0.2\baselineskip}% % trước khi cách
{0.2\baselineskip}% % sau khi cách
{\bfseries}} % kiểu font
\makeatother

% Tùy biến mục lục các chương, mục

\setlength\cftchapnumwidth{5em}
\renewcommand\cftchappresnum{Chương~}
\renewcommand{\cftchapaftersnum}{:}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand\cftchapafterpnum{\vskip1mm}
%\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\setlength{\cftbeforechapskip}{0mm}

% Dinh nghia Dinh ly
\newtheoremstyle{plainindent}
  {0pt}   % ABOVESPACE
  {0pt}   % BELOWSPACE
  {\normalfont}  % BODYFONT
  {\parindent}% INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {.}         % HEADPUNCT
  {5pt plus 1pt minus 1pt} % HEADSPACE
  {}          % CUSTOM-HEAD-SPEC
\xpatchcmd{proof}{\itshape}{\hspace{\parindent}\itshape}{}{}

\theoremstyle{plainindent}
\newtheorem{theorem}{Định lý}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{conj}[theorem]{Conjecture}
\newtheorem{algorithm}{Thuật toán}[section]
\newtheorem{definition}{Định nghĩa}[section]
\theoremstyle{plainindent}
\setlist[enumerate]{style=unboxed,topsep=0pt,leftmargin=0pt,labelindent=\parindent}
\setlist{noitemsep}
\setlist[itemize]{style=unboxed,topsep=0pt,leftmargin=0pt,labelindent=\parindent}

\endinput
%%%%%%%%%%%%
