%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 4/4
  \key cs \major
  % \accidentalStyle piano
  % Group eighth-notes in twos
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

rightHandUpper = \relative {
  \tupletOff
  \partial 4 \scaleDurations 2/3 { \voiceOne <fs' gs>8 q es' 
    <es, gs>8 q cs' <fs, as> q ds'  <ds, fs> q bs'  <es, gs> q cs' | 
    <ds, gs> q as'  <cs, fss> q ds' <bs, fs'> q ds' <fs, gs> q es' |
    <es, gs>8 q cs'  <e, fs> q ds'  <ds, fs> q b'  <d, e> q cs' |
    <cs, e>8 q a'  <cs, e> q gs'  <cs, ds> q fss  <gs, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <gs,, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <gs,, ds'> q gs' |
    <gss, ds'>8 q gss'  <as, ds> q as'  <fs as> q fs'  <es, as> q es' |
    <fs, as>8 q ds'  <fs, cs'> q ds'  <fs, bs> q ds'  <fs, gs>8 q es' |
    
    \barNumberCheck 9
    <es, gs>8 q cs' <fs, as> q ds'  <ds, fs> q bs'  <es, gs> q cs' | 
    <ds, gs> q as'  <cs, fss> q ds' <bs, fs'> q ds' <fs, gs> q es' |
    <es, gs>8 q cs'  <e, fs> q ds'  <ds, fs> q b'  <d, e> q cs' |
    <cs, e>8 q a'  <cs, e> q gs'  <cs, ds> q fss  <gs, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <bs, fs' gs> q bs' |
    <cs, e a>8 <cs a'> cs'  <fs, cs'> q fs'  <e, cs'> q e' <css, gs'> q css' |
    <css, gs'>8 q css'  <ds, gs> q ds'  \oneVoice <bs ds> q bs'
      <as, ds> q as' |
    <as, ds>8 q as'  <as, fss'> q as'  <gs, ds'> q gs' 
  } ds4 |
  
  \barNumberCheck 17
  cs4( b8 as gs ds es fs |
  fs4-> ds2) \scaleDurations 2/3 { <as ds>8 q as' |
    <gss, ds'>8 q gss'  <gs, ds'> q gs'  <fs, css'> q fs'  <es, css'> q es' |
    <es, css'>8 q es'  <fs, ds'> q fs'  <fs, as> q ds'
  } as''4( |
  gs4 fs8 es ds as bs cs |
  cs4 as2) \scaleDurations 2/3 { <es as>8 q es' |
    <dss, as'>8 q dss'  <ds, as'> q ds'  <cs, gss'> q cs'  <bs, gss'> q bs' |
    <bs, gss'>8 q bs'  <cs, as'> q cs'  <cs, es> q as'
  } s4 |
  s2 \voiceOne fs'8 cs ds es |
  s2. %
}

rightHandLower = \relative {
  \partial 4 s4
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 7 |
  s2. <as' fs' cs'>4( |
  
  \barNumberCheck 25
  <gs fs' b>4 <as fs' as>8 <b cs gs'> \voiceTwo <as cs>4 <a cs> |
  \oneVoice <gs cs es>4 <es gs cs>2) s4 |
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
  \partial 4 s4
  s1 |
  cs'8( bs bs as gs4) s4 |
  s1 |
  s4 e8 e ds4 s |
  s1 |
  s2. fs4 |
  fs2 ds'4 css |
  s1 |
  
  \barNumberCheck 9
  s1 |
  cs8( bs bs as gs4) s4 |
  s1 |
  s4 e8 e ds4 s |
  s1 |
  s2. ass'4~ |
  ass4 bs gs' fss |
  cs4 ds s2 |
}

leftHandLower = \relative {
  \partial 4 <gs, bs'>4
  <cs b'>4 <fs, as'> <gs gs'> < cs gs'> |
  \voiceFour ds2 gs4 \oneVoice <gs, bs'> |
  <cs b'>4 <fs, as'> <b a'> <e, gs'> |
  <a a'>4 \voiceFour a as \oneVoice <bs, bs'>8 fs'' |
  <cs, cs'>8 fs' <fs as fs'>2 <bs,, bs'>8 fs'' |
  <cs, cs'>8 fs' <fs as fs'>2 \voiceFour bs,4 |
  b4 as <as gs'>2 |
  \oneVoice <ds as' ds>2 <gs ds'>4 <gs, bs'>4 |
  
  \barNumberCheck 9
  <cs b'>4 <fs, as'> <gs gs'> < cs gs'> |
  \voiceFour ds2 gs4 \oneVoice <gs, bs'> |
  <cs b'>4 <fs, as'> <b a'> <e, gs'> |
  <a a'>4 \voiceFour a as \oneVoice <bs, bs'>8 fs'' |
  <cs, cs'>8 fs' <fs as fs'>2 <ds, ds'>8 gs' |
  <e, e'> a' <cs a'>2 \voiceFour e,4~ |
  e4 ds <ds cs'>2 |
  <gs fss'>2 \oneVoice <gs bs gs'>4 \scaleDurations 2/3 { <gs b>8 q gs' | 
                                                
    \barNumberCheck 17
    <gs, ds'> q gs'  <ds, gs> q fs'  <b,, gs'> q ds'  <gs,, ds'> q b' |
    <gs, ds'>8 q b'  <fs, ds'> q as'  <es, ds'> q gss'  
  } <fs,, fs'>4 |
  q8 <es es'> <b' b'>4 q8 <as as'>8~ q q |
  q4 <ds as'>2 \scaleDurations 2/3 { <ds' as'>8 q fs' |
    \clef treble <ds as'>8 q ds'  <as, ds> q cs'  <fs,, ds'> q as' \clef bass
      <ds,, as'> q fs' |
    <ds, as'>8 q fs'  <cs, as'> q es'  <bs, as'> q dss'
  } <cs,, cs'>4 |
  q8 <bs bs'> <fs' fs'>4 q8 <es es'>~ q q |
  q4 <as es'>2 \scaleDurations 2/3 { % 
    
  }
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
  \partial 4 s4\p 
  s1\< |
  s2\> s8. s16\! s4 |
  s1 * 2 |
  s4 s\sf\> s8. s16\! s4\< |
  s8. s16\! s4\> s8. s16\! s4 |
  s1 * 2 |
  
  \barNumberCheck 9
  s1\< |
  s2\> s8. s16\! s4 |
  s1 * 6 |
  
  \barNumberCheck 17
  s4 s\cresc s2\< |
  s4\> s2\! s4\p |
  s1 * 2 |
  s4.\cresc s8\< s2 |
  s4\> s8. s16\! s4 s\p |
}

% MIDI only 
pedal = {
  
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #2 #0 168
  \partial 4 s4
  s1 |
}

forceBreaks = {
  
}

etudeOneNotes =
\score {
  \header {
    title = "Etude"
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 1"
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

etudeOneMidi =
\book {
  \bookOutputName "etude-op8-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi{}
  }
}
