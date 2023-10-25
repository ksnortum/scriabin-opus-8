%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/etude-op2-no1-parts.ily"
\include "includes/prelude-op2-no2-parts.ily"
\include "includes/impromptu-op2-no3-parts.ily"

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
  "Etude in C" \raise #0.75 \teeny \sharp " minor" 
}
\etudeOneNotes
\pageBreak

\tocItem \markup "Prelude in B major"
\preludeTwoNotes
\pageBreak

\tocItem \markup "Impromptu in C major"
\impromptuThreeNotes

% Midi

\etudeOneMidi
\preludeTwoMidi
\impromptuThreeMidi
