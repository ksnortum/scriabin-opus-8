%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tempoMarkup = \markup {
  \hspace #1.5 \bold \large "Lento"
  \normal-text "(Tempo rubato)"
  \hspace #1 \raise #0.4 \tiny \note { 4 } #UP
  \small "= 52"
}

moveRestA = 
  \tweak Rest.Y-extent #'(0 . -1)
  \tweak Rest.X-offset 1
  \tweak Rest.Y-offset -4
  \etc
moveRestB = 
  \tweak Rest.Y-extent #'(0 . -1)
  \tweak Rest.X-offset -0.5
  \tweak Rest.Y-offset -1
  \etc
moveRestC = \tweak Rest.Y-offset 2 \etc
moveRestD = \tweak Rest.Y-offset -3 \etc
moveRestE = 
  \tweak Rest.Y-extent #'(0 . -1)
  \tweak Rest.Y-offset -1
  \etc
moveRestF = \tweak Rest.Y-offset 3 \etc
  
moveTupletA = \once \override TupletNumber.Y-offset = 2
moveTupletB = \once \override TupletNumber.Y-offset = 3
moveTupletC = \once {
  \override TupletNumber.X-offset = 2.5
  \override TupletNumber.Y-offset = 2
}
moveTupletD = \once {
  \override TupletNumber.X-offset = 4
  \override TupletNumber.Y-offset = 2
}

moveDotA = \tweak Dots.extra-offset #'(-0.75 . 0) \etc

forceHShiftA = \tweak NoteColumn.force-hshift 1 \etc
forceHShiftB = \tweak NoteColumn.force-hshift -2 \etc

tieShapeA = \shape #'((-0.25 . 0) (-0.25 . 0) (-0.5 . 0) (-0.5 . 0)) \etc
slurShapeA = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -2) (0 . 0.5) (0 . 0) (-0.5 . -3)) \etc
slurShapeC = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key af \major
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \voiceOne 
  \partial 4. af'8( bf[ c] 
  c8-. df-. c-. df-. c-. af-. |
  bf4.) bf8( c[ df] |
  df8-. ef-. df-. ef-. df-. bf-. |
  \forceHShiftB \moveDotA c4.) c8( df[ ef] |
  f8-. gf-. f-.) df( ef ff |
  ff8-. gf-. ff-.) ef( f g |
  bf8 bf, c d g ef |
  ef4) r8 af,( bf[ c] |
  
  \barNumberCheck 9
  c8-. df-. c-. df-. c-. af-. |
  bf4.) ef,8( f[ gf] |
  gf8-. af-. gf-. af-. gf-. ef-. |
  \forceHShiftB \moveDotA f4.) f8( gf[ af] |
  bf8-. cf-. bf) gf( af bff |
  bff8-. cf-. bff-.) af( bf c |
  ef8 ef, f g c af |
  af4.) \oneVoice c8 \tupletUp \moveTupletA \tuplet 3/2 { bf c ef } |
  
  \barNumberCheck 17
  gf2~ gf8 f |
  ef8[ c]^\rubato df[ bf] \moveTupletB \tuplet 3/2 { c ef af } |
  gf2~ gf8 f |
  ef8[ c] bf[ af] \moveTupletA \tuplet 3/2 { bf c ef } |
  af2 \moveTupletC \tuplet 3/2 { af,8 bf cf } |
  gf'8[ f] e[ f] bf[ af] |
  gf8 bf, c! df \tuplet 3/2 { ef f ef } |
  bf4 af~ \moveTupletA \tuplet 3/2 { af8 c ef } |
  
  \barNumberCheck 25
  gf2~ gf8 f |
  ef8[ c] df[ bf] \moveTupletB \tuplet 3/2 { c ef af } |
  gf2~ gf8 f |
  ef8[ c] bf[ af] \moveTupletA \tuplet 3/2 { bf c ef } |
  af2.~ |
  af8 bff ff df \moveTupletD \tuplet 3/2 { cf bff ff' } |
  af2 af4~ |
  af8 af ef c \moveTupletA \tuplet 3/2 { bf af ef' } |
  
  \barNumberCheck 33
  g8[ f] ef[ f,] \tuplet 3/2 { df' ef df } |
  \tupletOff
  \voiceOne c4 bf8\noBeam g( \tuplet 3/2 { af bf c } |
  \tuplet 3/2 { c8 ef df  c \acciaccatura { \slurDown ef } df bf  c g af } |
  bf4~ \tuplet 3/2 { bf8) bf^( bf  bf c df } |
  \tuplet 3/2 { df8 f ef  df \acciaccatura { f } ef c  df a bf } |
  c4~ \slurUp \tuplet 3/2 { c8) c( c  c df ef |
    f8 af gf  f) df( df  df ef ff |
    ff8 gf ff  af ef) ef(  ef f g |
    
    \barNumberCheck 41
    bf8 bf, c  bf c d  g f ef |
  }
  ef4) r16 af,( g af  bf c bf c |
  c f ef df  c ef df bf  c g af bf |
  \forceHShiftA bf4)
    <<
      { \moveRestC r16 gf( f gf  af bf af bf }
      \new Voice { 
        \voiceTwo s8. \hideNoteHead gf16 -\tieShapeA _~ \voiceThree 
          \hideNoteHead gf4 
      }
    >> |
  bf16-- ef-- df-- cf--  bf df cf af  bf f gf af |
  \forceHShiftA af4)  r16 af( gf af  a b a b |
  cs16 fs e d  cs d) a( b  b c b c |
  c16 d c b  c) g( af! bf  bf c bf c |
  
  \barNumberCheck 49
  ef16 ef, f ef  f ef f g  c bf af ef |
  af4)  \moveRestF r16 af( gf af  a b a b |
  cs16 fs e d  cs d) a( b  b c b c |
  c16 d c b  c) g( af! bf  bf c bf c |
  ef16 ef, f ef  f ef f g  c bf af ef |
  af4) r8 af( bf[ c] |
  c8 d c b c bf |
  af4.) af8( bf[ c] |
  
  \barNumberCheck 57
  c8-.[ d-. c-. b-.] c) r |
  \oneVoice r4 r8 <ef, g c> q[ <df g bf>] |
  <df ef bf'>2.~ |
  <c ef af>2. |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo 
  \partial 4. r8 <ef' af> <ef g> 
  <ef af>8 <gf af> <f af> <ff af> <ef af> <ef f> |
  <bf ef af>8 <bf ef g> <bf ef gf>4 <gf' bf> |
  <f bf>8 <af bf> <g bf> <gf bf> <f bf> <f g> |
  <c f bf>8 <c f a> <c f af>4 <f af> |
  <af df>8 <cf df> <bf df> <bff df> <af df> <g! bf> |
  <af cf>8 q q <af ef'> q <af d> |
  <g ef'>8 <d f> <ef bf'> <af bf> <g bf> <af bf> |
  << 
    { g8 f \moveRestA r4 } 
    \new Voice { \voiceFour bf4 g } 
  >> <ef af>8 <ef g> |
  
  \barNumberCheck 9
  <ef af>8 <gf af> <f af> <ff af> <ef af> <ef f> |
  <bf ef af>8 <bf ef g> <bf ef gf>4~ <bf ef> |
  q8 <df ef> <c ef> <cf ef> <bf ef> <bf c> |
  <f bf ef>8 <f bf d> <f bf df>4 <bf df> |
  <df gf>8 <ff gf> <ef gf> <eff gf> <df gf> <c! ef> |
  <df ff>8 q q <df af'> q <df g> |
  <c af'>8 <g bf> <af ef'> <df ef> <c ef> <df ef> |
  << { c8[ bf] c } \new Voice { \voiceFour ef4. } >> s8 s4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. |
  g4. s8 <df f> <ef g> |
  <ef af>8 <gf af> <f af> <ff af> <ef af> <ef f> |
  <<
    { \omit TupletNumber \tuplet 3/2 { af8 g gf } }
    \new Voice { \voiceFour <bf, ef>8[ q] }
  >> <bf ef gf>4 gf' |
  <f bf>8[ <af bf>] <g bf>[ <gf bf>] <f bf>[ <f g>] |
  <<
    { \omit TupletNumber \tuplet 3/2 { bf8 a af } }
    \new Voice { \voiceFour <c, f>8[ q] }
  >> <c f af>4 <f af> |
  <af df>8[ <cf df>] <bf df>[ bff] af[ <g! bff>] |
  <af cf>2 <af ef'>8 <af d> |
  
  \barNumberCheck 41
  <g ef'>8[ <d f>] ef[ <af bf>] <g bf>[ <af bf>] |
  << 
    { \omit TupletNumber \tuplet 3/2 { g8 af f } } 
    \new Voice { \voiceFour bf4 } 
  >> g16 r r8 <ef af> <ef g> |
  <ef af>8[ <gf af>] <f af>[ <ff af>] <ef af>[ <ef f>] |
  <<
    { \moveRestB r16 af g gf  gf \moveRestD r \moveRestD r8 s4 }
    \new Voice { \voiceFour \forceHShiftA <bf, ef>2( <ef gf>4) }
  >> |
  <df gf>8[ <ff gf>] <ef gf>[ <eff gf>] <df gf>[ <df ef>] |
  <<
    { \moveRestB r16 gf f ff  ff4 }
    \new Voice { \voiceFour \forceHShiftA <af, df>2 }
  >> <cs e>4 |
  <e a>8[ <g a>] <fs a>[ <f a>] <e a>[ <ds fs>] |
  <e g>8[ q] <ef g>[ <c ef>] <df af'>[ <df g>] |
  
  \barNumberCheck 49
  <c af'>8[ <g bf>] af[ <df ef>] <c ef>[ <df ef>] |
  <<
    { c16 df bf df  c4 }
    \new Voice { \voiceFour ef4 \moveRestE r }
  >> <cs e>4 |
  <e a>8[ <g a>] <fs a>[ <f a>] <e a>[ <ds fs>] |
  <e g>8[ q] <ef g>[ <c ef>] <df! af'>[ <df g>] |
  <c af'>8[ <g bf>] af[ <df ef>] <c ef>[ <df ef>] |
  <<
    { c16 df bf df  c4 }
    \new Voice { \voiceFour ef4 s }
  >> r8 <ds fs> |
  <e g>8 q q q <ef g> <df g> |
  <c ef>8 <df ef> <c ef>4 r8 <ds fs> |
  <e g>8[ q q q] <ef g> r |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceFour 
  \partial 4. s4.
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2 s8 \clef treble f
  gf2. |
  f8 s8 s4 s8 f |
  gf2. |
  f2 * 1/2 <ef' af>4 ef, |
  d2. |
  ef2. |
  af4. af8 gf4 |
  
  \barNumberCheck 25
  f8 s8 s4 s8 f |
  gf2. |
  f8 s8 s4 s8 f |
  gf2. |
  f2 * 1/2 <df' af'>4 ff, |
  ff4 s2 |
  ff2 * 1/2 <b d af'>4 ff |
  ef2. |
  
  \barNumberCheck 33
  ef2. |
  ef2 s4 |
  s2. * 6 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 7 |
  \voiceThree ef4. s |
}

leftHandLower = \relative { 
  \partial 4. r8 ef4-\slurShapeA (
  af8 df, af df, af'[ ef']^~ |
  <ef, ef'>2) ef'4-\slurShapeB ( |
  bf'8 ef, bf ef, bf'[ f']~ |
  <f, f'>2) af4( |
  df,8 gf df' gf df' df |
  cf4. cf8\noBeam cf bf |
  bf8 af g f ef bf |
  ef,8 ef' df'4) r8 ef,_( |
  
  \barNumberCheck 9
  af8 df, af df, af'[ ef']^~ |
  <ef, ef'>2)~ ef'4 |
  ef8-\slurShapeC ( af, ef af, ef'[ bf']^~ |
  <bf, bf'>2) df4( |
  gf,8 cf gf' cf gf' gf |
  ff4. ff8 ff[ ef] |
  ef8 df c bf af ef |
  af,8[ af'] ef') r gf,8 \clef treble <c' ef bf'> |
  
  \barNumberCheck 17
  \clef bass f,,8[ \clef treble <df'' ef bf'>]-.( <c ef a>[-. <df ef bf'>]-.
    <c ef a>[-.) f,] |
  \voiceThree gf4 <bf ef> bf' |
  \oneVoice f,8 <df' ef bf'>]-.( <c ef a>[-. <df ef bf'>]-.
    <c ef a>[-.) f,] |
  \voiceThree gf4 <c ef> af' |
  f,8 <cf' ef af> \tuplet 3/2 { ef' df cf } ef,, <af cf gf'> |
  \oneVoice d,8 <af' cf f>4 <cf f cf'>8 <f cf' f>4 |
  \voiceThree ef,8 <bf' gf'>4 <df bf'> <gf df'>8 |
  af,8[ gf'] c[ af,] gf[ <c af'>] |
  
  \barNumberCheck 25
  \oneVoice f,8 <df' ef bf'>]-.( <c ef a>[-. <df ef bf'>]-. <c ef a>[-.) f,] |
  \voiceThree gf4 <bf ef> bf' |
  \oneVoice f,8 <df' ef bf'>]-.( <c ef a>[-. <df ef bf'>]-.
    <c ef a>[-.) f,] |
  \voiceThree gf4 <c ef> af' |
  f,8 <af df af'> \tuplet 3/2 { df' bf af } ff, <cf' eff af cf> |
  \oneVoice ff,8 <df' ff bff> r4 r |
  \voiceThree ff,8 <b d af'> \tuplet 3/2 { d' cs b } ff, <b d af' d> |
  \oneVoice ef,8 <c' ef af ef'>4~ <c ef af>8 <c ef>4 |
  
  \barNumberCheck 33
  ef,8 <bf' af'>4 q8 <df bf'>4 |
  ef,8 df' g4 \clef bass ef,4 |
  af8 df, af df, af'[ ef'] |
  ef,2 ef'4 |
  bf'8 ef, bf ef, bf'[ f'] |
  f,2 af4 |
  df,8 gf df' gf df' df |
  cf4. cf8 cf[ bf] |
  
  \barNumberCheck 41
  bf8[ af] g[ f] ef[ bf] |
  ef,8[ ef'] df' r ef,4_( |
  af8 df, af df, af'[ ef']^~ |
  <ef, ef'>2)~ ef'4 |
  gf8( cf, gf cf, gf'[ df']^~ |
  <df, df'>2) e4 |
  a,8 d a' d a'[ a] |
  g8[ g,] c[ ef!] ef[ ef] |
  
  \barNumberCheck 49
  ef8[ df] c[ bf] af[ ef] |
  af,8 af' ef'4 e8 e, |
  a,8 d a' d a'[ a] |
  g8[ g,] c[ ef] ef[ ef] |
  ef8[ df] c[ bf] af[ ef] |
  af,8[ af'] ef' r r af_( |
  g8 c, g c,~ <c c'>[ <ef ef'>] |
  \voiceFour af8[ ef] af) \oneVoice  r r af'_( |
  
  \barNumberCheck 57
  g8[ c, g c,]~ <c c'>) r |
  r4 r8 q8 q[ <ef ef'>] |
  <af ef'>2.~ |
  q2. |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 4. s4.\p
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  s4. s\< |
  
  \barNumberCheck 17
  s2.\sf |
  s2 s4\< |
  s2.\sf\> |
  s4 s\! s4\< <>\! |
  s2. * 4 |
  
  \barNumberCheck 25
  s2.\pp |
  s2. * 7 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. |
  s4 s16 s8.-\tweak X-offset 0.5 \p s4 |
  s2. |
  s4 s16 s8.\pp s4 |
  s2. |
  s4 s2\cresc |
  s2.\mf |
  s4 s16 s8.\p s4 |
  
  \barNumberCheck 49
  s2. |
  s4 s2\cresc |
  s2.\mf |
  s4 \tag layout { s2^\dimPp } \tag midi { s2\pp } |
  s2. * 2 |
  s2.\pp |
  s2. |
  
  \barNumberCheck 57
  s16 s8.^\smorz s2 |
  s4. s\< |
  s8 s\! s4 s\> |
  s2 s4\! |
}

% MIDI only 
pedal = {
  \partial 4. s4.
  s2. |
  s4 s2\sd |
  s2.\su |
  s4 s\sd s\su\sd |
  s2.\su |
  s2\sd s4\su |
  s2. |
  s2\sd s4\su |
  
  \barNumberCheck 9
  s2. |
  s4 s2\sd |
  s2.\su |
  s4 s\sd s\su\sd |
  s2.\su |
  s2\sd s4\su |
  s2. |
  s4.\sd s8\su s4\sd |
  
  \barNumberCheck 17
  s2.\su |
  s4\sd s\su\sd s\su\sd |
  s2.\su |
  s4\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  s2.\su\sd |
  s4.\su\sd s8\su s4\sd |
  
  \barNumberCheck 25
  s2.\su |
  s4\sd s\su\sd s\su\sd |
  s2.\su |
  s4\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s4\su\sd s2\su |
  s2\sd s4\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 33
  s2.\su\sd
  s4.\su\sd s\su |
  % Tempo I
  s2. |
  s4 s2\sd |
  s2.\su |
  s4 s\sd s\su\sd |
  s2.\su |
  s2\sd s4\su |
  
  \barNumberCheck 41
  s2. |
  s4.\sd s\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo \tempoMarkup 4 = 52
  \partial 4. s4.
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  s4. \tempo "Poco più" 4 = 66 s |
  
  \barNumberCheck 17
  \textMark \markup \tempo-markup "vivo" #2 #0 66 
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. |
  s4. \tempo "Tempo I" 4 = 52 s |
}

forceBreaks = {
  \partial 4. s4. 
  s2. * 5 \break
  s2. * 6 \break
  s2. * 5 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 5 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

etudeEightNotes =
\score {
  \header {
    title = \markup { Nº 8 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 8"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeEightMidi =
\book {
  \bookOutputName "etude-op8-no08"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
