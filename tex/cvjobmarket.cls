%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Job market CV template - UCL 2014/2015
%
% This file borrows heavily from a previous class by Trey Hunner, the details and copyright conditions of which are included below:
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\ProvidesClass{cvjobmarket}[15/08/2014  version 1]

%%%%%%%%%%%%%%%
% load packages
%%%%%%%%%%%%%%%

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{color}
\definecolor{Blue}{RGB}{00, 00, 140}
\usepackage[bookmarks, colorlinks, breaklinks, pdftitle={Florian Oswald - vita},pdfauthor={Florian Oswald}]{hyperref}  
\hypersetup{linkcolor=Blue,citecolor=Blue,filecolor=black,urlcolor=Blue} 
\usepackage{hyperref}
\usepackage{tabularx}
\usepackage[bitstream-charter]{mathdesign}
\renewcommand*\ttdefault{cmvtt}

%%%%%%%%%%%%%%%
% end  packages
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
% set fonts
%%%%%%%%%%%%%%%


\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name, email and webpage
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \webpage#1{\def\@webpage{#1}} % Defines the \name command to set name
\def \@webpage {} % Sets \@name to empty by default

\def \email#1{\def\@email{#1}} % Defines the \name command to set name
\def \@email {} % Sets \@name to empty by default



% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \hfill {\MakeUppercase{\namesize\bf \@name}}
    \nameskip\break
  \endgroup
}

% \printwebpage is used to print the webpage as a page header
\def \printwebpage {
  \begingroup
    \hspace*{0pt} \hfill {\href{\@webpage}{\texttt{\@webpage}}}
    \webpageskip\break
  \endgroup
}

% \printwebpage is used to print the webpage as a page header
\def \printemail {
  \begingroup
    \hspace*{0pt} \hfill {\href{mailto:\@email}{\texttt{\@email}}}
    \emailskip\break
  \endgroup
}


%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name 
  \printwebpage
  \printemail
}


%----------------------------------------------------------------------------------------
%	college section formatting
%----------------------------------------------------------------------------------------

% Defines the collegesection environment 
\newenvironment{collegeSection}[1]{ % 1 input argument - section name
  \sectionskip
  \centerline{\large{\MakeUppercase{\bf #1}}} % Section title
  \sectionlineskip
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}


%----------------------------------------------------------------------------------------
%	contact section formatting
%----------------------------------------------------------------------------------------

% Defines the contactSection environment
\newenvironment{contactSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}



%----------------------------------------------------------------------------------------
%	Standard SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  \MakeUppercase{\bf #1} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}













% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\large} % Size of the name at the top of the document
\def\webpagesize{\normalsize} % Size of the name at the top of the document
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\smallskip} % The space after your name at the top
\def\webpageskip{\smallskip} % The space after your name at the top
\def\emailskip{\smallskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
