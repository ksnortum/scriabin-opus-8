%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                      ) \etc
slurShapeB = \shape #'(
                      ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                      ) \etc

beamPositionsA = \once \override Beam.positions = #'(1 . 2)

%%% Music %%%

global = {
  \time 4/4
  \key cs \major
  \eighthsInTwos.44
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \tupletOff
  \partial 4 \scaleDurations 2/3 { \voiceOne <fs' gs>8 q es' 
    <es, gs>8 q cs' <fs, as> q ds'  <ds, fs> q bs'  <es, gs> q cs' | 
    <ds, gs> q as'  <cs, fss> q ds' <bs, fs'> q ds' <fs, gs> q es' |
    <es, gs>8 q cs'  <e, fs> q ds'  <ds, fs> q b'  <d, e> q cs' |
    <cs, e>8 q a'  <cs, e> q gs'  \beamPositionsA <cs, ds> q fss
      <gs, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <gs,, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <gs,, ds'> q gs' |
    <gss, ds'>8 q gss'  <as, ds> q as'  <fs as> q fs'  <es, as> q es' |
    <fs, as>8 q ds'  <fs, cs'> q ds'  <fs, bs> q ds'  <fs, gs>8 q es' |
    
    \barNumberCheck 9
    <es, gs>8 q cs' <fs, as> q ds'  <ds, fs> q bs'  <es, gs> q cs' | 
    <ds, gs> q as'  <cs, fss> q ds' <bs, fs'> q ds' <fs, gs> q es' |
    <es, gs>8 q cs'  <e, fs> q ds'  <ds, fs> q b'  <d, e> q cs' |
    <cs, e>8 q a'  <cs, e> q gs'  \beamPositionsA <cs, ds> q fss
      <gs, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <bs, fs' gs> q bs' |
    <cs, e a>8 <cs a'> cs'  <fs, cs'> q fs'  <e, cs'> q e' <css, gs'> q css' |
    <css, gs'>8 q css'  <ds, gs> q ds'  \oneVoice <bs ds> q bs'
      <as, ds> q as' |
    <as, ds>8 q as'  <as, fss'> q as'  <gs, ds'> q gs' 
  } ds4-\slurShapeA ( |
  
  \barNumberCheck 17
  cs4 b8 as gs ds es fs |
  fs4-> ds2) \scaleDurations 2/3 { <as ds>8 q as' |
    <gss, ds'>8 q gss'  <gs, ds'> q gs'  <fs, css'> q fs'  <es, css'> q es' |
    <es, css'>8 q es'  <fs, ds'> q fs'  <fs, as> q ds'
  } as''4( |
  gs4 fs8 es ds as bs cs |
  cs4 as2) \scaleDurations 2/3 { <es as>8 q es' |
    <dss, as'>8 q dss'  <ds, as'> q ds'  <cs, gss'> q cs'  <bs, gss'> q bs' |
    <bs, gss'>8 q bs'  <cs, as'> q cs'  <cs, es> q as'
  } <as fs' cs'>4( |
  
  \barNumberCheck 25
  <gs fs' b>4 <as fs' as>8 <b cs gs'> 
    <<
      { \voiceOne fs'8 cs ds es }
      \new Voice { \voiceTwo <as, cs>4 <a cs> }
    >> |
  \oneVoice <gs cs es>4 <es gs cs>2) <ds b' fs'>4^( |
  <css b' es>4 <ds b' ds>8 <es fs cs'!>
    <<
      { b' fs gs as }
      \new Voice { \voiceTwo <ds, fs>4 <d fs> }
    >> |
  <cs fs as>4 <as fs'>4.) 
    <<
      { fs'8^( gs as }
      \new Voice { s8 \voiceTwo <cs, fs>4 }
    >> |
  <cs fs as>4 <as fs'>4.)
    <<
      { \voiceOne as'8-\slurShapeB ( bs cs }
      \new Voice { \voiceTwo s8 <es, as>4 }
    >> |
  <es as cs>4 <cs as'>4.)
    <<
      { \voiceOne as'8( bs cs }
      \new Voice { \voiceTwo s8 <es, as>4 }
    >> |
  \scaleDurations 2/3 {
    \oneVoice <fs! as>8 q es'  <fs, bs> q ds'  <ds, fs> q cs'
      <ds, fs> q bs' |
    <bs, ds>8 q as'  <bs, ds> q fss'  <bs, ds> q gs') <fs gs> q es' |
    
    \barNumberCheck 33
    <es, gs>8 q cs' <fs, as> q ds'  <ds, fs> q bs'  <es, gs> q cs' | 
    <ds, gs> q as'  <cs, fss> q ds' <bs, fs'> q ds' <fs, gs> q es' |
    <es, gs>8 q cs'  <e, fs> q ds'  <ds, fs> q b'  <d, e> q cs' |
    <cs, e>8 q a'  <cs, e> q gs'  \beamPositionsA <cs, ds> q fss
      <gs, ds'> q gs' |
    <as, ds>8 q as'  <es as> q es'  <ds, as'> q ds'  <bs, gs'> q bs' |
    <cs, gs' b>8 q cs'  <as cs> q as'  <gs, cs> q gs'  <as, cs> q as' |
    <as, dss>8 q as'  <as, dss> q bs'  <gs, ds'> q gs'  <gs, ds'> q gs' |
    <gs, css>8 q gs'  <gs, css> q as'  <fs, as> q fs'  <ds, as'> q ds' |
    
    \barNumberCheck 41
    <gs, cs>8 q gs'  <gs, cs> q gs'  <a, cs fss> q  a' <a, cs fss> q a' |
    <as,! cs fss>8 q as'  <as, cs fss> q as'  <bs, fs' gs> q bs'
      <bs, fs' gs> q bs' |
  } 
  <cs, es gs cs>4 \scaleDurations 2/3 { <fs, gs>8 q es'  <es, gs> q cs'
      <e, fs> q ds' |
    <ds, fs>8 q b'  <d, e> q cs'  <cs, e> q a' <bs,! fs'!> q gs' |
    <cs, es>8 q gs' <fs gs>8 q es'  <es, gs> q cs'  <e, fs> q ds' |
    <ds, fs>8 q b'  <d, e> q cs'  <cs, e> q a' <bs,! fs'!> q gs' |
    <cs, es>8 q gs'  <cs, e> q a'  <cs, e> q a'  <bs, fs'!> q gs' |
    <cs, es>8 q gs'  <cs, e> q a'  <cs, e> q a'  <bs, fs'!> q gs' |
    
    \barNumberCheck 49
    <cs, es>8 q gs'  <es gs> q cs'  <gs cs> q es'  <cs es> q gs' |
    \ottava 1 <es gs>8 q cs'  <gs cs> q es'  <cs es> q gs'  <es gs> q cs' |
  }
  <gs es'>4 \ottava 0 r <gs,, cs gs'> r |
  <es, gs cs>1 |
  \bar "|."
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
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 6 |
  cs8 ds, gs4 as8 ds, gs4 |
  s1 |
  
  \barNumberCheck 33
  s1 |
  cs8( bs bs as gs4) s4 |
  s1 |
  s4 e8 e ds4 s |
  s1 * 2 |
  <fs, fs'>4. <bs bs'>8 <es, es'>4. q8 |
  <as as'>4. q8 ds <ds as' ds> fs <ds as' ds> |
  
  \barNumberCheck 41
  s1 * 3 |
  s2. gs4->~ |
  \hideNoteHead gs4 s2. |
  s2. gs4->~ |
  gs4 s2 gs4~ |
  \hideNoteHead gs4 s2 gs4~ |
  gs4 s2. |
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
  e4 ds <ds cs'!>2 |
  <gs fss'>2 \oneVoice <gs bs gs'>4 \scaleDurations 2/3 { <gs b>8 q gs' | 
                                                
    \barNumberCheck 17
    <gs, ds'> q gs'  <ds, gs> q fs'  <b,, gs'> q ds'  <gs,, ds'> q b' |
    <gs, ds'>8 q b'  <fs, ds'> q as'  <es, ds'> q gss'  
  } <fs,, fs'>4 |
  q8 <es es'>\< <b' b'>4->\! q8-> <as as'>8~ q q |
  q4 <ds as'>2 \scaleDurations 2/3 { <ds' as'>8 q fs' |
    \clef treble <ds as'>8 q ds'  <as, ds> q cs'  <fs,, ds'> q as' \clef bass
      <ds,, as'> q fs' |
    <ds, as'>8 q fs'  <cs, as'> q es'  <bs, as'> q dss'
  } <cs,, cs'>4 |
  q8 <bs bs'> <fs' fs'>4 q8 <es es'>~ q q |
  q4 <as es'>2 \scaleDurations 2/3 { <fs cs'>8 q fs' |
                                     
    \barNumberCheck 25
    <fs, cs'> q fs'  <cs fs> q cs'  <fs, cs'> q fs'  <cs, fs> q cs' |
    <fs,, cs'> q gs'  <cs, gs'> q cs'  <gs cs> q es'  <fs,, b> q fs' |
    <fs, b>8 q fs'  <b, fs'> q b'  <fs b> q fs'  <b,, fs'> q b' |
    <fs, cs'> q fs'  <cs fs> q cs'  <cs, fs> q cs'  <fs,, cs'> q fs' |
    <fs, cs'> q fs'  <cs fs> q cs'  <cs, fs> q cs'  <fss,, cs'> q as' |
    <fss, cs'> q as'  <es as> q es'  <es, as> q es'  <fss,, cs'> q as' |
  }
  \voiceFour gs,2 gs |
  \oneVoice <gs fs'>2. <gs bs'>4 |
                                             
  \barNumberCheck 33
  <cs b'>4 <fs, as'> <gs gs'> < cs gs'> |
  \voiceFour ds2 gs4 \oneVoice <gs, bs'> |
  <cs b'>4 <fs, as'> <b a'> <e, gs'> |
  <a a'>4 \voiceFour a as \oneVoice <bs, bs'>8 fs'' |
  <cs, cs'>8 fs' <fs as fs'>2-> <ds, ds'>8 gs' |
  <es, es'> cs'' <cs b'>2-> <fs,, fs'>8 cs'' |
  \voiceFour <fs,, fs'>8 dss'' <bs bs'> bs, es, ds'' <b b'> es,, |
  as8 es'' <as, as'> as, <ds, ds'>4 <fs fs'> |
  
  \barNumberCheck 41
  \voiceFour <gs gs'>8 gs' \oneVoice <es cs' es> es <gs, gs'> a'~ 
    <e a cs fss> e |
  <gs, gs'>8 as'~ <ds, as' cs fss> ds \stemDown <gs, gs'> gs'~ \stemNeutral
    <ds gs bs fs'> <gs, gs'> |
  <cs, cs'>4 bs'' b as |
  a4 gs fss \voiceFour gs8 gs, |
  <cs gs'>4 \oneVoice bs' b as |
  a4 gs fss \voiceFour gs8 gs, |
  cs4 fss2^> gs8 gs, |
  <cs gs'>4 fss2^> gs8 gs, |
  
  \barNumberCheck 49
  cs4 \scaleDurations 2/3 { 
    \oneVoice <gs' cs>8 q cs,  <cs' es> q es,  <es' gs> q gs, |
    \clef treble <gs' cs>8 q cs,  <cs' es> q es,  <es' gs> q gs,
      <gs' cs> q cs, |
  }
  <es cs'>4 r \clef bass <es,, cs' es> r |
  <cs, gs' cs>1 |
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
  s1 |
  s2. s4\mf |
  
  \barNumberCheck 25
  s1 * 6 |
  s4 s2.\dim |
  s2. s4\p |
  
  \barNumberCheck 33
  s1\< |
  s1\> <>\! |
  s1 * 2 |
  s4 s2\> s4\! |
  s1 |
  s1\f |
  s1 |
  
  \barNumberCheck 41
  s1\cresc |
  s1 |
  s4\sf s2.\p |
  s1 * 5 |
  
  \barNumberCheck 49
  s4 s2.\dim |
  s1 |
  s2 s\p |
  s1 |
}

% MIDI only 
pedal = {
  \partial 4 s4\sd 
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd s\su\sd |
  
  \barNumberCheck 9
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4 s\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd s\su\sd |
  
  \barNumberCheck 17
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  
  \barNumberCheck 25
  s1 |
  s2.\su\sd s4\su\sd |
  s1 |
  s2.\su\sd s4\su\sd |
  s2. s4\su\sd |
  s1 |
  s1\su\sd
  s2.\su\sd s4\su\sd
  
  \barNumberCheck 33
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  
  \barNumberCheck 41
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  s4\su\sd s2\su\sd s4\su\sd |
  
  \barNumberCheck 49
  s1\su\sd |
  s1 * 3 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup Allegro #2 #0 168
  \tempo 4 = 168
  \partial 4 s4
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 * 3 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  
  \barNumberCheck 9
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 * 3 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  
  \barNumberCheck 17
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  
  \barNumberCheck 25
  s1 * 7 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  
  \barNumberCheck 33
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 |
  s4 \tempo 4 = 144 s2 \tempo 4 = 168 s4 |
  s1 * 4 |
  
  \barNumberCheck 41
  s1 * 2 |
  s4 \tempo 4 = 184 s2. |
}

forceBreaks = {
  \partial 4 s4
  s1 s1 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

etudeOneNotes =
\score {
  \header {
    title = "Nº 1"
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 1"
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

etudeOneMidi =
\book {
  \bookOutputName "etude-op8-no01"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
