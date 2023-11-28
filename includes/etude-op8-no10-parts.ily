%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "arpeggio.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -2) (0 . -0.5) (2 . 2.5) (0 . -2)) \etc
slurShapeB = \shape #'((0 . 0) (2 . -1) (0 . 1) (0 . 0)) \etc
slurShapeC = \tweak positions #'(2 . 2) \etc
slurShapeD = \tweak positions #'(2 . 2) \etc
slurShapeE = \shape #'((0 . -2) (1 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'((0 . -2) (1 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'((0 . -2) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 0)) \etc
slurShapeK = \shape #'((0 . -0.5) (0 . -7) (0 . -2) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . -11) (0 . -4) (0 . 0)) \etc
slurShapeM = \shape #'((0 . -2) (1 . -10) (0 . -4) (0 . 0)) \etc
slurShapeN = \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/8
  \key df \major
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #3 #0 184
  \tempo 8 = 184
  <c' e>16-. <df f>-. <d gf>-. <ef g>-. <e af>-. <f df'!>-. |
  <f a>16-. <gf bf>-. <g cf>-. <af c>-. <a df>-. <bf gf'!>-. |
  <g b>16-. <af c>-. <a df>-. <bf d>-. <b ef>-. <c af'!>-. |
  <gf' bf>16-.-> <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-. |
  <c e>16-. <df f>-. <d gf>-. <ef g>-. <e af>-. <f df'!>-. |
  \ottava 1 <f a>16-. <gf bf>-. <g cf>-. <af c>-. <a df>-. <bf gf'!>-. |
  <g b>16-. <af c>-. <a df>-. <bf d>-. <b ef>-. <c af'!>-. |
  <gf' bf>16-.-> <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-. |
  
  \barNumberCheck 9
  \ottava 0 <c, e>16-\slurShapeA ( <df f> <gf bf> <df f> <gf bf> <df f> |
  <df' f>16 <cf ef> <bf d> <cf ef> <cf, ef>8) |
  <a df>16( <cf ef> <f a> <a, df> <f' a> <a df> |
  <af! c> <gf bf> <f a> <gf bf> <gf, bf>8) |
  <bff df>16-\slurShapeB ( <af c> <bff df> <df f> <c e> <df f> |
  <c e>16 <df f> <f bff> <e af> <f bff> <gf bf> |
  <f bff>16 <e af> <c' e> <e, af> <c' e> <gf bf> |
  <f bff>16 <e af> <af, c> <c, e> <af' c> <c, e>) |
  
  \barNumberCheck 17
  <c e>16-. <df f>-. <d gf>-. <ef g>-. <e af>-. <f df'!>-. |
  <f a>16-. <gf bf>-. <g cf>-. <af c>-. <a df>-. <bf gf'!>-. |
  <g b>16-. <af c>-. <a df>-. <bf d>-. <b ef>-. <c af'!>-. |
  <gf' bf>16-.-> <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-. |
  <c e>16-. <df f>-. <d gf>-. <ef g>-. <e af>-. <f df'!>-. |
  \ottava 1<f a>16-. <gf bf>-. <g cf>-. <af c>-. <a df>-. <bf gf'!>-. |
  <g b>16-. <af c>-. <a df>-. <bf d>-. <b ef>-. <c af'!>-. |
  <gf' bf>16-.-> <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-. |
  
  \barNumberCheck 25
  \ottava 0 <g,, b>16-\slurShapeA ( <af c> <df f> <af c> <df f> <af c> |
  <af' c>16 <gf bf> <f a> <gf bf> <gf, bf>) r |
  <e af>16( <gf bf> <c e> <e, af> <c' e> <e af> |
  <ef g>16 <df f> <c e> <df f> <df, f>) r |
  <ff af>16 <ef g> <ff af> <af c> <g b> <af c> |
  <g b>16 <af c> <c ff> <b ef> <c ff> <df f> |
  <c ff>16 <b ef> <g' b> <b, ef> <g' b> <ef g> |
  <df f>16 <c ff> <af' c> <c, ff> <af' c> <af, c> |
  
  \barNumberCheck 33
  <af c>16-. <g b>-. <af c>-. <ef g>-. <af c>-. <ef g>-. |
  <df f>16-. <c e>-. <df f>-. <af' c>-. <df, f>-. <g b>-. |
  <af c>16-. <g b>-. <af c>-. <ef g>-. <af c>-. <ef g>-. |
  <df f>16-. <c e>-. <df f>-. <af' c>-. <df, f>-. <g b>-. |
  <gf! bf!>16( <df f> <gf bf> <df f> <gf bf>8)\noBeam |
  <gf bf>16( <c, e> <gf' bf> <c, e> <gf' bf>8)\noBeam |
  <f a>16( <c e> <f a> <c e> <f a>8)\noBeam |
  <a df>16( <df, f> <a' df> <df, f> <a' df>8)\noBeam |
  
  \barNumberCheck 41
  <df f>16-. <c e>-. <df f>-. <af c>-. <df f>-. <af c>-. |
  <gf bf>16-. <f a>-. <gf bf>-. <df' f>-. <gf, bf>-. <c e>-. |
  <df f>16-. <c e>-. <df f>-. <af c>-. <df f>-. <af c>-. |
  <gf bf>16-. <f a>-. <gf bf>-. <df' f>-. <gf, bf>-. <c e>-. |
  <cf ef!>16( <gf bf> <cf ef> <gf bf> <cf ef>8)\noBeam |
  <cf ef>16( <f, a> <cf' ef> <f, a> <cf' ef>8)\noBeam |
  <bf d>16( <f a> <bf d> <f a> <bf d>8)\noBeam |
  <a df!>16( <gf bf> <a df> <gf bf> <a df> <gf bf>) |
  
  \barNumberCheck 49
  <a df>16( <af c!> <a df> <df, f> <a' df> <f a> |
  <f a>8 <gf bf>4 |
  <df f>8\noBeam <cf' ef>8 <bf eff>32 <bff df> <af c!> <aff cf> |
  <gf bf>4.) |
  <a df>16( <af c> <a df> <df, f> <a' df>8~\noBeam |
  q16 <df, f> <a' df> <df, f> <a' df>8)\noBeam |
  <df f>16( <c e> <df f> <f, a> <df' f>8~\noBeam |
  q16 <f, a> <df' f> <f, a> <df' f> <f, a> |
  
  \barNumberCheck 57
  q16 <gf bf> <df' f>4) |
  <df' f>16( <gf, bf>) <df' f>( <gf, bf>) <df' f>( <gf, bf>) |
  <f, a>16( <gf bf> <c e>4) |
  <c' e>16( <gf bf>) <c e>( <gf bf>) <c, e>( <c, e>) |
  <c e>16( <df f> <d gf> <ef g> <e af> <f df'!> |
  <f a>16 <gf bf> <g cf> <af c> <a df> <bf gf'!> |
  <g b> <af c> <a df> <bf d> <b ef> <c af'!> |
  <gf' bf>16-. <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-.) |
  
  \barNumberCheck 65
  <c e>16( <df f> <d gf> <ef g> <e af> <f df'!> |
  \ottava 1 <f a>16 <gf bf> <g cf> <af c> <a df> <bf gf'!> |
  <g b> <af c> <a df> <bf d> <b ef> <c af'!> |
  <gf' bf>16-. <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-.) |
  \ottava 0 <c, e>16( <df f> <gf bf> <df f> <gf bf> <df f> |
  <df' f>16 <cf ef> <bf d> <cf ef> <cf, ef>) r |
  <a df>16( <cf ef> <f a> <a, df> <f' a> <a df> |
  <af! c> <gf bf> <f a> <gf bf> <gf, bf>) r |
  
  \barNumberCheck 73
  <bff df>16 <af c> <bff df> <df f> <c e> <df f> |
  <c e>16 <df f> <f bff> <ef af> <f bff>8 |
  \ottava 1 <bff df>16 <af c> <bff df> <df f> <c e> <df f> |
  <c e>16 <df f> <f bff> <bff, df> \ottava 0 <df, f> <f,bff> |
  <df' f>16 <c e> <df f> <c e> <df f> <f, a> |
  <gf bf>16 <f a> <gf bf> <df' f> <gf, bf> <c e> |
  <df f>16 <c e> <df f> <c e> <df f> <f, a> |
  <gf bf>16 <f a> <gf bf> <df' f> <gf, bf> <c e> |
  
  \barNumberCheck 81
  <df f>16 <c e> <df f> <c e> <df f> q |
  <eff gf>16 <df f> <eff gf> <gf, bf!> <eff' gf> <gf, bf> |
  <ef' g>16 <d fs> <ef g> <d! fs> <ef g> q |
  <ff af>16 <ef g> <ff af> <af, c!> <ff' af> <af, c> |
  <e' af>16 <ef g> <e af> <af, c> <e' af>8~ |
  q16 <af, c> <e' af> <af, c> <e' af>8~ |
  q16 <c e> <af' c> <c, e> <af' c>8~ |
  q16 <e af> <c' e> <e, af> <af, c> <c, e> |
  
  \barNumberCheck 89
  <c e>16-. <df f>-. <d gf>-. <ef g>-. <e af>-. <f df'!>-. |
  <f a>16-. <gf bf>-. <g cf>-. <af c>-. <a df>-. <bf gf'!>-. |
  <g b>16-. <af c>-. <a df>-. <bf d>-. <b ef>-. <c af'!>-. |
  <gf' bf>16-.-> <f bff>-. <ff af>-. <ef g>-. <eff gf>-. <df f>-. |
  \ottava 1 <c e>16^\f <df f> <d gf> <ef g> <e af> <f df'!> |
  <f a>16 <gf bf> <g cf> <af c> <a df> <bf gf'!> |
  <g b>16 <af c> <a df> <bf d> <b ef> <c af'!> |
  <gf' bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> \ottava 0 |
  
  \barNumberCheck 97
  <g,, b>16 <af c> <a df> <bf d> <b ef> <c af'!> |
  <gf' bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> |
  \clef bass <g,, b>16 <af c> <a df> <bf d> <b ef> <c af'!> |
  \clef treble <gf' bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> |
  \clef bass s4. |
  \clef treble <gf bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> |
  <gf' bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> |
  <eff gf>16( <bff df> <eff gf> <bff df> <eff gf>8) |
  
  \barNumberCheck 105
  <eff gf>16( <af, c> <eff' gf> <af, c> <eff' gf>8) |
  <df f>16( <af c> <df f> <af c> <df f>8) |
  <df f>16( <aff cf> <df f> <aff cf> <df f>8) |
  <df f>16( <gf, bf> <df' f> <gf, bf> <df' f>8) |
  <c e>16( <gf bf> <c e> <gf bf> <c e>8) |
  <df f>16( <af c> <df f> <af c> <df f>8) |
  <df, f>16( <aff cf> <df f> <aff cf> <df f>8) |
  <df f>16( <gf, bf> <df' f> <gf, bf> <df' f>8) |
  
  \barNumberCheck 113
  <c e>16( <gf bf> <c e> <gf bf> <c e>8) |
  <df f>16( <af c> <df f> <af c> <df f> <af c> |
  <df f> <aff cf> <df f> <aff cf> <df f> <aff cf> |
  <df f> <gf, bf> <df' f> <gf, bf> <df' f> <gf, bf> |
  <c e> <gf bf> <c e> <gf bf> <c e> <gf bf> |
  <f af df f>16) c' <ef g>^( <e af> <f a> <g bf> |
  <f df'>16) c' \ottava 1 <ef g>^( <e af> <f a> <g bf> |
  <f df'>16) c' <ef g>^( <e af> <f a> <g bf> |
  
  \barNumberCheck 121
  <f df'>8.)\noBeam \ottava 0 <af,, df af'>\arpeggio | 
  <f, af df>8. r16 r8 |
  \bar "|."
}

leftHandUpper = \relative {
  s4. * 8 | 
  
  \barNumberCheck 9
  s4. * 8 |
  
  \barNumberCheck 17
  s4. * 8 |
  
  \barNumberCheck 25
  s4. * 8 |
  
  \barNumberCheck 33
  s4. * 8 |
  
  \barNumberCheck 41
  s4. * 8 |
  
  \barNumberCheck 49
  s4. * 8 |
  
  \barNumberCheck 57
  s4. * 8 |
  
  \barNumberCheck 65
  s4. * 8 |
  
  \barNumberCheck 73
  s4. * 8 |
  
  \barNumberCheck 81
  s4. * 8 |
  
  \barNumberCheck 89
  \voiceFour 
  s4 af16_\sf df,,_\sf |
  s4 gf'16_\sf df,_\sf |
  s4 af''16_\sf df,,_\sf |
  s4. |
  s4 af''16 df,, |
  s4 df'16 df, |
  s4 af''16 df,, |
  s4. |
  
  \barNumberCheck 97
  s4 af''16 df,, |
  s4. |
  s4 af''16 df,, |
  s4. |
  \oneVoice R4. |
  s4. * 3 |
  
  \barNumberCheck 105
  s4. * 8 |
  
  \barNumberCheck 113
  s4. * 5 |
  % Create the slurs that go from the upper staff to the lower.  We're just
  % trying to get close, then adjust the shape with the \shape command.
  \staffUp \hideNoteHead f'8-\slurShapeK _( s4 |
  <<
    { 
      \staffDown \hideNoteHead df8) s4 | 
    }
    \new Voice { 
      \staffUp \hideNoteHead f'8-\slurShapeL ( s4 | 
      << 
        { 
          \staffDown \hideNoteHead df8) s4 | 
        }
        \new Voice { 
          \staffUp \hideNoteHead f'8-\slurShapeM ( s4 | 
          \staffDown \hideNoteHead df8) s4 |
        }
      >>
    }
  >>
}

leftHandLower = \relative {
  \omit TupletBracket
  \stemDown af16-. df,-. cf'-. df,!-. af-. df,-. |
  df''16-. df,-. df'-. gf,!-. gf,-. df-. |
  ef''16-. af,-. gf'!-. af,!-. af,-. df,-. |
  \tuplet 5/6 { af'16-. df-. af'-. df-. af'-. } |
  af16-. cf,-. df,!-. cf'-. af,-. df,-. |
  df'''16-. bf,-. gf'!-. gf,-. df-. df,-. |
  \clef treble ef'''16-. gf,!-. \clef bass af,!-. c-. af,-. df,-. |
  af'16-. f'-. \clef treble df'-. af'-. df-. af'-. |
  
  \barNumberCheck 9
  \clef bass df,,,,16 df' bf' f bf' bf, |
  ef,, ef' cf' gf gf' f,, |
  f'16 f' ef f, a r |
  gf,16 df' bf' df, df' g,, |
  df''16 f, g, df'' bff df, |
  bff''16 df, f, df' g,, af |
  gf'16 c af gf' c af,, |
  gf'16 c r8 r |
  
  \barNumberCheck 17
  af16-. df,-. cf'-. df,!-. af-. df,-. |
  df''16-. df,-. df'-. gf,!-. gf,-. df-. |
  ef''16-. af,-. gf'!-. af,!-. af,-. df,-. |
  \tuplet 5/6 { af'16-. df-. af'-. df-. af'-. } |
  af16-. cf,-. df,-. cf'-. af,-. df,-. |
  df'''16-. bf,-. gf'!-. gf,-. df-. df,-. |
  \clef treble ef'''16-. gf,!-. \clef bass af,!-. c-. af,-. df,-. |
  af'16-. f'-. \clef treble df'-. af'-. df-. af'-. |
  
  \barNumberCheck 25
  \clef bass \stemNeutral af,,,,16 af' f' c f' f, |
  bf,,16 bf' gf' df df' c,, |
  c'16 c' bf c, e r |
  df, af' f' af, af' d,, |
  af''16 c, d, af'' ff af, |
  c'16 af d, c' af' ef,, |
  ef'16 ef df' g df ef, |
  af,16 ff' c' af ff' ef |
  
  \barNumberCheck 33
  f,,16-. f'-. c-. c'-. f,-. c-. |
  \tuplet 5/6 { f16-. df-. f,-. df'-. b'-. } |
  f,16-. f'-. c-. c'-. f,-. c-. |
  \tuplet 5/6 { f16-. df-. f,-. df'-. b'-. } |
  <f,, f'>16( df'' gf, df gf' gf,) |
  <f, f'>16( c'' gf c, gf'' gf,) |
  <f, f'>16( c'' f, c f' f,) |
  f16( ef' a f f'8)\noBeam |
  
  \barNumberCheck 41
  bf,,16-. bf'-. f-. f'-. bf,-. f-. |
  \tuplet 5/6 { bf-. gf-. bf,-. gf'-. e'-. } |
  bf,16-. bf'-. f-. f'-. bf,-. f-. |
  \tuplet 5/6 { bf16-. gf-. bf,-. gf'-. e'-. } |
  <bf,, bf'>16( gf'' cf, gf cf' cf,) |
  <bf, bf'>16( f'' cf f, cf'' cf,) |
  <bf, bf'>16( f'' bf, f bf' bf,) |
  <bf, bf'>16( gf'' df df' gf, df) |
  
  \barNumberCheck 49
  cf16-\slurShapeC ( f df df' f, df) |
  bf16-\slurShapeD ( gf' df df' gf, df) |
  af16( df cf') df,,-\slurShapeH ( df' df') |
  gf,,16( df' gf df df' gf,) |
  g,16-\slurShapeE ( df' df' df, df' a |
  f16 a f' a, f' f,) |
  g,16-\slurShapeF ( f' f' f, f' df |
  a16 df a' df, a'8)\noBeam |
  
  \barNumberCheck 57
  af,,16-\slurShapeG ( gf' df' gf, bf' df,) |
  \clef treble <df f>16( <gf bf>) q( <df' f>) <df, f>( <gf bf>) |
  \clef bass af,,16-\slurShapeN ( gf' c gf bf' c,) |
  \clef treble <c e>16( <gf' bf>) q( <c e>) <gf bf>8\noBeam |
  \clef bass af,16( df, cf' df,! af df,) |
  df''16( df, df' gf, gf, df) |
  ef''16( af, gf'! af, af, df, |
  \tuplet 5/6 { af'16 df af' df af') } |
  
  \barNumberCheck 65
  af16-\slurShapeI ( cf, df,! cf' af, df,) |
  df'''16-\slurShapeJ ( bf, gf'! gf, df df,) |
  \clef treble \stemDown ef'''16( gf,! \clef bass af,! c af, df, |
  af'16 f' \clef treble df' af' df af') |
  \stemNeutral \clef bass df,,,,16 df' bf' f bf' bf, |
  ef,, ef' cf' gf gf' f,, |
  f'16 f' ef f, a8 |
  gf,16 df' bf' df, df' g,,\noBeam |
  
  \barNumberCheck 73
  df''16 f, g, df'' bff df, |
  f'16 bff, df, bff' f' g, |
  \clef treble df''16 f, g, df'' bff df, |
  f'16 bff, df,4 |
  \clef bass df16 f, af, a' f af,! |
  df'16 gf, af, bf' gf af, |
  df'16 f, af, a' f af,! |
  df'16 gf, af, bf' gf af, |
  
  \barNumberCheck 81
  df'16-- f, af, cf'-- f, af, |
  bff'16-- gf af, bf'-- gf af, |
  ef''16-- g, af, df'-- g, af, |
  \tuplet 5/6 { cf'16-- af af, c'-- af, } |
  af16 gf'! c gf e' c |
  \clef treble gf16 e' c' e, c' af |
  c,16 af' e' af, e' c |
  e, c' af'4-> |
  
  \barNumberCheck 89
  \voiceThree 
  \clef bass af,,16-. df,-. cf'-. df,!-. af df,, |
  df'''16-. df,-. df'-. gf,-. gf, df, |
  ef'''16-. af,-. gf'-. af,-. af, df,, |
  \oneVoice r16 <af'' df af'>8\noBeam <df af' df>\noBeam <af' df af'>16 |
  \voiceThree af'16 cf, df,! cf' af, df,, |
  df''''16 bf, gf'! gf, df, df, |
  \clef treble ef''''16 gf,! \clef bass af,! c af, df,, |
  \oneVoice r16 <af'' df af'>8\noBeam \clef treble <af' df af'>\noBeam 
    <af' df af'>16 |
  
  \barNumberCheck 97
  \voiceThree \clef bass ef16 af, gf'! af, af, df,, |
  \oneVoice r16 <af'' df af'>8\noBeam <df af' df>\noBeam <af' df af'>16 |
  \voiceThree ef16 af, gf'! af, af df,, |
  \oneVoice r16 af''8\noBeam df\noBeam af'16 |
  \showStaffSwitch \staffUp <gf bf>16 <f bff> <ff af> <ef g> <eff gf> <df f> |
  \hideStaffSwitch \staffDown R4. * 2 |
  <df, df'>16 bff'' eff, bff eff' eff, |
  
  \barNumberCheck 105
  <df, df'>16 af'' eff af, eff'' eff, |
  <df, df'>16 af'' df, af df' df, |
  <df, df'>16 aff'' df, aff df' df, |
  <df, df'>16 gf' df gf, df'' df, |
  <df, df'>16 gf' c, gf c' c, |
  <df,, df'>16 af''' df, af df' df, |
  <df,, df'>16 df'' aff df, aff'' aff, |
  <df,, df'>16 df'' gf, df gf' gf, |
  
  \barNumberCheck 113
  <df, df'>16 c'' gf df gf' gf, |
  <df df'>8.\noBeam <af af'> |
  <df df'>8.\noBeam <aff aff'> |
  <df df'>8.\noBeam <gf, gf'> |
  <c c'>8.\noBeam <gf gf'> |
  <df df'>8\noBeam <cf''' ef>16 <bf d> <a df> <af c> |
  \voiceFour <df, af'>8\noBeam \clef treble <cf'' ef>16 <bf d> <a df> <af c> |
  \voiceThree <df, af'>8\noBeam \ottava 1 \oneVoice <cf'' ef>16 <bf d> <a df>
    <af c> |
  
  \barNumberCheck 121
  \voiceThree <df, af'>8.\noBeam \ottava 0 \clef bass \oneVoice 
    <df,, af' f'>\arpeggio |
  <df, af' df>8. r16 r8 |
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
  s4.-\tweak Y-offset -2 \p |
  s4. |
  s4.\< |
  s4.\> <>\! |
  s4. * 2 |
  s4.\< |
  s4.\> <>\! |
  
  \barNumberCheck 9
  s4. * 8 |
  
  \barNumberCheck 17
  s4. * 2 |
  s4.\< |
  s4.\> <>\! |
  s4. * 2 |
  s4.\< |
  s4.\> <>\! |
  
  \barNumberCheck 25
  s4. * 8 |
  
  \barNumberCheck 33
  s4.\f |
  s4. * 3 |
  s4.\pp |
  s4. * 2 |
  s4\< s8\! |
  
  \barNumberCheck 41
  s4.\f |
  s4. * 3 |
  s4.\pp |
  s4. * 2 |
  s4.\cresc |
  
  \barNumberCheck 49
  s4. * 8 |
  
  \barNumberCheck 57
  s4. * 4 |
  s4.\pp |
  s4. |
  s4.\< |
  s4.-\tweak Y-offset -5 \> <>\! |
  
  \barNumberCheck 65
  s4. * 8 |
  
  \barNumberCheck 73
  s4.\cresc |
  s4. * 3 |
  s4.\f |
  s4. * 3 |
  
  \barNumberCheck 81
  s4.\cresc |
  s4. * 7 |
  
  \barNumberCheck 89
  s4.\ff |
  s4. * 7 |
  
  \barNumberCheck 97
  s4.\p |
  s4. * 2 |
  s4.\dim |
  s4.\pp |
  s4. |
  s4.\ppp |
  s4.\pp |
  
  \barNumberCheck 105
}

% MIDI only 
pedal = {
  s4. * 8 |
  
  \barNumberCheck 9
  s4.\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s4.\su |
  
  \barNumberCheck 17
  s4. * 8 |
  
  \barNumberCheck 25
  s4.\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  
  \barNumberCheck 33
  s4. * 4 \su |
  s4.\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  
  \barNumberCheck 41
  s4. * 4 \su |
  s4.\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  
  \barNumberCheck 49
  s8.\su\sd s\su\sd |
  s4.\su\sd |
  s8.\su\sd s\su\sd |
  s4.\su\sd |
  s4.\su\sd  |
  s4. |
  s4.\su\sd |
  s4. |
  
  \barNumberCheck 57
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4. * 4 \su |
  
  \barNumberCheck 65
  s4. * 4 |
  s4.\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  
  \barNumberCheck 73
  s8.\su\sd s\su\sd |
  s4.\su\sd |
  s8.\su\sd s\su\sd |
  s4.\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  
  \barNumberCheck 81
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s8.\su\sd s\su\sd |
  s4. * 4 \su\sd |
  
  \barNumberCheck 89
  s4. * 8 \su |
  
  \barNumberCheck 97
  s4. * 7 |
  s4.\sd |
  
  \barNumberCheck 105
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  
  \barNumberCheck 113
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su\sd |
  s4.\su |
}

forceBreaks = {
  s4. * 5 \break
  s4. * 5 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  s4. * 6 \break
  s4. * 6 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  s4. * 5 \break
  s4. * 5 \break
  s4. * 6 \break
  s4. * 7 \break
}

etudeTenNotes =
\score {
  \header {
    title = "Nº 10"
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 10"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeTenMidi =
\book {
  \bookOutputName "etude-op8-no10"
  \score {
    \keepWithTag midi
    \articulate <<
      \getMidiArpeggios 16
      \new Staff = "upper" << \rightHand \dynamics \pedal >>
      \new Staff = "lower" << \leftHand \dynamics \pedal >>
    >>
    \midi {}
  }
}
