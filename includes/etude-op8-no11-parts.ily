%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 6)) \etc
slurShapeD = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . -1.5)) \etc
slurShapeE = \shape #'((0 . 2) (0 . 0) (0 . 0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key bf \minor
  \set Staff.extraNatural = ##f
  \eighthsInTwos.34
}

rightHandUpper = \relative {
  \omit TupletBracket
  \voiceOne \grace { s8 } df''8.-\slurShapeA ( df16 df4 f16 df 
    \tuplet 3/2 { f ef bf } |
  bf8~ \tuplet 3/2 { bf16 b c } ef df~ df8~ df4) |
  <ef, ef'>16 <d d'>8 q16  q <df df'>8 q16  q <c c'>8 q16 |
  cf'8. gf16 cf4. bf8 |
  a8. a16 a4 bf |
  ef,8. f16 gf2 |
  <gf, gf'>16 <f f'>8 q16  <af af'> <gf gf'>8 q16  <f f'> <e e'>8 q16 |
  f'8. f16 f4 b\rest |
  
  \barNumberCheck 9
  df8.-\slurShapeB ( df16 df4 f16 df \tuplet 3/2 { f ef bf } |
  bf8~ \tuplet 3/2 { bf16 b c } df2) |
  <df, df'>16 <c c'>8 q16  q <bf bf'>8 q16  q <a a'>8 <bf bf'>16 |
  <df df'>16 <c c'>8 q16  q <bf bf'>8 q16  q <a a'> <c c'> <bf bf'> |
  q16 <bff bff'>8 q16  q <af af'>8 q16  q <g g'>8 q16 |
  q16 <gf gf'>8 q16  q <f f'>8 q16  q <e e'>8 af16 |
  f'4~( f16 gf e f  af8 af, |
  \omit TupletNumber
  \tuplet 3/2 { df16 ef df c df ef } <g, cs e>16)\noBeam a''-.( g-. fs-.
    fs-.[ e-.])  ef,( e |
    
  \barNumberCheck 17
  f4~ f16 gf e f  af8 af, |
  \tuplet 3/2 { df16 ef df c df ef } e)\noBeam b''-.( g-. fs-.  fs-.[ e-.])
    e,( es |
  \bar "||"
  \key e \major
  fs4~ fs16 g es fs b8 b, |
  \tuplet 3/2 { e16 fs e ds e fs } gs2) |
  \bar "||"
  \key bf \minor
  bf4~( bf16 cf a bf <g ef'>8 ef |
  \tuplet 3/2 { af16 bf af g af bf } c2) |
  \undo \omit TupletNumber
  c4~( c16 d b c  f d \tuplet 3/2 { c f, a, } |
  c'4) b8\rest c-.( df-. c-.) |
  
  \barNumberCheck 25
  c4~( c16 d b c  f d \tuplet 3/2 { c f, a, } |
  c'4) \oneVoice r8 <e, bf' c>-.( <e bf' df>-. <e bf' c>-.) |
  \voiceOne c'4 \oneVoice r8 <ef, bf' c> <ef bf' df> <ef bf' c> |
  <ef a gf'>8-- <f a f'>-- <gf bf e>-- <gf bf ef>-- <gf bf df>-- <gf bf c>-- |
  \voiceOne df'8.( df16 df4  f16 df \tuplet 3/2 { f ef bf } |
  bf8~ \tuplet 3/2 { bf16 b c }  ef df~ df8~ df4) |
  <ef, ef'>16 <d d'>8 q16  q <df df'>8 q16  q <c c'>8 q16 |
  cf'8. gf16 cf4. bf8 |
  
  \barNumberCheck 33
  %% slur: SrcB
  a8.( a16 a4 bf |
  ef,8. f16 gf2) |
  <gf, gf'>16 <f f'>8 q16  <af af'>16 <gf gf'>8 q16  <f f'>16 <e e'>8 q16 |
  f'4~ f8 r \after 8 ^\rit r4 |
  df'8.-\slurShapeD (^\aTempo df16 df4  f16 df \tuplet 3/2 { f ef bf } |
  bf8~ \tuplet 3/2 { bf16 b c } df2) |
  <df, df'>16 <c c'>8 q16  q <bf bf'>8 q16  q <a a'>8 <bf bf'>16 |
  <df df'>16 <c c'>8 q16  q <bf bf'>8 q16  q <a a'> <c c'> <bf bf'> |
  
  \barNumberCheck 41
  bf'4 bf bf |
  bf8. c16 df2 |
  gf,4 gf gf |
  gf8. af16 bf2 |
  cf8. df16 ef4 r |
  \oneVoice R2. |
  \voiceOne f,4 f f |
  f4 b\rest b\rest |
  
  \barNumberCheck 49
  f4 f f |
  f4 b\rest b\rest |
  \oneVoice <f' a f'>4 r r |
  <f bf f'>4 r r |
  R2. * 2 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo \grace { s8 } <df' bf'>8 q q q <ef bf'> q |
  <df bf'>8 q q q q q |
  bf'8 <d, bf'> bf' <df, bf'> gf <c, gf'> |
  <cf gf'>8 cf <cf gf'> q q <bf gf'> |
  <a ef'>8 q q q <bf ef> q |
  bf8 bf <gf ef'> q q q |
  df'8 <f, df'> df' <gf, df'> c <e, c'> |
  <f c'>8 c' c4 s4 |
  
  \barNumberCheck 9
  <df bf'>8 q q q <ef bf'> q |
  df8 df <df bf'> q q q |
  bf'8 <c, gf'> gf' <bf, gf'> f' <a, f'> |
  e'8 <c e> e <bf e> ef ef |
  df8 <bff df> df <af df> df <g, df'> |
  df'8 <gf, df'> c <f, c'> c' c |
  <gf c>8 q q q q gf |
  <f af>8 q s16 cs'' b g  a8\noBeam <g, df'>8 |
  
  \barNumberCheck 17
  <af c>8 <gf! c> q q q gf |
  <f af>8 q <g cs>16\noBeam cs' b g  b8\noBeam <a, cs> |
  \key e \major
  %% Create enough space for the e sharp and natural accidentals
  <a d>8 q <a e'>[ s64 <a e'!>8 * 7/8] <a ds>8 a |
  <gs b>8 q <b fs'> q <b es> q |
  \key bf \minor 
  %% Same as measure 19 above
  <df gf>8 q <df af'>[ s64 <df af'!>8 * 7/8] df8 df |
  <c ef>8 q <c e bf'> q q <bf e> |
  <a f'>8 q q q f'4 |
  <bf, e>8 q s <e bf'> q q |
  
  \barNumberCheck 25
  <a, f'>8 q q q f'4 |
  <bf, e>8 q s2 |
  <bf ef!>8 q s2 |
  s2. |
  <df bf'>8 q q q q q |
  q8 q q q q q |
  bf'8 <d, bf'> gf <df gf> ef <c ef> |
  <cf ef>8 q ef ef ef( <bf ef>) |
  
  \barNumberCheck 33
  <a ef'>8 q q q <bf ef> q |
  bf8 bf <gf ef'> q q q |
  df'8 <f, df'> df' <gf, df'> c <e, c'> |
  <f c'>8 c' r4 r |
  <df bf'>8 q q q q q |
  q8 q q q q q |
  bf'8 <c, gf'> gf' <bf, gf'> f' <a, f'> |
  e'8 <c e> e <bf e> e e |
  
  \barNumberCheck 41
  <bf df>8 q <bf f'> q f' f |
  f8 df <df bf'> q q q |
  bf8 bf bf bf bf bf |
  bf8 bf <bf gf'> q q q |
  <cf gf'>4 r r |
  s2. |
  <f, a ef'>8 q q q q q |
  <f bf d>8 q c'\rest <bf d> q q |
  
  \barNumberCheck 49
  <f a ef'>8 q q q q q |
  <f bf d>8 q c'\rest <bf d> q q16 c\rest |
  s2. * 4 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree \grace { s8 } <f f'>8 q q q <gf gf'> q |
  <f f'>8 q q q q q |
  <gf gf'>8 q q q <gf ef'> q |
  <gf ef'>8 q q q q q |
  df'4 cf bf |
  gf8. f16 ef2 |
  <bf bf'>8 q q q <c bf'> q |
  q8 q <f a> <f f'> q q |
  
  \barNumberCheck 9
  <f f'>8 q q q <gf gf'> q |
  <f f'>8 <bf f'> <bf gf'> q q q |
  s2. * 2 |
  f4 f ff |
  ef4 af~ af |
  r16 af~\noBeam af8~\noBeam af2 |
  s2. |
  
  \barNumberCheck 17
  r16 af~\noBeam af8~\noBeam af2 |
  s2. |
  % key of e major
  s2. * 2 |
  % key of bf minor
  s2. * 2 |
  r16 c~\noBeam c8~\noBeam c4 s4 |
  s2. |
  
  \barNumberCheck 25
  r16 c~\noBeam c8~\noBeam c4 s4 |
  s2. * 3 |
  f4 af gf |
  f4 s2 |
  s2. * 2 |
  
  \barNumberCheck 33
  df4 cf-- bf |
  gf8. f16 s2 |
  s2. * 2 |
  f'4 af gf |
  f4 gf s |
  s2. * 2 |
  
  \barNumberCheck 41
  s2 f,4 |
  df'8 f f f f f |
  s2 ff,4 |
  df'8 df df df df df |
  s2. * 4 |
  
  \barNumberCheck 49
  s2. * 2 |
  <cf ef f a>4 r r |
  <bf d f bf>4 r r |
  s2. * 2 |
}

leftHandLower = \relative {
  \voiceFour \acciaccatura { bf,8 } bf2 \acciaccatura { bf8 } bf4 |
  \acciaccatura { bf8 } bf2. |
  bf2 bf4 |
  bf2. |
  <bf gf'>8 q q q q q |
  <bf bf'>8 q q q q q |
  bf4 ef, gf |
  f4 r r |
  
  \barNumberCheck 9
  \acciaccatura { bf8 } bf2 \acciaccatura { bf8 } bf4 |
  \acciaccatura { bf8 } bf4 ef2-> |
  \oneVoice <e bf' gf'>8 <e, df'> <df' gf> <e df'> <f df'> <f, df'> |
  <gf' df'> <gf, e'> <e' df'> <df bf'> <ef df'> <g, ef'> |
  \tupletOff
  \voiceFour \tuplet 3/2 { f'8 af, af,  f'' af, af,  ff'' af, af, } |
  \tuplet 3/2 { ef''8 af, af, } r af' af af |
  \undo \omit TupletNumber
  <df, af'>8\noBeam \tuplet 3/2 { c'16 bf16. af32 } af4. af8 |
  \oneVoice <df, af'>4 <a a'>16\noBeam a'-.( e'-. cs'-.  g'8-.)\noBeam bff,, |
  
  \barNumberCheck 17
  \voiceFour <af, af'>8\noBeam \tuplet 3/2 { c'16 bf16. af32 } af4. af8 |
  \oneVoice <df, af'>4 <a a'>16\noBeam a'-.( e'-. cs'-.  g'8-.)\noBeam a,, |
  \key e \major
  d8. d16 c4 b |
  e4 d8 gs d cs |
  \key bf \minor 
  gf'8. gf16 ff4 ef |
  af4 g gf8 <gf, c> |
  \voiceFour <f c'>8\noBeam \tuplet 3/2 { f'16 d16. c32 } c4 
    \oneVoice <a' c a'> |
  f,16 c' \tuplet 3/2 { gf' e' bf' } bf8 r gf,4 |
  
  \barNumberCheck 25
  \voiceFour <f, c'>8\noBeam \tuplet 3/2 { f'16 d16. c32 } c4 
    \oneVoice <a' c a'> |
  f,16 c' \tuplet 3/2 { gf' e' bf' } bf4 gf, |
  f,16 c' \tuplet 3/2 { gf' ef'! bf' } bf4 gf, |
  f4 c' \tuplet 3/2 { df8-- ef-- e-- } |
  \voiceFour f16( bf, f bf,)  af''( bf, f bf,)  gf''( bf, ef, bf) | 
  f''16( bf, f bf,  \oneVoice f <bf, bf'> f' bf  f' bf, f' f') |
  gf16 bf, gf bf,  bf' ef, bf ef,  gf' bf, ef, bf~ |
  <bf gf'>16 ef' gf, ef'  cf' ef, cf' gf'  gf4 |
  
  \barNumberCheck 33
  \voiceFour df16( ef, gf, bf,)  cf''( ef, gf, bf,)  bf''( ef, gf, bf,) |
  gf''16-\slurShapeC ( bf, bf, f''  \oneVoice ef bf ef, bf  ef bf' ef bf') |
  \omit TupletNumber
  \tuplet 3/2 { bf8( bf, bf,)  bf''( bf, ef,)  bf''( c, gf) } |
  \stemDown bf'16( c, f, c'  a' f b c  ef c-- df-- e--) |
  \voiceFour f16( bf, f bf,)  af''( bf, f bf,)  gf''( bf, ef, bf) |
  f''16\(( bf, f bf,)  gf''( bf, ef,) gf-\slurShapeE (  bf, ef,) bf' bf'\)
  gf'16 df e, gf  df e, df' df'  df, f, df' df' |
  e16 df gf, df'  df, gf, df' df'  gf, df gf, df' |
  
  \barNumberCheck 41
  f,16 df' gf f  c df df' df,  f c' df c |
  f,2. |
  ff,16 df' gf df  c df df' df,  ff c' df c |
  ff,2. |
  \oneVoice <ef ef'>16\noBeam ef, cf' gf' gf'4 r |
  R2. |
  f,,4 <c f> <cf f> |
  <bf f'>8.\noBeam f''16-> f2-> |
  
  \barNumberCheck 49
  <cf, f>4 q q |
  <bf f'>8.\noBeam f''16-> f2->~ |
  f8.\noBeam f16 f2~ |
  f2. |
  <bf,, f'>4 r r |
  q r r |
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2. |
  s2.\mf |
  s2. * 5 |
  
  \barNumberCheck 9
  s2. * 6 |
  s2.\mf |
  s4\dim s16-\tweak Y-offset 1 \pp s8.-\tweak Y-offset 2 -\tweak X-offset 0 
    \ppp s8 \tag layout { s } \tag midi { s\mf } |
  
  \barNumberCheck 17
  s2. |
  s4\dim s16\pp s8.-\tweak Y-offset 2 -\tweak X-offset 0 \ppp s4 |
  % key of e major
  s4. s\cresc |
  s2. |
  % key of bf major
  s4 s2\cresc |
  s4\f s2\dim |
  s2.\pp |
  s2. |
  
  \barNumberCheck 25
  s2. |
  s4. s\cresc |
  s2. |
  s2 s4\cresc |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 4 |
  s4\pp s2\ppp |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Andante cantabile" #2 #0 63
  \tempo 4 = 63
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 3
  s2 \tempo 4 = 58 s4 |
  \tempo 4 = 63
}

forceBreaks = {
  s2. * 3 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \pageBreak
  
  s2. * 3 \break
  s2. * 3 \break
  s2. * 3 \break
  s2. * 5 \break
}

etudeElevenNotes =
\score {
  \header {
    title = \markup { Nº 11 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 11"
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

%% The articulate script can't deal with a leading grace note
% \include "articulate.ly"

etudeElevenMidi =
\book {
  \bookOutputName "etude-op8-no11"
  \score {
    \keepWithTag midi
    % \articulate <<
    <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}
