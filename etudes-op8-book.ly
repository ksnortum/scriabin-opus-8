%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op8-no01-parts.ily"
\include "includes/etude-op8-no02-parts.ily"
\include "includes/etude-op8-no03-parts.ily"
\include "includes/etude-op8-no04-parts.ily"
\include "includes/etude-op8-no05-parts.ily"
\include "includes/etude-op8-no06-parts.ily"
\include "includes/etude-op8-no07-parts.ily"
\include "includes/etude-op8-no08-parts.ily"
\include "includes/etude-op8-no09-parts.ily"
\include "includes/etude-op8-no10-parts.ily"
\include "includes/etude-op8-no11-parts.ily"
\include "includes/etude-op8-no12-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDFs

\tocItem \markup \concat { 
  "Etude no. 1 in C" \raise #0.75 \teeny \sharp " major" 
}
\etudeOneNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 2 in F" \raise #0.75 \teeny \sharp " minor" 
}
\etudeTwoNotes
\pageBreak

\tocItem \markup "Etude no. 3 in B minor"
\etudeThreeNotes
\pageBreak

\tocItem \markup "Etude no. 4 in B major"
\etudeFourNotes
\pageBreak

\tocItem \markup "Etude no. 5 in E major"
\etudeFiveNotes
\pageBreak

\tocItem \markup "Etude no. 6 in A major"
\etudeSixNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 7 in B" \raise #0.75 \teeny \flat " minor" 
}
\etudeSevenNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 8 in A" \raise #0.75 \teeny \flat " major" 
}
\etudeEightNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 9 in G" \raise #0.75 \teeny \sharp " minor" 
}
\etudeNineNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 10 in D" \raise #0.75 \teeny \flat " major" 
}
\etudeTenNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 11 in B" \raise #0.75 \teeny \flat " minor" 
}
\etudeElevenNotes
\pageBreak

\tocItem \markup \concat { 
  "Etude no. 12 in D" \raise #0.75 \teeny \sharp " minor" 
}
\etudeTwelveNotes

% Midi

\etudeOneMidi
\etudeTwoMidi
\etudeThreeMidi
\etudeFourMidi
\etudeFiveMidi
\etudeSixMidi
\etudeSevenMidi
\etudeEightMidi
\etudeNineMidi
\etudeTenMidi
\etudeElevenMidi
\etudeTwelveMidi
