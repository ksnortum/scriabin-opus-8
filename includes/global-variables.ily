\version "2.24.0"

%
% Scheme functions
%

#(define-markup-command (tempo-markup layout props tempo dur dots mm) 
                        (markup? integer? integer? markup?)
  "\tempo emulator, but with no parens around MM"
  ; tempo = the text of the tempo, so Allegro, Lento, etc.
  ; dur   = log 2 of the duration, so 0 = whole, 1 = half, 2 = quarter, ..."
  ; dots  = the number of dots after the duration
  ; mm    = the metronome mark, so 100 or 63-76
  ; example: \textMark \markup \tempo-markup Vivace #2 #1 63-76 c'1
  (interpret-markup layout props
    (let ((dura (ly:make-duration dur dots)))
      #{\markup {
        \hspace #1.5 \bold #tempo
        % \teeny "M.M."
        \hspace #1 \raise #0.4 \tiny \note { #dura } #UP
        \small { "=" #mm }
      }#})))

%
% Redefine
%
staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

insideSlur = \tweak avoid-slur #'inside \etc

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t % keep?
}


tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

subdivideBeamsEighths = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
}

eighthsInTwos.44 = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

eighthsInTwos.34 = {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

arpeggioAsBracket = \once {
  \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  \override PianoStaff.Arpeggio.X-extent = #'(0 . 0)
}

%
% Markup
%

rit = \markup \large \italic "rit."
crescMolto = \markup \large \italic "cresc. molto"
nonLegato = \markup \large \italic "non legato"
aTempo = \markup \large \italic "a tempo"
smorz = \markup \large \italic "smorz."
dimPp = \markup { \large \italic "dim." \dynamic pp }
dimPpp = \markup { \italic "dim." \dynamic ppp }
legatoCantabile = \markup \large \italic "legato cantabile"
mfSemplice = \markup { \dynamic mf \italic semplice }
sottoVoce = \markup \large \italic "sotto voce"
accel = \markup \large \italic "accel."
accelerando = \markup \large \italic "accelerando"
rubato = \markup \large \italic "rubato"
cantabile = \markup \large \italic "catabile"
