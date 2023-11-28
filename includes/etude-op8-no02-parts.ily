%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"
\include "arpeggio.ily"

%%% Positions and shapes %%%

beamPositionsA = \once \override Beam.positions = #'(3.5 . 3.5)

%%% Music %%%

global = {
  \time 4/4
  \key fs \minor
  \set Staff.extraNatural = ##f
}

rightHandUpper = \relative {
  \subdivideBeamsEighths
  \tuplet 5/4 { \beamPositionsA fs'16-- gs-- cs-- fs, b } 
    \tuplet 3/2 { a-. e-. ds-.  gs-. d-. fs-. } cs2-> |
  \tuplet 5/4 { b'16-- cs-- fs-- b, e }
    \tuplet 3/2 { d16-. a-. gs-.  cs-. g-. b-. } fs2 |
  \tuplet 5/4 { 
    cs'16( d gs d fs  es gs, a cs b  a b e a, d  cs fs, gs b a |
    g16 a d g, cs  b d, e a g
  } fs4 es) |
  \tuplet 5/4 { \beamPositionsA fs16-- gs-- cs-- fs, b } 
    \tuplet 3/2 { a-. e-. ds-.  gs-. d-. fs-. } cs2-> |
  \tuplet 5/4 { b'16-- cs-- fs-- b, e }
    \tuplet 3/2 { d16-. a-. gs-.  cs-. g-. b-. } fs2 |
  \tuplet 5/4 { 
    fs16( gs cs fs, b  a cs, ds gs fs  e fs b e, a  gs cs, ds fs e |
    d16 e a d, gs  fs a,--^\rit bs-- e-- d--) 
  } cs2-> |
  
  \barNumberCheck 9
  \tuplet 5/4 { cs16 a' e' a, d } \tuplet 3/2 { cs e,-- fs--  a-- g-- fs-- }
    <fs, ds' b'>2 |
  \tuplet 5/4 { 
    \voiceOne b16 e c'->( e, b')  a, ds as'->( ds, a')  g, b g'->( b, fs')
      g, b ds->( b e) |
  }
  \oneVoice \tuplet 5/4 { e16 c' g' c, f } \tuplet 3/2 { e16 g, a  c bf a } 
    <a, fs'! d'>2 |
  \tuplet 5/4 { 
    \voiceOne d16 g ef'->( g, d')  c, fs! cs'!->( fs, c)  bf d bf'->( d, a')
      bf, e fs->( e g) |
    fs16 d' a' d, gs  a, d g d fs  bf, d fs d f  e, g e' g, cs |
    c,16 fs ef' fs, d'  c, fs cs'! fs, c'  bf, g' c g bf  g, ef' a ef g | 
    fs,16 d' a' d, gs!  a, d g d fs  bf, d fs d f  \clef bass 
      e,4 * 1/2 e'8 cs16 |
    fs,4 * 1/2 cs'8 d16  fs,4 * 1/2 es'8 fs16  \clef treble bs, fs' gs fs a
      bs,^\rit fs' b! fs bs |
  }
  
  \barNumberCheck 17
  \oneVoice \tuplet 5/4 { \beamPositionsA fs16--^\nonLegato gs-- cs-- fs, b } 
    \tuplet 3/2 { a-. e-. ds-.  gs-. d-. fs-. } cs2 |
  \tuplet 5/4 { b'16-- cs-- fs-- b, e }
    \tuplet 3/2 { d16-. a-. gs-.  cs-. g-. b-. } fs2 |
  \tuplet 5/4 { 
    e'16 fs b e, a  g b, cs fs e  b cs fs b, e  d fs, gs! cs b |
    b,16 g' d' g, cs^\rit  b d,-- es-- a-- gs--  
  } <a, fs'>2^\aTempo |
  \tuplet 5/4 { 
    as'16-- cs-- as'-- cs,-- g'--  fs as, b cs fs,  b d b' d, a'  g b, cs d a |
    g16 e' b' e, a  g b, cs fs e
  } <cs, fs as>2 |
  \tuplet 5/4 { b16 g' d' g, cs  b d, es a g } <as, fs'>2 |
  \tuplet 5/4 { b16 g' d' g, cs  b d, es a g } <as, fs'>2 |
  
  \barNumberCheck 25
  \set subdivideBeams = ##f
  r16 as cs <fs as>~  <as, cs fs as>[  as cs <fs as>~]  <as, cs fs as>[ as cs 
    <fs as>~]  <as, cs fs as> as cs as' |
  \tag layout { <as, fs'>1 | }
  \tag midi   { \midiArpeggio 32 <as, fs'>1 | }
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo 
  s1 * 8 |
  
  \barNumberCheck 9
  s1 |
  \tuplet 5/4 { b4 * 1/2 c'8 b16  a,4 * 1/2 as'8 a16  g,4 * 1/2 g'8 fs16
    g,4 * 1/2 ds'8 e16 } |
  s1 |
  \tuplet 5/4 { 
    d4 * 1/2 ef'8 d16  c,4 * 1/2 cs'8 c16  bf,4 * 1/2 bf'8 a16
      bf,4 * 1/2 fs'8 g16 |
    f4 * 1/2 a'8 gs!16  a,4 * 1/2 g'8 fs16  bf,4 * 1/2 fs'8 f16
      e,4 * 1/2 e'8 cs16 |
    c,4 * 1/2 ef'8 d16  c,4 * 1/2 cs'8 c16  bf,4 * 1/2 c'8 bf16
      g,4 * 1/2 a'8 g16 |
    fs,4 * 1/2 a'8 gs16  a,4 * 1/2 g'8 fs16  bf,4 * 1/2 fs'8 f16  \clef bass
      e,16 g e' g, cs |
    fs,16 bs cs bs d  fs, bs es bs fs'  \clef treble bs,4 * 1/2 gs'8 a16
      bs,4 * 1/2 b'8 bs16 |
  }
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  \set tieWaitForNote = ##t
  s16 as,8. * 1/3~\noBeam cs8~\noBeam \hideNoteHead <as cs>16
    as8. * 1/3~\noBeam cs8~\noBeam \hideNoteHead <as cs>16
    as8. * 1/3~\noBeam cs8~\noBeam \hideNoteHead <as cs>16
    as8. * 1/3\noBeam cs8\noBeam |
  s1 |
}

rightHand = {
  \global
  \omit Staff.TupletBracket
  \omit Staff.TupletNumber
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s2 s8 s16. es'32 fs16 s8. |
  s2 s8 s16. fs32 gs16 s8. |
  s1 |
  s2 s8 s16. fs32 gs16 s8. |
  s2 s8 s16. es32-> fs16-> s8. |
  s2 s8 s16. fs32 gs16 s8. |
  s1 * 2 |
  
  \barNumberCheck 9
  \oneVoice a,,,16 e'' cs' g  g' cs, e, a,~  \voiceThree
    <a, a'> ds'--( b'-- fs--  fs'-- b, ds, a) |
  \tuplet 3/2 { g8 b b'  fs, b b'  e,, b' b'  d,, b' b' } |
  \oneVoice <c,,, c'>16 g''' e' bf  bf' e, g, c,~  <c, c'> fs'! d' a  a' d, fs,
    <c, c'> |
  \voiceThree \tuplet 3/2 { bf'8 d d'  a, d d'  g,, d' d'  g,, cs! cs'! } |
  s1 * 4 |
  
  \barNumberCheck 17
  s2 s8 s16. es32 fs16 s8. |
  s2 s8 s16. fs32 gs16 s8. |
  s1 * 5 |
  \oneVoice \tuplet 3/2 { <fs,,, fs'>8 d'' b'  es b d, } 
    <fs,, fs'>16 cs'' as' fs'  \staffUp cs' fs, \staffDown as, <cs,, cs'>^~ | 
  
  \barNumberCheck 25
  cs'1 |
  s1 |
}

leftHandLower = \relative { 
  \tuplet 3/2 { fs,8 cs' cs'  bs fs cs }  \voiceFour fs,16 cs' a'16. es'32
    fs16 a, cs, fs, |
  \tuplet 3/2 { fs8 d' b' }  fs'16 es b d,  fs, d' b'16. fs'32
    gs!16 b, d, fs, |
  \oneVoice \tuplet 3/2 { fs8 cs' b' }  gs'16 es b cs,
    \tuplet 3/2 { fs,8 cs' a'  e' cs fs, } |
  \tuplet 3/2 { fs, d' b'  d b d, }  \voiceFour fs,16 cs' b'16. fs'32
    gs!16 b, cs, fs, |
  \tuplet 3/2 { fs8 cs' cs'  bs fs cs }  fs,16 cs' a'16. es'32
    fs16 a, cs, fs, |
  \tuplet 3/2 { fs8 d' b' }  fs'16 es b d,  fs, d' b'16. fs'32
    gs!16 b, d, fs, |
  \tuplet 3/2 { 
    \oneVoice fs8 ds' a'  cs a ds,  gs, e' cs'  b a gs |
    gs, fs' gs,  bs' fs gs,
  } \tuplet 5/4 { cs,16 gs' e' cs' gs } gs' cs, e, b, |
  
  \barNumberCheck 9
  \voiceFour s2. s8. <a a'>16 |
  \tuplet 3/2 { <g g'>4 * 1/2 b'4  <fs, fs'>4 * 1/2 b'4  <e,, e'>4 * 1/2 b''4
    <d,, d'>4 * 1/2 b''4 } |
  s1 |
  \tuplet 3/2 { 
    <bf, bf'>4 * 1/2 d'4  <a, a'>4 * 1/2 d'4  <g,, g'>4 * 1/2 d''4
      <g,, g'>4 * 1/2 cs'4  |
    \oneVoice <d,, d'>8 a'' fs'  c' fs, a,  <d,, d'> g' d'  bf' cs,! g |
  }
  <d, d'>16 a'' d a'  \tuplet 3/2 { 
    ef'8 fs, a,  <d,, d'> bf'' ef  cs'! ef, bf |
    <d,, d'> a'' fs'  c' fs, a,  <d,, d'> g' d'  bf' cs, g |
    <d, d'>8 a'' d   a' d, a 
  } d,16 a' d a'  \tuplet 3/2 { d8 a d, } |
    
  \barNumberCheck 17
  \tuplet 3/2 { <cs,, cs'>8 cs'' cs'  bs fs cs }  
  \voiceFour <cs, cs'>16 cs' a'16. es'32 fs16 a, cs, <cs, cs'> |
  \tuplet 3/2 { q8 d' b' }  fs'16 es b d,  <cs, cs'> d' b'16. fs'32
    gs!16 b, d, <cs, cs'> |
  \oneVoice q16 g'' e' b \tuplet 3/2 { b'8 e, g, } <d, d'>16 gs'!-- fs'-- b,--
    \tuplet 3/2 { b'8-- fs gs, } |
  \tuplet 3/2 { <cs,, cs'>8 b'' cs,  es' b <cs,, cs'> } 
    <fs, fs'>16 cs'' a' fs'  fs a, cs, fs, |
  \tuplet 3/2 { <fs, fs'>8 e'' as  fs' as, e  <fs,, fs'> d'' b'  g' b, d, } |
  <fs,, fs'>16 cs'' b' e  b' e, b cs,  <fs,, fs'> cs'' as' fs'  as fs as, cs, |
  \tuplet 3/2 { <fs,, fs'>8 d'' b'  es b d, } <fs,, fs'>16 cs'' as' fs'
    cs' fs, as, cs, | 
  s1 |
  
  \barNumberCheck 25
  \voiceFour fs,8. cs16 fs8. cs16 fs8. cs16 fs8. cs16 |
  \tag layout { <fs, fs' cs'>1\arpeggio | }
  \tag midi   { \midiArpeggio 32 <fs, fs' cs'>1 | }
}

leftHand = {
  \global
  \omit Staff.TupletBracket
  \omit Staff.TupletNumber
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  s2\< s\sf |
  s4 s\< s2\sf |
  s1 * 2 |
  s4 s\< s2\sf |
  s4 s\< s2\sf |
  s2.\p s4\cresc |
  s2. s4\dim |
  
  \barNumberCheck 9
  s1\p |
  s2.\cresc s4\cresc |
  s1\f |
  s4 s2.\cresc |
  s1\ff |
  s1 |
  \once \override DynamicTextSpanner.bound-details.left.padding = 2 % move \dim
  s2.\dim s4\p |
  \tag layout { s1^\crescMolto | } \tag midi { s1\cresc | }
  
  \barNumberCheck 17
  s4\ff s\< s2\! |
  s4 s\< s2\! |
  s1 |
  s2. s4\dim |
  s1\pp |
  s1 * 2 |
  \tag layout { s1^\dimPpp | } \tag midi { s1\dim\ppp | }
  
  \barNumberCheck 25
  s4\! s16 s8.-\tweak Y-offset -3 ^\smorz s2 |
  s1 |
}

% MIDI only 
pedal = {
  s4\sd s\su s\sd s\su\sd |
  s4\sd s\su s\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\sd s\su s\sd s\su\sd |
  s4\sd s\su s\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 9
  s2\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 17
  s4\sd s\su s\sd s\su\sd |
  s4\sd s\su s\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s2\su\sd |
  s4\su\sd s\su\sd s2\su\sd |
  s4\su\sd s\su\sd s2\su\sd |
  
  \barNumberCheck 25
  s1\su\sd |
  s1 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "A capriccio, con forza" #2 #0 92
  \tempo 4 = 92
  s1 * 7 |
  \tempo 4 = 84 s1 |
  
  \barNumberCheck 9
  \tempo 4 = 92 s1
  s1 * 6 |
  \tempo 4 = 84 s1 |
  
  \barNumberCheck 17
  \tempo 4 = 92 s1 |
  s1 * 2 |
  \tempo 4 = 84 s2 \tempo 4 = 92 s |
  s1 * 4 |
  
  \barNumberCheck 25
  s2 \tempo 4 = 84 s |
  s1 |
}

forceBreaks = {
  s1\noBreak s1 \break
  s1\noBreak s1 \break
  s1\noBreak s1 \break
  s1\noBreak s1 \pageBreak

  s1\noBreak s1 \break
  s1\noBreak s1 \break
  s1\noBreak s1 \break
  s1\noBreak s1 \pageBreak
 
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
}

etudeTwoNotes =
\score {
  \header {
    title = \markup { Nº 2 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 11)
         (padding . 2))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

etudeTwoMidi =
\book {
  \bookOutputName "etude-op8-no02"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
