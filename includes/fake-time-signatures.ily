\version "2.24.2"

tsMarkup.128 = \markup {
  \override #'(baseline-skip . 0.5)
  \column { \translate #'(-0.6 . 0) \concat { \number 1 \number 2 } \number 8 }
}

tsMarkup.C = \markup {
  \override #'(baseline-skip . 0.5)
  \column { \musicglyph "timesig.C44" }
}

fakeTimeSignature = 
#(define-music-function (tsMarkup) (markup?)
  #{
    \override Staff.TimeSignature.style = #'default
    \override Staff.TimeSignature.stencil = #(lambda (grob)
      (grob-interpret-markup grob tsMarkup))
  #})

%% Usage:
% { \fakeTimeSignature \tsMarkup.128 \time 4/4 c'4 4 4 4 }