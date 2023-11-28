%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 4/4
  \key e \major
  \set Staff.extraNatural = ##f
  \eighthsInTwos.44
}

rightHandUpper = \relative {
  \voiceOne <e' gs>4 e' <ds, gs> ds'
  <gs,, e' gs>8\noBeam <e' e'> <gs gs'> <ds ds'> <gs gs'> <cs, cs'>
    <ds ds'> <e e'> |
  \oneVoice <gs gs'>8 <b, b'> <b' e b'>\noBeam <b, b'> \voiceOne <gs' gs'> 
    <fs fs'> \oneVoice <b fs' b>\noBeam <b, b'> |
  \voiceOne <fs' fs'>8 <e e'> \oneVoice <b' e b'> r r4 r8 \voiceOne e, |
  <gs b>4 <gs' b> <fss, cs'> <fss' cs'> |
  \oneVoice <b,, ds gs b>8\noBeam <b' b'> <ds ds'> <as as'> <ds ds'> <gs, gs'>
    <as as'> <b b'> |
  <ds ds'> <fs, fs'> <fs' b fs'>\noBeam <fs,, fs'> \voiceOne <ds' ds'> <cs cs'>
    \oneVoice <fs' cs' fs>\noBeam <fs,, fs'> |
  \voiceOne <cs' cs'>8 <b b'> \oneVoice <fs'' b fs'> r r4 r8 s |
  
  \barNumberCheck 9
  \voiceOne <d, fs>4 fs' <cs es> <d, d'>8 q |
  q8 <cs cs'> \oneVoice r4 r r8 s |
  \voiceOne <c e>4 e' e e |
  ds4 \oneVoice  r r r8 s |
  % Third beat, ScrB
  \voiceOne <e, gs>4 e' <ds, gs> ds'
  <gs,, e' gs>8\noBeam <e' e'> <gs gs'> <ds ds'> <gs gs'> <cs, cs'>
    <ds ds'> <e e'> |
  \oneVoice <gs gs'>8 <b, b'> <b' e b'>\noBeam <b, b'> \voiceOne <gs' gs'> 
    <fs fs'> \oneVoice <b fs' b>\noBeam <b, b'> |
  \voiceOne <fs' fs'>8 <e e'> \oneVoice <b' e b'> r r4 r
  
  \barNumberCheck 17
  \oneVoice r4 \voiceOne <cs, cs'>2( <e e'>4) |
  \oneVoice r4 \voiceOne <e e'>2( <gs gs'>4) |
  \oneVoice r4 <cs gs' cs>2( <e gs e'>4) |
  r4 <cs gs' e'>2-> <cs fss ds'>4-> |
  r4 \voiceOne <gs, gs'>2( <b b'>4) |
  \oneVoice r4 \voiceOne <b b'>2( <ds ds'>4) |
  \oneVoice r4 <gs ds' gs>2( <b ds fs b>4) |
  r4 <b fs' b>2 <es, b' es>4 |
  
  \barNumberCheck 25
  <e e'>8( <d d'> <a' a'>8. q16 q8[ <gs gs'> <fs fs'> <es es'>]) |
  r8 <e e'>^( q <d d'>) r <a a'>^( q <gs gs'>) |
  <e' e'>8( <d d'> <cs' cs'>8. q16 q8[ <b b'> <a a'> <gs gs'>]) |
  r8 <a a'>( q <fs fs'>) r <a a'>( q <fs fs'>) |
  r8 <a a'>( q <fs fs'>) q4 r |
  r8 <a a'> q <fs fs'> q4 r |
  r8 <cs' cs'>8 q <fs, fs'> q r r4 |
  \omit TupletBracket
  \voiceOne \tuplet 3/2 4 { r8 a' a  a cs, cs  cs c c  c b r } |
  
  \barNumberCheck 33
  <e, gs>4 e' <ds, gs> ds' |
  \omit TupletNumber
  \tuplet 3/2 { 
    \oneVoice <gs,, e' gs>8\noBeam <e' e'> q  <gs gs'>-- <ds ds'> q
      <gs gs'>-- <cs, cs'> q  q <ds ds'> <e e'> |
    <gs gs'>8 <as, as'> <b b'>  <b' e b'> <bs, bs'> <cs cs'>
      <gs' gs'> <es es'> <fs fs'>  <b b'> <as, as'> <b b'> |
    <fs' fs'>8 <ds ds'> <e e'> 
  } <b' b'> r r4 s |
  \voiceOne <gs b>4 <gs' b> <fss, cs'> <fss' cs'> |
  \oneVoice \tuplet 3/2 { 
    <b,, ds gs b>8\noBeam <b' b'> q  <ds ds'>-- <as as'> q  <ds ds'>-- <gs, gs'>
      q  q <as as'> <b b'> |
    <ds ds'>8 <es, es'> <fs fs'>  <fs' b fs'> <fss, fss'> <gs gs'>
      <ds' ds'> <bs bs'> <cs cs'>  fs' <es,, es'> <fs fs'> |
    <cs' cs'>8 <as as'> <b b'>
  } <fs' b fs'>8 r r4 \voiceOne b, |
  
  \barNumberCheck 41
  <d, fs>4 fs' <cs es> \tuplet 3/2 { r8 <d, d'>8 q } |
  \tuplet 3/2 { q8 <cs cs'> q } \oneVoice q r r4 r8 s |
  \voiceOne <c e>4 e' e s |
  ds4 s2. |
  <e, gs>4 e' <ds, gs> ds' |
  \omit TupletNumber
  \tuplet 3/2 { 
    \oneVoice <gs,, e' gs>8\noBeam <e' e'> q  <gs gs'> <ds ds'> q
      <gs gs'> <cs, cs'> q  q <ds ds'> <e e'> |
    <gs gs'>8 <as, as'> <b b'>  <b' e b'> <bs, bs'> <cs cs'> \voiceOne 
      <a' a'> <gs gs'> <cs, cs'>  \oneVoice <cs' gs' cs> <bs, bs'> <cs cs'> |
  }
  \voiceOne cs'4 fs ds s4 |
  
  \barNumberCheck 49
  <e, gs>4 <gs b> <b e> gs' |
  <e, fs>4 e' <ds, gs> ds' |
  <e, gs>4 <gs b> <b e> gs' |
  <e, fs>4 e' <ds, gs> ds' |
  \tuplet 3/2 { 
    <gs,, e' gs>8\noBeam <e' e'> q  <gs gs'> <ds ds'> q  <gs gs'> <cs, cs'> q
      q <ds ds'> <e e'> |
    <gs gs'>8 <e e'> q  <gs gs'> <ds ds'> q  <gs gs'> <cs, cs'> q
      q <ds ds'> <e e'> |
  }
  <e gs>4 <gs b> <b e> <e gs> |
  \ottava 1 <gs b>4 <b e> <e gs> <gs b> |
  
  \barNumberCheck 57
  \oneVoice <gs e'>4 \ottava 0 r <gs,, e' gs>2 |
  <gs, b e>1 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo cs'8 b <a' a'>^>^( <gs gs'>) b, a <gs' gs'>^>^( <fs fs'>) |
  s1 |
  s2 ds'4 s |
  b4 s2. |
  e,8 ds <e' e'> <ds ds'> cs, as <e'' e'> <ds ds'> |
  s1 |
  s2 as4 s |
  fs4 s2 s8 b, |
  
  \barNumberCheck 9
  b8 fs <cs'' cs'> <b b'> <a a'> <gs gs'> gs4 |
  a4 s2 s8 a,8 |
  a8 e <b'' b'>8 <a a'> <gs gs'> <fs fs'> <gs gs'> <a a'> |
  <gs gs'>8 <fs fs'> s2 s8 cs |
  % Third beat, SrcB
  cs8 b <a' a'> <gs gs'> b, a <gs' gs'> <fs fs'> |
  s1 |
  s2 ds'4 s |
  b4 s2. |
  
  \barNumberCheck 17
  s4 gs2. |
  s4 cs2. |
  s1 * 2 |
  s4 ds,2. |
  s4 gs2. |
  s1 * 2 |
  
  \barNumberCheck 25
  \voiceOne s4 d' d d |
  \voiceTwo s4 fs, s d |
  \voiceOne s4 fs' fs fs |
  s4 d s d |
  s4 cs s2 |
  s4 e s2 |
  s4 ds s2 |
  \voiceTwo r2 ds,4. cs!8 |
  
  \barNumberCheck 33
  \tupletOff
  \tuplet 3/2 { 
    cs8 cs b  <a' a'>^> q <gs gs'>  b, b a  <gs' gs'>^> q <fs fs'> | 
  }
  s1 |
  \voiceOne s2 cs'4 s |
  \voiceTwo b4 \voiceOne e8 s8 s4 e |
  \voiceTwo \tuplet 3/2 { 
    e,8 e ds  <e' e'>^> q <ds ds'>  cs, cs as  <e'' e'>^> q <ds ds'> |
  }
  s1 |
  s2 \voiceOne gs4 fs |
  fs4 s2. |
  
  \barNumberCheck 41
  \voiceTwo \tuplet 3/2 { 
    cs,8 b fs  <cs'' cs'> q <b b'>  <a a'> q <gs gs'>  gs8 s4 |
  }
  a4 s2 \tuplet 3/2 { s8 gs, a |
    b8 a e  <b'' b'> q <a a'>  <gs gs'> q <fs fs'>  r <gs gs'> <a a'> |
    <gs gs'> <fs fs'> q
  } q \oneVoice r r4 \tuplet 3/2 { r8 \voiceTwo as, b } |
  \tuplet 3/2 { 
    cs8 cs b  <a' a'>^> q <gs gs'>  b, b a  <gs' gs'>^> q <fs fs'> | 
  }
  s1 |
  s2 cs'4 s |
  \tuplet 3/2 { 
    \oneVoice <fs, fs'>8-- <gs gs'>-- <a a'>--  <ds ds'>-- <cs cs'> <a a'>
      <gs gs'> <es es'> <fs fs'>  r as, b |
    \voiceTwo cs8 cs b  fs' fs e  a a gs  <cs cs'> q <b b'> |
    cs, cs fs,  <b' b'> q <a a'>  b, b a  <gs' gs'> q <fs fs'> |
    cs8 cs b  fs' fs e  a a gs  <cs cs'> q <b b'> |
    cs, cs fs,  <b' b'> q <a a'>  b, b a  <gs' gs'> q <fs fs'> |
  }
  s1 * 2 |
  \tuplet 3/2 { 
    cs8 cs b  fs' fs e  a a gs  cs cs b |
    fs' fs e  a a gs  cs cs b  fs' fs e |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s4 gs2. |
  s4 cs2. |
  s4 \voiceFour gs'2. |
  s1 |
  s4 \voiceThree ds,2. |
  s4 gs2. |
  s4 ds'2. |
  s1 |
  
  \barNumberCheck 25
  
}

leftHandLower = \relative { 
  <e, b'>4 \clef treble <b'' e b'> \clef bass <b,, b'> 
    \clef treble <a'' ds b'> |
  \clef bass <e, b'>4 <b' gs' e'> <as gs' e'> r |
  <b, b'>4 <gs'' e' gs> <b, a' ds> <a' ds fs> |
  <e, b' gs'>4 <gs' e' gs>8\noBeam as cs b e r | 
  <gs,, ds'>4 \clef treble <b' gs' b> \clef bass <ds,, ds'> 
    \clef treble <as'' fss' cs'> |
  \clef bass <e, e'>4 <b'' ds gs> <es,, es'> <b'' ds gs> |
  <fs, fs'>4 \clef treble <ds'' b' ds> \clef bass <fs,, e' as> 
    \clef treble <e'' as cs> |
  \clef bass <b,, fs' ds'>4 \clef treble <ds'' b' ds>8\noBeam \clef bass es,
    gs fs b r |
    
  \barNumberCheck 9
  <gs,, gs'>4 \clef treble <gs'' d' fs d'> \clef bass <cs,, cs'> <b'' es> |
  <a fs'>4 d,8 d d cs a' r |
  <fs,, fs'>4 <a'' e'> c, <fs e'> |
  <b, a' ds>4 cs'8-- cs-- cs-- b-- b'-- r |
  <e,,, b'>4 \clef treble <b'' e b'> \clef bass <b,, b'> 
    \clef treble <a'' ds b'> |
  \clef bass <e, b'>4 <b' gs' e'> <as gs' e'> r |
  <b, b'>4 <gs'' e' gs> <b, a' ds> <a' ds fs> |
  <e, b' gs'>4 <gs' e' gs>8\noBeam as cs b e\noBeam <fss,, fss'> |
  
  \barNumberCheck 17
  <a a'>8 <gs gs'> <e' e'>8. q16 q8[ <ds ds'> <cs cs'> <b b'>] |
  <a a'>8 <gs gs'> <gs' gs'>8. q16 q8[ <fs fs'> <e e'> <ds ds'>] |
  <e e'>8 <cs cs'> \clef treble <e' e'>8. q16 q8[ <ds ds'> <cs cs'> <b b'>] |
  <ds, ds'>8. <b' b'>16 q8 <as as'> <ds, ds'> <b' b'> <as as'>\noBeam
    \clef bass <css,, css'> |
  <e e'>8 <ds ds'> <b' b'>8. q16 q8 <as as'> <gs gs'> <fs fs'> |
  <e e'>8 <ds ds'> <ds' ds'>8. q16 q8[ <cs cs'> <b b'> <as as'>] |
  <b b'>8 <gs gs'> <b' b'>8. q16 q8[ <as as'> <gs gs'> <fs fs'>] |
  <gs, gs'>8. <fs' fs'>16 q8 <d d'> <cs, cs'>[ <gs' gs'> <d' d'> <cs cs'>] |
  
  \barNumberCheck 25
  <fs,, fs'>4 <d'' b' d> <fs d' fs> <b d gs b> |
  <fs,, fs'>4 <d'' b'> <fs,, fs'> <d'' b'> |
  <fs,, fs'>4 <d'' fs b d> <fs b fs'> <b d fs b> |
  <fs,, fs'>4 <d'' fs bs d> <fs,, fs'> <d'' fs bs d> |
  <fs,, fs'>4 <cs'' fs cs'> r8 <a a'> q <fs fs'> |
  <cs cs'>4 <fs' e'> r8 <a, a'> q <fs fs'> |
  <b, b'>4 <fs'' a ds a'> r8 a' a ds, |
  ds8 r r4 <b, a'>2 |
  
  \barNumberCheck 33
  <e, b'>4 \clef treble <b'' e b'> \clef bass <b,, b'> 
    \clef treble <a'' ds b'> |
  \clef bass <e, b'>4 <b' gs' e'> <as gs' e'> r |
  <b, b'>4 <gs'' e' gs> <b, a' e'>_~ <a' ds> |
  <e, b' gs'>4 \voiceTwo \tupletOff \tuplet 3/2 { <gs' e' gs>8\noBeam as^- cs^-
    b^- \staffUp e^- b'^-  gs\noBeam css, ds |
  }
  \staffDown \oneVoice <gs,, ds'>4 \clef treble <b' gs' b> 
    \clef bass <ds,, ds'> \clef treble <as'' fss' cs'> |
  \clef bass <e, e'>4 <b'' ds gs> <es,, es'> <b'' ds gs> |
  <fs, fs'>4 \clef treble <ds'' b' ds> \clef bass <fs,, e'! b'> \clef treble
    <as' e' fs cs'> |
  \clef bass <b,, fs' ds'>4 \tuplet 3/2 { 
    <fs'' ds' b'>8\noBeam \voiceTwo es^- gs^-  fs^- b^- \staffUp fs'^- 
      ds\noBeam as b |
  }
  
  \barNumberCheck 41
  \staffDown \oneVoice <gs,, gs'>4 \clef treble <gs'' d' fs d'> \clef bass 
    <cs,, cs'> <b'' es> |
  <a fs'>4 \tuplet 3/2 { r8 d, d  d-> cs cs } cs r |
  <fs,, fs'>4 <a'' e'> <c,, c'> <fs' e'> |
  <b, a' ds>4 \tuplet 3/2 { r8 cs' cs  cs b b } b r |
  <e,, b'>4 \clef treble <b'' e b'> \clef bass <b,, b'> 
    \clef treble <a'' ds b'> |
  \clef bass <e, b'>4 <b' gs' e'> <as gs' e'> r |
  <b, b'>4 <gs'' e' gs> <b, es cs'> <gs' cs es> |
  <b, fs' cs'>4 <a' fs' a> <b, a' ds> <a' ds a'> |
  
  \barNumberCheck 49
  e,8 b' e b' e d~ <e, d' gs>4 |
  <a,, a'>4 <fs'' cs' e> <b,, b'> <a'' ds b'> |
  e,8 b' e b' e d~ <e, d' gs>4 |
  <a,, a'>4 <fs'' cs' e> <b,, b'> <a'' ds b'> |
  <e, b'>4 <b' gs' e'> <as gs' e'> r |
  <e b'>4 <b' gs' e'> <as gs' e'> r |
  e8[ b' e b']  e[ b e, b'] |
  \clef treble e8[ b' e b]  e,[ b' e b']~ |
  
  \barNumberCheck 57
  <e, b'>4 r \clef bass <e,, b' e>2 |
  <e, b' e>1 |
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
  \tag layout { s1^\mfSemplice | } \tag midi { s1\mf | }
  s1 * 7 |
  
  \barNumberCheck 9
  s1-\tweak Y-offset -1.5 \cresc |
  s1 |
  s2. s4\dim |
  s4 s2.\p |
  s1\p |
  s1 * 3 |
  
  \barNumberCheck 17
  s4 s2.-\tweak X-offset -1.5 -\tweak Y-offset -1 \sf |
  s4 s2.-\tweak X-offset -1.5 \sf |
  s4 s2.\sf |
  s1 |
  s4 s2.-\tweak Y-offset -1.5 \sf |
  s4 s2.\sf |
  s4 s2.-\tweak X-offset -2 \sf |
  s1 |
  
  \barNumberCheck 25
  s1-\tweak Y-offset -7 \ff |
  s1 * 6 |
  s8 s\dim s2. |
  
  \barNumberCheck 33
  s1\mf |
  s1 * 7 |
  
  \barNumberCheck 41
  s4 s2.-\tweak Y-offset -5 \cresc |
  s1 |
  s4 s\f s2\dim |
  s2. s4\p |
}

% MIDI only 
pedal = {
  s2\sd s\su\sd |
  s2\su\sd s\su |
  s2\sd s\su\sd |
  s2\su\sd s\su |
  s2\sd s\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s4\su\sd s2.\su |
  
  \barNumberCheck 9
  s2\sd s\su\sd |
  s4\su\sd s2.\su |
  s2\sd s\su\sd |
  s4\su\sd s2.\su |
  s2\sd s\su\sd |
  s2\su\sd s\su |
  s2\sd s\su\sd |
  s4\su\sd s2.\su |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1\sd |
  s2\su\sd s\su\sd |
  s1\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su |
  s2\sd s\su |
  s2\sd s\su |
  s2 s\sd |
  
  \barNumberCheck 33
  s1\su |
  s1 * 7 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s2\sd s\su\sd |
  s2\su\sd s\su\sd
  s2\su\sd s\su\sd
  s2\su\sd s\su\sd |
  s1\su |
  s1 |
  s1\sd |
  s1 |
  
  \barNumberCheck 57
  s4\su s s2\sd |
  s1 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Brioso #1 #0 72
  \tempo 2 = 72
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  \tempo 2 = 69
  s1 * 8 |
  
  \barNumberCheck 25
  \tempo 2 = 72
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  \tempo 2 = 76
  s1 * 8 |
  
  \barNumberCheck 57
  \tempo 2 = 72
  s1 * 2 |
}

forceBreaks = {
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \pageBreak
  
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
}

etudeFiveNotes =
\score {
  \header {
    title = \markup { Nº 5 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 5"
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

etudeFiveMidi =
\book {
  \bookOutputName "etude-op8-no05"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
