% This is a deliverable template for the GeoHEAT project
% Copyright © 2026 Jinqiang Chen


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{geoheatdeliverable}[2026/05/20 GeoHEAT Deliverable Class]

% ------------------------------------------------------------
% Base class
% ------------------------------------------------------------
\LoadClass[11pt,a4paper]{article}

% ------------------------------------------------------------
% Core layout and fonts
% ------------------------------------------------------------
\RequirePackage[a4paper,
    top=2.8cm,
    bottom=2.5cm,
    left=2.5cm,
    right=2.5cm,
    headheight=42pt,
    headsep=0.8cm,
    footskip=1.3cm
]{geometry}

\RequirePackage[T1]{fontenc}
% \RequirePackage{lmodern}

\RequirePackage{setspace}
\RequirePackage{ragged2e}

% ------------------------------------------------------------
% Graphics and colour
% ------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage[table]{xcolor}
\RequirePackage{epstopdf}
\RequirePackage{tikz}

% ------------------------------------------------------------
% Tables
% ------------------------------------------------------------
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}

% ------------------------------------------------------------
% Mathematics
% ------------------------------------------------------------
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsopn}
\RequirePackage{amsthm}
\RequirePackage{siunitx}

% ------------------------------------------------------------
% Algorithms
% ------------------------------------------------------------
\RequirePackage{algorithm}
\RequirePackage{algcompatible}

% ------------------------------------------------------------
% Captions and subfigures
% ------------------------------------------------------------
\RequirePackage{caption}
\RequirePackage{subcaption}

% ------------------------------------------------------------
% Page style, sections, contents
% ------------------------------------------------------------
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{enumitem}

% ------------------------------------------------------------
% Quotes and boxes
% ------------------------------------------------------------
\RequirePackage{csquotes}
\RequirePackage{tcolorbox}

% Optional tcolorbox libraries
% \tcbuselibrary{skins,breakable,theorems}

% ------------------------------------------------------------
% Hyperlinks and cross-references
% Load these late.
% ------------------------------------------------------------
\RequirePackage{hyperref}
\RequirePackage[nameinlink]{cleveref}

% ------------------------------------------------------------
% Dummy text
% Better not to include in final class unless needed.
% ------------------------------------------------------------
% \RequirePackage{lipsum}

% ------------------------------------------------------------
% Colours
% ------------------------------------------------------------
\definecolor{GeoBlue}{RGB}{0,102,184}
\definecolor{LightGrey}{RGB}{230,235,242}
\definecolor{FooterGrey}{RGB}{120,120,120}

% ------------------------------------------------------------
% Hyperref
% ------------------------------------------------------------
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=GeoBlue,
    citecolor=black
}

% ------------------------------------------------------------
% Fonts and paragraph style
% ------------------------------------------------------------
% \renewcommand{\familydefault}{\sfdefault}
% \setlength{\parindent}{0pt}
% \setlength{\parskip}{6pt}
% \onehalfspacing
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}

\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt}

\setstretch{1.12}

% ------------------------------------------------------------
% Default metadata
% These are overwritten from main.tex using commands below.
% ------------------------------------------------------------
\newcommand{\ProjectName}{GeoHEAT}
\newcommand{\DeliverableNo}{}
\newcommand{\DeliverableTitle}{}
\newcommand{\FullTitle}{}
\newcommand{\Authors}{}
\newcommand{\ORCID}{}
\newcommand{\LeadBeneficiary}{}
\newcommand{\OtherBeneficiaries}{}
\newcommand{\DueDate}{}
\newcommand{\DisseminationLevel}{\textless Confidential\textgreater{} / \textless Public\textgreater}
\newcommand{\DeliverableStatus}{\textless Draft\textgreater{} / \textless Revision\textgreater{} / \textless Final\textgreater}
\newcommand{\DOI}{}
\newcommand{\LicenseInfo}{CC-BY 4.0}
\newcommand{\RecommendedCitation}{%
\textless Authors\textgreater, The H2020 GeoHEAT project: \textit{Deliverable \textless No.\textgreater{} \textless Title\textgreater, \textless Publication year\textgreater}%
}
\newcommand{\FooterDeliverable}{GeoHEAT Deliverable \textless No.\textgreater}

% Revision history: table rows, each ending in \\ \hline
\newcommand{\RevisionHistory}{%
\textbf{Version 01} & NN & dd.mm.yyyy & First draft \\ \hline
\textbf{Version 02} & NN & dd.mm.yyyy & Second draft \\ \hline
\textbf{Final version} & NN & dd.mm.yyyy & \\ \hline
}

% Approval status: name and date per role
\newcommand{\DeliverableResponsibleName}{<Name>}
\newcommand{\DeliverableResponsibleDate}{<date>}
\newcommand{\WPLeaderName}{<Name>}
\newcommand{\WPLeaderDate}{<date>}
\newcommand{\ReviewerName}{<Name>}
\newcommand{\ReviewerDate}{<date>}
\newcommand{\ProjectCoordinatorName}{<Name>}
\newcommand{\ProjectCoordinatorDate}{<date>}

% Logos
\newcommand{\GeoheatLogoLarge}{figures/geoheat-logo.png}
\newcommand{\GeoheatLogoSmall}{figures/geoheat-logo-small.png}
\newcommand{\EULogo}{figures/EU-logo.jpg}

% ------------------------------------------------------------
% User-facing metadata setters
% ------------------------------------------------------------
\newcommand{\setprojectname}[1]{\renewcommand{\ProjectName}{#1}}
\newcommand{\setdeliverableno}[1]{\renewcommand{\DeliverableNo}{#1}}
\newcommand{\setdeliverabletitle}[1]{\renewcommand{\DeliverableTitle}{#1}}
\newcommand{\setfulltitle}[1]{\renewcommand{\FullTitle}{#1}}
\newcommand{\setauthors}[1]{\renewcommand{\Authors}{#1}}
\newcommand{\setorcid}[1]{\renewcommand{\ORCID}{#1}}
\newcommand{\setleadbeneficiary}[1]{\renewcommand{\LeadBeneficiary}{#1}}
\newcommand{\setotherbeneficiaries}[1]{\renewcommand{\OtherBeneficiaries}{#1}}
\newcommand{\setduedate}[1]{\renewcommand{\DueDate}{#1}}
\newcommand{\setdisseminationlevel}[1]{\renewcommand{\DisseminationLevel}{#1}}
\newcommand{\setdeliverablestatus}[1]{\renewcommand{\DeliverableStatus}{#1}}
\newcommand{\setdoi}[1]{\renewcommand{\DOI}{#1}}
\newcommand{\setlicense}[1]{\renewcommand{\LicenseInfo}{#1}}
\newcommand{\setrecommendedcitation}[1]{\renewcommand{\RecommendedCitation}{#1}}
\newcommand{\setfooterdeliverable}[1]{\renewcommand{\FooterDeliverable}{#1}}
\newcommand{\setrevisionhistory}[1]{\renewcommand{\RevisionHistory}{#1}}
\newcommand{\setdeliverableresponsible}[2]{\renewcommand{\DeliverableResponsibleName}{#1}\renewcommand{\DeliverableResponsibleDate}{#2}}
\newcommand{\setwpleader}[2]{\renewcommand{\WPLeaderName}{#1}\renewcommand{\WPLeaderDate}{#2}}
\newcommand{\setreviewer}[2]{\renewcommand{\ReviewerName}{#1}\renewcommand{\ReviewerDate}{#2}}
\newcommand{\setprojectcoordinator}[2]{\renewcommand{\ProjectCoordinatorName}{#1}\renewcommand{\ProjectCoordinatorDate}{#2}}

\newcommand{\setgeoheatlogolarge}[1]{\renewcommand{\GeoheatLogoLarge}{#1}}
\newcommand{\setgeoheatlogosmall}[1]{\renewcommand{\GeoheatLogoSmall}{#1}}
\newcommand{\seteulogo}[1]{\renewcommand{\EULogo}{#1}}

% ------------------------------------------------------------
% Section heading style
% ------------------------------------------------------------
\titlespacing*{\section}
  {0pt}
  {12pt plus 2pt minus 2pt}
  {0pt}

\titlespacing*{\subsection}
  {0pt}
  {10pt plus 2pt minus 1pt}
  {0pt}

\titlespacing*{\subsubsection}
  {0pt}
  {0pt}
  {-5pt}

\titlespacing*{\paragraph}
  {0pt}
  {0pt}
  {-5pt}
  
\titleformat{\section}
  {\Large\bfseries\color{GeoBlue}}
  {\thesection}{0.8em}{}

\titleformat{\subsection}
  {\large\bfseries\color{GeoBlue}}
  {\thesubsection}{0.8em}{}

\titleformat{\subsubsection}
  {\normalsize\bfseries}
  {\thesubsubsection}{0.8em}{}

\titleformat{\paragraph}
  {\normalsize\bfseries}
  {\theparagraph}{0.8em}{}

\titleformat{\subparagraph}
  {\normalsize\bfseries}
  {\thesubparagraph}{0.8em}{}

\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{6}

\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph}{\theparagraph.\arabic{subparagraph}}

% ------------------------------------------------------------
% Table of contents style
% ------------------------------------------------------------
\renewcommand{\contentsname}{Table of contents}
\renewcommand{\cfttoctitlefont}{\Large\bfseries\color{GeoBlue}}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftsecpagefont}{}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% ------------------------------------------------------------
% Captions
% ------------------------------------------------------------
\captionsetup{
    font=small,
    labelfont=bf,
    textfont=normalfont,
    % justification=centering,
    singlelinecheck=true
}
\captionsetup[subfigure]{
    font=small,
    labelfont=normalfont,
    textfont=normalfont,
    justification=centering
}

% ------------------------------------------------------------
% Header and footer
% ------------------------------------------------------------
\fancypagestyle{mainstyle}{
    \fancyhf{}
    \fancyhead[R]{%
        \includegraphics[height=1.3cm]{\GeoheatLogoSmall}%
    }
    \renewcommand{\headrulewidth}{0.02pt}

    \fancyfoot[L]{\textcolor{FooterGrey}{\small \FooterDeliverable}}
    \fancyfoot[R]{\textcolor{FooterGrey}{\small Page \thepage{} / \pageref{LastPage}}}
    \renewcommand{\footrulewidth}{0.02pt}
}

\fancypagestyle{titlestyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[L]{%
        \begin{minipage}{0.85\textwidth}
        \vspace{-0.75cm}
        \small\color{FooterGrey}
        GeoHEAT is funded by the European Union under the Horizon Europe Framework Programme\\
        (Grant agreement ID: 101147571). This work has received funding from the\\
        Swiss State Secretariat for Education, Research and Innovation (SERI).
        \end{minipage}
    }
    \fancyfoot[R]{%
        \includegraphics[height=1cm]{\EULogo}%
    }
    \renewcommand{\footrulewidth}{0pt}
}

% ------------------------------------------------------------
% Helper column types
% ------------------------------------------------------------
\newcolumntype{L}[1]{>{\RaggedRight\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\RaggedLeft\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\Centering\arraybackslash}p{#1}}

% ------------------------------------------------------------
% Title page
% ------------------------------------------------------------
\newcommand{\makegeoheattitlepage}{%
\begin{titlepage}
\thispagestyle{titlestyle}

\vspace*{3.0cm}

\begin{center}
    \includegraphics[width=0.94\textwidth]{\GeoheatLogoLarge}

    \vspace{1.5cm}

    {\huge\bfseries\color{GeoBlue} GeoHEAT Deliverable \DeliverableNo}

    \vspace{2.5cm}
\end{center}

{\huge\bfseries\color{GeoBlue} \DeliverableTitle}

\vspace{1.0cm}

{\Large\bfseries\color{GeoBlue} \Authors}

\vfill

\end{titlepage}
}

% ------------------------------------------------------------
% Deliverable information page
% ------------------------------------------------------------
\newcommand{\makegeoheatdeliverableinfo}{%
\pagestyle{mainstyle}
\setcounter{page}{2}

\begingroup
\arrayrulecolor{gray!50}
\renewcommand{\arraystretch}{1.5}
\setlength{\extrarowheight}{2pt}

\begin{tabularx}{\textwidth}{|R{4.2cm}|X|}
\hline
\textbf{Title:} &
\FullTitle \\
\hline
\textbf{Authors:} &
\Authors \\
\hline
\textbf{ORCID:} &
\ORCID \\
\hline
\textbf{Lead beneficiary:} &
\LeadBeneficiary \\
\hline
\textbf{Other beneficiaries/partners:} &
\OtherBeneficiaries \\
\hline
\textbf{Due date:} &
\DueDate \\
\hline
\textbf{Dissemination Level:} &
\DisseminationLevel \\
\hline
\textbf{Status:} &
\DeliverableStatus \\
\hline
\textbf{DOI:} &
\DOI \\
\hline
\textbf{License information:} &
\LicenseInfo \\
\hline
\textbf{Recommended citation:} &
\RecommendedCitation \\
\hline
\end{tabularx}

\vspace{0.5cm}

\begin{tabularx}{\textwidth}{|R{2.3cm}|R{1.48cm}|L{3.2cm}|X|}
\hline
\textbf{Revision history} &
\textbf{Author} &
\textbf{Delivery date} &
\textbf{Summary of changes and comments} \\
\hline
\RevisionHistory
\end{tabularx}

\vspace{0.5cm}

\begin{tabularx}{\textwidth}{|R{4.2cm}|C{7.0cm}|X|}
\hline
\multicolumn{3}{|c|}{\textbf{Approval status}} \\
\hline
&
\textbf{Name} &
\textbf{Date} \\
\hline
\textbf{Deliverable responsible} &
\DeliverableResponsibleName &
\DeliverableResponsibleDate \\
\hline
\textbf{WP leader} &
\WPLeaderName &
\WPLeaderDate \\
\hline
\textbf{Reviewer} &
\ReviewerName &
\ReviewerDate \\
\hline
\textbf{Project Coordinator} &
\ProjectCoordinatorName &
\ProjectCoordinatorDate \\
\hline
\end{tabularx}
\endgroup

\clearpage
}

% ------------------------------------------------------------
% Front matter helper
% ------------------------------------------------------------
\newcommand{\makegeoheatfrontmatter}{%
\makegeoheattitlepage
\makegeoheatdeliverableinfo
\tableofcontents
\clearpage
}

% ------------------------------------------------------------
% Imprint section
% ------------------------------------------------------------
\newcommand{\makegeoheatimprint}{%
\clearpage
\section{Imprint}

\begin{tabularx}{\textwidth}{@{}L{3.2cm}X@{}}
Project coordinator &
Prof. Dr. Erik H. Saenger\\
&
Reservoir Geophysics\\
&
Fraunhofer IEG\\
&
Am Hochschulcampus 1\\
&
44801 Bochum\\
&
Germany\\[0.4cm]

&
Email: \href{mailto:erik.saenger@ieg.fraunhofer.de}{erik.saenger@ieg.fraunhofer.de}\\
&
Phone: +49 234 3210708\\[0.4cm]

Project website &
\href{https://www.geoheat.org}{https://www.geoheat.org}\\[0.4cm]

Project summary &
GeoHEAT will transform geothermal exploration through two key strategic shifts: 
(i) minimising pre-drilling exploration costs while quantifying and communicating the risks; 
and (ii) maximising learning rates of exploration drilling while reducing the costs of characterisation. 
As a first step, the high costs and shortsighted prospection are tackled with passive surface-based imaging methods and uncertainty encompassing modelling alternatives. 
In parallel to reducing measurement bias, our approach engages a larger population and stakeholder group in search for optimal locations for geothermal exploration. 
In the following step, GeoHEAT illuminates the subsurface to an unprecedented extent through a novel georadar probe. 
The georadar imaging is complemented with drilling-induced microseismicity monitoring and digital rock physics models to create a high-resolution understanding of the reservoir. 
Our novel, multiscale approach unlocks the potential of informed deviated drilling, optimal wellbore placement and accurate performance and risk analysis. 
Throughout the GeoHEAT journey we propose effective and inclusive tools for public engagement and two-way communication while we introduce advanced decision-making tools for policymakers based on probabilistic modelling and uncertainty quantification. 
To maximize its impact and expedite its success, GeoHEAT consists of a complementary consortium with European leaders in the scientific, industrial, and public domain. 
The interdisciplinarity of our team allows us to look at geothermal energy exploration from different angles (e.g., geophysics, engineering, seismology, social sciences and humanities) and ensure the technical, scientific, economic and social sustainability of our proposed exploration workflow. 
By building on the results and expertise of previous and ongoing related projects, GeoHEAT contributes to the European-wide energy transition process to provide reliable, secure and competitive geothermal energy supply.\\
\end{tabularx}
}

% ------------------------------------------------------------
% Liability claim section
% ------------------------------------------------------------
\newcommand{\makegeoheatliabilityclaim}{%
\clearpage
\section{Liability claim}

Views and opinions expressed are those of the author(s) only and do not necessarily reflect those of the European Union or the European Climate, Infrastructure and Environment Agency (CINEA). Neither the European nor the granting authority can be held responsible for them.
}

% ------------------------------------------------------------
% Bibliography helper for BibTeX
% ------------------------------------------------------------
\newcommand{\makegeoheatreferences}[2]{%
\clearpage
\section{References}
\renewcommand{\refname}{}
\vspace{-1.5em}
\bibliographystyle{#1}
\bibliography{#2}
}