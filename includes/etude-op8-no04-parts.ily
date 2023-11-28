%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

beamOffsetA = \offset Beam.positions #'(0.75 . 0.75) \etc
beamOffsetB = \offset Beam.positions #'(0.75 . 0.5) \etc
beamOffsetC = \offset Beam.positions #'(0 . 0.5) \etc
beamOffsetD = \offset Beam.positions #'(0.25 . 0.5) \etc

beamOffsetM = \offset Beam.positions #'(-0.5 . 0) \etc

moveFingeringA = -\tweak Y-offset 1.5 \etc

%%% Music %%%

global = {
  \time 4/4
  \key b \major
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \partial 4 \scaleDurations 4/5 { ds'16 b' ds gs fs 
    \beamOffsetA ds16-- gs, e fs b  \beamOffsetA cs-- e, fs gs b--  
      \beamOffsetA as-- e fs ds cs  b gs' b e ds |
    b16-- e, cs ds e  \beamOffsetB as-- cs, ds e gs--  
      \beamOffsetC fss-- as, ds fss ds'  ds, b' ds as' gs |
    ds16 gs, as b cs  \beamOffsetD cs, a' cs gs' fs  
      \beamOffsetB cs fs, gs a b  \beamOffsetD b, gs' b ds cs |
    \beamOffsetD b, gs' b ds cs  \beamOffsetD b, fs' b ds cs  cs, es gs fs e
      ds b' ds gs fs |
    \beamOffsetA ds16 gs, e fs gs  \beamOffsetA cs e, fs gs b  
      \beamOffsetA as e fs ds cs  b gs' b e ds |
    b16 e, cs ds e  \beamOffsetB as cs, ds e gs
      \beamOffsetC fss as, ds fss ds'  as, fs' as es' ds |
    \beamOffsetB as16 ds, es fs gs  \beamOffsetC gs, e' gs ds' cs
      gs cs, ds e fs  fs, ds' fs as gs |
    gs,16 ds' fs as gs  b, cs es as gs  fs as, cs fs cs'
  } fs,4 |
  
  \barNumberCheck 9
  \tupletOff
  fss4~ \tuplet 3/2 { fss8 fs fss  e' gs, fss  cs' fs, e }
  \tuplet 3/2 { a ds, cs  <bs gs'>4 fs'8  e fs fss } gs4 |
  gss4~ gss16 as gs gss  \tuplet 3/2 { fs'8 as, gss  ds' gs, fs } |
  \tuplet 3/2 { b8 es, ds  as'4 gs8  fs es fs } gs4 |
  gss4~ \tuplet 3/2 { gss8 gs gss  as gs'! fs  a, gs a } |
  \tuplet 3/2 { b8 a' g  fs es fs } cs'16 ds, b' as
    \tuplet 3/2 { ds,8 gs cs, } |
  \undo \omit TupletNumber \tuplet 3/2 4 { fs8 fs,4 fs'8^\rit fs,4 fs'8 fs,4 }
    \scaleDurations 4/5 { 
      ds16 b' ds gs fs |
    ds16 gs, e fs gs  \beamOffsetB cs e, fs gs b  \beamOffsetB as e fs ds cs
      b gs' b e ds |
    
    \barNumberCheck 17
    b16 e, cs ds e  \beamOffsetB as cs, ds e gs  fss as, ds fss ds'
      \beamOffsetM ds, b' ds as' gs |
    ds16 gs, as b cs  \beamOffsetC cs, a' cs gs' fs  
      \beamOffsetB cs fs, gs a b  \beamOffsetC b, gs' b ds cs |
    \beamOffsetC b,16 gs' b ds cs  \beamOffsetC b, fs' b ds cs
      \beamOffsetC b, es b' ds cs  \beamOffsetM e, cs' e gs fs |
    ds,16 b' ds gs fs  \beamOffsetA ds, b' ds fs e  cs, gs' cs fs e
      \beamOffsetC cs, ds as' e' ds |
    \beamOffsetC bs,16 ds a' e' ds  b, cs gs' ds' cs  b, cs gs' ds' cs
      \beamOffsetC e, fs as ds cs |
    ds, b' ds gs fs  ds gs, e fs cs'  ds, b' ds gs fs  ds gs, e fs cs' |
    ds,16 b' ds gs fs  fs, ds' fs cs' b  b, fs' b e ds  ds, b' ds gs fs |
  }
  <fs, ds' b'>4  \clef bass <ds,, fs b ds> <ds fs b>2\fermata |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \tupletOff
  \partial 4 \tuplet 3/2 { b,8 fs' fs' }
  e16 b cs, gs  cs, gs' e' ds'-\moveFingeringA _2
    \tuplet 3/2 { cs8_3 fs,_1 fs,_5  gs ds' ds' } |
  cs16 gs as, e  as, as' as b'  \tuplet 3/2 { as8_2 ds,_1 ds,_5  gs ds' fs'! |
    es8 b cs,  fs, cs' e'  ds a b,  e, cs'_2 cs' |
    es,,8 cs'_2 cs'  fs,, cs'_3 cs'
  } gs,16 cs' fs, as, \tuplet 3/2 { b8 fs' fs' } |
  e16 b cs, gs  cs, gs' e' ds'  \tuplet 3/2 { cs8 fs, fs,  gs ds' ds' } |
  cs16 gs as, e  as, as' as b'  \tuplet 3/2 { as8 ds, ds,  ds as' cs' |
    bs8 fs gs,  cs, gs' b'  as e fs,  b, gs' gs' |
    bs,, gs' gs'  cs,, cs' b'  as cs, fs,
  } \scaleDurations 4/5 { as16( e' fs ds' cs) |
                          
    \barNumberCheck 9
    \beamOffsetM a,16( ds fss ds' cs)  a,( ds fss ds' cs)
      \beamOffsetM gs,( e' gs cs as)  \beamOffsetM gs,( e' fss cs' a) |
    \beamOffsetM gs,16 e' fs fs' a,  gs, ds' fs bs gs
      \beamOffsetM cs, gs' cs fs e  \beamOffsetM bs, fs' gs e' ds |
    \beamOffsetM b,16 es gss es' ds  \beamOffsetM b, es gss es' ds
      \beamOffsetM as, fs' as ds bs  \beamOffsetM as, fs' gs ds' b |
    \beamOffsetM as,16 fs' gs gs' b,  \beamOffsetM as, es' gs css as 
  } ds, as' es' ds  \scaleDurations 4/5 { ds, gs bs gs' fs |
    d,16 fs bs gs' fs  d, fs bs gs' fs  cs, fs ds' as' cs,  d, fs c' gs' fs |
    d,16 g e' b' d,  d, gs fs' bs bs,  \beamOffsetM cs, gs' fs' b b,  
  } \tuplet 3/2 { \beamOffsetM cs, gs' fs'  b, es cs } |
  \tuplet 5/4 { \beamOffsetM fs,,16 cs' as'-- ds cs  
    \beamOffsetM fs,, cs' gs'-- cs b }  \tuplet 3/2 { 
    \beamOffsetM fs, cs' fs-- as fs' e  b,8 fs' fs' } |
  e16 b cs, gs  cs, gs' e' ds'  \tuplet 3/2 { cs8 fs, fs,  gs ds' ds' } |
  
  \barNumberCheck 17
  cs16 gs as, e  as, as' as b'  \tuplet 3/2 { as8 ds, ds,  gs ds' fs'! | 
    es8 b cs,  fs, cs' e'  ds a b,  e, cs'_2 cs' |
    es,,8 cs'_3 cs'  fs,, cs' cs'  gs, cs cs'  as, fs' fs' |
    b,,8 fs' fs'  gs,, e' b'  as, e' cs'  fss,, ds' cs' |
    fs,,8 ds' bs' e,, cs' b'  es,, cs' b'  fs, fs' fs, |
    b, fs' fs'  e'-- fs, fs,  b, fs' fs'  e'-- fs, fs, |
    b, fs' fs'  fs'-- b, ds,  ds'-- fs, b,
  } b'16-- ds, fs, b, |
  <fs'' ds' b'>4-- <fs,, fs'> <b b'>2\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\< <>\!
  s2\> s8. s16\! s4\< |
  s2\> s8. s16\! s4\< |
  s8.\> s16\! s8.\< s16\! s8.\> s16\! s4\< |
  s2\> s8. s16\! s4\< |
  s2\> s8. s16\! s4\< |
  s2\> s8. s16\! s4\< |
  s8.\> s16\! s8.\< s16\! s8.\> s16\! s4\< |
  s2.\> s4\cresc |
  
  \barNumberCheck 9
  s1^\legatoCantabile |
  s1\! |
  s1 * 4 |
  s8 s\dim s4 s s8 s\pp |
  s1 |
  
  \barNumberCheck 17
  s1 * 2 |
  s1\cresc |
  s2.\cresc s4\dim |
  s1 |
  s1\pp |
  s1-\tweak X-offset 0 \ppp |
  s1 |
}

% MIDI only 
pedal = {
  \partial 4 s4\sd 
  \repeat unfold 8 { s4\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 9
  \repeat unfold 8 { s4\su\sd s\su\sd s\su\sd s\su\sd | }
  
  \barNumberCheck 17
  \repeat unfold 6 { s4\su\sd s\su\sd s\su\sd s\su\sd | }
  s1\su\sd |
  s1 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Piacevole" #2 #0 100
  \tempo 4 = 100
  \partial 4 s4
  s1 * 3 |
  s2 \tempo 4 = 88 s4 \tempo 4 = 100 s |
  s1 * 3 |
  s2. \tempo 4 = 92 s4 |
  
  \barNumberCheck 9
  s1 * 6 |
  s4 \tempo 4 = 84 s \tempo 4 = 76 s \tempo 4 = 100 s |
  s1 |
  
  \barNumberCheck 17
  s1 * 7 |
  s2 \tempo 4 = 40 s |
}

forceBreaks = {
  \partial 4 s4
  s1 \break
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
  s1 s1 \pageBreak
  
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
  s1 s1 \break
}

etudeFourNotes =
\score {
  \header {
    title = \markup { Nº 4 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 4"
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

etudeFourMidi =
\book {
  \bookOutputName "etude-op8-no04"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
