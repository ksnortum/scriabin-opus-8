%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

#(set-global-staff-size 18)

\header {
  title = ##f
  composer = ##f
  opus = ##f
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/f6/IMSLP309417-PMLP07375-Skrjabin_op.08_Zwoelf_Etueden.pdf" % SrcA
  source = "https://vmirror.imslp.org/files/imglnks/usimg/a/a9/IMSLP263772-PMLP07375-Skrjabin_-_Etudes_-12-,_Op.8_-Moscow,_Muzgiz-.pdf" % SrcB
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2023 Knute Snortum. This piece licensed under the " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0 License."
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")
  
  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
    
  tocTitleMarkup = \markup \huge \bold \column {
    \fill-line { "Table of Contents" }
    \hspace #1
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  print-all-headers = ##t
}

\layout {
  \context {
    \Score
    % \omit BarNumber % <-- uncomment after editing
    \override Slur.details.free-head-distance = 0.75
  }
  \context {
    \Voice
    \override Tie.minimum-length = 3
  }
}

\midi {
  \context {
    \Score
    midiMinimumVolume = #0.20
    midiMaximumVolume = #0.99
  }
}
