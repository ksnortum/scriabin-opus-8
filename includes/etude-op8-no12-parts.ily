%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveFingerA = -\tweak Y-offset 0 \etc
moveFingerB = -\tweak Y-offset 1 \etc
moveRestA = \offset Y-offset 1 \etc
moveTupletA = \tweak TupletNumber.Y-offset 5 \etc
moveTupletB = \tweak TupletNumber.Y-offset -3 \etc
moveTupletC = \tweak TupletNumber.Y-offset 6 \etc
moveTupletD = \tweak TupletNumber.Y-offset 3.5 \etc
moveTupletE = \tweak TupletNumber.Y-offset 4.5 \etc

forceHShiftA = \once \override NoteColumn.force-hshift = 1.7 

%%% Music %%%

fingeringInsdeStaff = \override Fingering.outside-staff-priority = ##f

global = {
  \time 4/4
  \key ds \minor
  \set Staff.extraNatural = ##f
  \eighthsInTwos.44
}

rightHandUpper = \relative {
  \partial 16 r16
  r2 r8. \voiceOne <as' as'>16 <as, as'>8. <es' es'>16 |
  \tupletOff
  q2 \tuplet 3/2 { <ds ds'>8 <css css'> <ds ds'> } <es es'>16[ <fs fs'>-4 
    <as as'>-5 r32 <cs! cs'!>]-4 |
  q4 <b b'> r8. q16 <b, b'>8. <fs' fs'>16 |
  q2 \tuplet 3/2 { <e e'>8 <ds ds'> <e e'> } <fs fs'>16[ <gs gs'> <b b'> r32 
    <ds ds'>] |
  q4 <css css'> r8. <ds ds'>16 <ds, ds'>8. <as' as'>16 |
  q2 \tuplet 3/2 { <gs gs'>8 <fss fss'> <gs gs'> } <as as'>16[ <b b'> <ds ds'>
    \moveRestA r32 <fs! fs'!>] |
  q4 <es es'>2 <e e'>4 |
  \undo \omit TupletNumber
  <ds ds'>4 <cs cs'>8 <b b'> <as as'> <gs_~ gs'~> \moveTupletA 
    \tuplet 3/2 { q4 <fs fs'>8 } |
    
  \barNumberCheck 9
  q4 <es es'> b'8.\rest <as as'>16 <as, as'>8[ b'16\rest <es, es'>] |
  \omit TupletNumber
  q2 \tuplet 3/2 { <ds ds'>8 <css css'> <ds ds'> } <es es'>16[ <fs fs'>
    <as as'> r32 <cs! cs'!>] |
  q4 <b b'> r8. q16 <b, b'>8. <fs' fs'>16 |
  q2 \tuplet 3/2 { <e e'>8 <ds ds'> <e e'> } <fs fs'>16[ <gs gs'> <b b'> r32 
    <ds ds'>] |
  q4 <css css'> r8. <ds ds'>16 <ds, ds'>8. <as' as'>16 |
  q2 \tuplet 3/2 { <gs gs'>8 <fss fss'> <gs gs'> } <as as'>16[ <b b'> <ds ds'>
    r32 <fs! fs'!>] |
  q4 <es es'>2 <e e'>4 |
  \undo \omit TupletNumber
  <ds ds'>4 <cs cs'>8 <b b'> <as as'> <gs_~ gs'~> 
    \moveTupletA \tuplet 3/2 { q4 <as as'>8 } |
    
  \barNumberCheck 17
  \omit TupletNumber
  <gs gs'>4 <fs fs'> \tuplet 3/2 { b8\rest b\rest <cs cs'>  <gs gs'> <fs fs'> 
                                   <gs gs'> } |
  \oneVoice \tuplet 3/2 { <cs, cs'> <ds ds'> <e e'> } <gs gs'>4~ 
    \tuplet 3/2 { q8 <fs fs'> <gs gs'> }  <a a'>16[ <cs cs'> <e! e'> r32 
    <gs gs'>] |
  \oneVoice 
  q4 <fs fs'>~ \tuplet 3/2 { q8 <e e'> <cs cs'>  <a a'> <gs gs'> <a a'> } |
  \tuplet 3/2 { <fs fs'> <gs gs'> <a a'> }  <fs' fs'>2 
    \undo \omit TupletNumber \tupletUp \moveTupletC 
    \tuplet 3/2 { <e e'>4 <fs fs'>8 } |
  <e e'>4 \moveTupletA \tuplet 3/2 { <ds ds'> <cs cs'>8 } \omit TupletNumber
    \tuplet 3/2 { <b b'> <a a'> <gs gs'>  <fs fs'> <e e'!> <fs fs'> } |
  \tuplet 3/2 { <b, b'>8 <cs cs'> <d d'> } <fs fs'>4~ 
    \tuplet 3/2 { q8 <e e'> <fs fs'> }  <g g'>16[ <b b'> <d! d'> r32 
    <fs fs'>] |
  q4 <e e'>~ \tuplet 3/2 { q8 <d d'> <b b'>  <g g'> <fs fs'> <g g'> } |
  \tuplet 3/2 { <e e'>8 <fs fs'> <g g'> } <e'! e'>2 \undo \omit TupletNumber
    \moveTupletC \tuplet 3/2 { <d d'>4 <e e'>8 } |
    
  \barNumberCheck 25
  \omit TupletNumber
  <d d'>4 \tuplet 3/2 { <cs cs'>4 <b b'>8  <a a'> <g g'> <fs fs'>
                        <e e'> <d d'!> <e e'> } |
  \tuplet 3/2 { <a, a'> <cs cs'> <d d'> } <a'! d a'>4~ q8 <a cs fs a>8->~ 
    \tuplet 3/2 { q[ r q]-> } |
  <a bs fs' a>4 <gs bs fs' gs> \tuplet 3/2 { r8 r <gs gs'>  <ds ds'> <cs cs'>
                                             <ds ds'> } |
  \tuplet 3/2 { <gs, gs'>8 <bs bs'> <cs cs'> }  <gs' cs gs'>4~ q8 <g b e g>->~
    \undo \omit TupletNumber \moveTupletD \tuplet 3/2 { q4 q8 } |
  <g as e' g>4 <fs as e' fs> \omit TupletNumber 
    \tuplet 3/2 { r8 r <fs fs'>  <cs cs'> <b b'> <cs cs'> } |
  \tuplet 3/2 { <fs, fs'>8 <as as'> <b b'> } <fs' b fs'>2 
    \undo \omit TupletNumber \moveTupletE
    \tuplet 3/2 { <es! gss es'!>4 <ds gss ds'>8 } |
  \omit TupletNumber 
  \tuplet 3/2 { <as ds as'>8 <css css'> <ds ds'> } <as' ds as'>4 
    \tuplet 3/2 { <as, ds as'>8 <css css'> <ds ds'> } <b' ds b'>4 |
  \tuplet 3/2 { <b, b'>8 <ds ds'> <es es'> } \undo \omit TupletNumber
    \voiceOne \moveTupletA \tuplet 3/2 { <b' ds b'>4 <as ds as'>8-> } 
    \omit TupletNumber \tuplet 3/2 { <as as'>4-> <gs gs'>8 } q4 |
    
  \barNumberCheck 33
  \oneVoice \tuplet 3/2 { <as, as'>8 <cs cs'> <css css'> } <as' as'>4 r8. 
    q16^\rit <as, as'>8. <es' es'>16 |
  \voiceOne q2 \tuplet 3/2 { <ds as' ds>8 <css as' css> <ds as' ds> }
    <es es'>16[ <fs fs'> <as as'> r32 <cs! cs'!>] |
  q4 <b b'> r8. q16 <b, b'>8. <fs' fs'>16 |
  q2 \tuplet 3/2 { <e b' e>8 <ds b' ds> <e b' e> } <fs fs'>16[ <gs gs'> <b b'>
    \moveRestA r32 <ds ds'>] |
  q4 <css css'> \tuplet 3/2 { r8 r <ds ds'>  <ds, ds'>4 <as' as'>8 } |
  q2 \tuplet 3/2 { <gs ds' gs>8 <fss ds' fss> <gs ds' gs> } <as as'>16[ <b b'>
    <ds ds'> \moveRestA r32 <fs! fs'!>] |
  q4 <es es'>2 <e e'>4 |
  <ds ds'>4 <cs cs'>8 <b b'> \tuplet 3/2 { <as as'>4 <gs_~ gs'~>8 q4 
                                           <fs fs'>8 } |
  
  \barNumberCheck 41
  q2 <es es'>4 \tuplet 3/2 { r8 r <as as'> } |
  q2 <gs gs'>4 \tuplet 3/2 {  r8 r <cs cs'> } |
  q2 <b b'>4 \tuplet 3/2 { r8 r <fs' fs'> } |
  q4 <es es'>2 <e_~ e'~>4 |
  q4 <ds ds'>2 <css_~ css'~>4 |
  q4 <ds ds'>2 <cs_~ cs'~>4 |
  q4 <b b'>2 <b_~ b'~>4 |
  q4 <as as'> <b b'> <fs fs'> |
  
  \barNumberCheck 49
  <gs gs'>2 r8. <as as'>16 <as, as'>8. <es' es'>16 |
  q2 <ds ds'>8 b'16\rest as as,8. es'16 |
  es2 ds8 \clef bass r16 as as,8. es'16 |
  \tuplet 3/2 { 
    es8 ds es  es ds b'  b as \clef treble es'  es ds b' |
    b8 as es'  es ds \ottava 1 b'  b as es'  es ds as' 
  }
  \oneVoice <ds, as' ds>4 \ottava 0 r <fs,,, ds' as'>2 |
  <fs as ds fs>1 |
  \bar "|."
}

rightHandLower = \relative {
  \partial 16 s16
  s1 |
  \voiceTwo as'2 as4 as8 ds16 r |
  fs2 r4 r |
  b,2 b4 b8 e16 r |
  gs2 r4 r |
  ds2 ds4 ds8 gs16 \moveRestA r |
  b4 b2 <gs b>4 |
  \omit TupletBracket
  q4 <ds gs> ds \moveTupletB \tuplet 3/2 { ds4 <b ds>8 } |
  
  \barNumberCheck 9
  <as css>2 s |
  as2 as4 as8 ds16 r |
  fs2 s |
  b,2 b4 b8 e16 r |
  gs4 gs r r |
  ds2 ds4 ds8 gs16 r |
  b4 b2 b4 |
  <gs b>4 <ds gs> <cs es!> q |
  
  \barNumberCheck 17
  cs2 s |
  s1 * 7 |
  
  \barNumberCheck 25
  s1 * 7 |
  s2 \tupletOff \tuplet 3/2 { \forceHShiftA <as ds>8 q ds  \forceHShiftA 
                              <gs, ds'> q q } |
  
  \barNumberCheck 33
  s1 |
  \tuplet 3/2 { r8 <es as> q  q q q } s4 as8 ds16 r |
  \tuplet 3/2 { r8 <cs fs> q  \forceHShiftA <b fs'> q q } q4 s |
  \tuplet 3/2 { r8 <fs b> q  q q q } s4 b8 e16 \moveRestA r |
  \tuplet 3/2 { r8 <ds gs> q  \forceHShiftA <css gs'> q q  q q 
                \forceHShiftA <ds gs>  <ds, b'> q ds' } |
  \tuplet 3/2 { r8 <as ds> q  q q q } s4 ds8 gs16 \moveRestA r |
  \tuplet 3/2 { 
    r8 <fs b>^> q^> <es b'>^> q^> q^>  q^> q^> q^>  \forceHShiftA <e b'>^> q^>
      q^> |
    <ds gs b>8 q q  <ds gs> q q  ds <as ds> <gs ds'> \forceHShiftA q q <b ds> |
    
    \barNumberCheck 41
    r8 <fs b ds> q  q q q  <es b' ds> q q  q q <ds' fs> |
    r8 <as ds fs> q  q q q  <gs ds' es> q q  q q <ds' gs> |
    r8 <cs ds gs> q  q q q  <b ds gs> q q  q q b' |
    <fs b> q q  <es b'> q q  q q q  <e b'> q q |
    q8 q q  <ds gs b> q q  q q q  <css gs' b> q q |
    %% second accidental because of bug (still in 2.25.11)
    %% https://gitlab.com/lilypond/lilypond/-/issues/3466
    q8 <\single \omit Accidental css gs' b> q <ds b'> q q  q q q <cs as'> q q |
    q8 q <cs e as>  <b e gs> q q  q q q  <b ds fs> q q |
    q8 q q  <as ds fs> q q  <b ds> q q  q q q |
    
    \barNumberCheck 49
    q8 q q  q q q  <as css> s4 s4. |
    r8 <es as> q  q q q
  } <ds as'>4 r |
  \tuplet 3/2 { r8 fs, fs  fs fs fs } fs4 r |
  \tuplet 3/2 { 
    <as, as'>4 q8 q4 <ds ds'>8 q4 \clef treble <as' as'>8 q4 <ds ds'>8 |
    q4 <as' as'>8 q4 \ottava 1 <ds ds'>8 q4 <as' as'>8 q4 <ds ds'>8 |
  }
  s1 * 2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 16 <ds, ds'>16
  \scaleDurations 2/3 {
    \fingeringInsdeStaff
    q8 as''-1 as,  fs'-2 ds' as,-\moveFingerA -2  <ds, ds'> as'' as,
      fs' ds' as, |
    <ds, fs'>8 as'' as,  fs' as' as,,-\moveFingerA -2  <ds, fs'> as'' as,
      fs' ds' ds,-\moveFingerB -2 |
    <ds, fs'>8 b'' b,  fs' fs' b,,  <ds, fs'>8 b'' b,  fs' fs' b,, |
    <ds, gs'>8 b'' b,  gs' b' b,,  <ds, gs'> b'' b,  gs' e' b, |
    <ds, gs'>8 b'' es,!  gs gs' b,,  <ds, gs'> b'' ds,  gs gs' b,, |
    <ds, gs'>8 ds'' ds,  b' ds' b,,  <ds, gs'> ds'' ds,  b' gs' b,, |
    <ds, ds'>8 b'' css,  gs' es' b,  <ds, ds'> b'' css,  gs' e' <ds,, ds'> |
    \voiceThree gs8 b' ds,  gs ds' gs,,  es b'' ds,  gs ds' es,, |
    
    \barNumberCheck 9
    as8 as' as,  gs' css es,  as, as' as,  gs' css as, |
    ds,8 as'' as,  fs' as' as,,  <ds, fs'> as'' as,  fs' ds' ds, |
    ds,8 b'' b,  fs' <b fs'> b,_2  <ds, fs'> b'' b,  fs' ds' b |
    ds,,8 b'' b,  gs' b' b,,  <ds, gs'> b'' b,  gs' e' b |
    ds,,8 b'' es,!  gs <css gs'> b,  <ds, gs'> b'' ds,  gs <b gs'> b |
    ds,,8 ds'' ds,  b' ds' b,,  <ds, gs'> ds'' ds,  b' gs' gs, |
    ds8 b' css,  gs' <b es> gs  ds b' css,  gs' <b e> ds, |
    gs,8 b' ds,  gs ds' gs,,  cs cs' cs,  b' es cs, |
    
    \barNumberCheck 17
    fs,8 cs'' cs,  \oneVoice as' fs' cs,  <fs, fs'> a'-1 cs,-4  fs-2 cs'-1 
      cs,-\moveFingerB -2 |
    \voiceThree 
    <fs, fs'>8 cs'' cs,  a' e' cs,  <fs, fs'> cs'' cs,  fs <a e'> fs |
    cs8 a' cs,  fs <a e'> cs,  cs, a'' cs,  fs <a e'> fs |
    cs8 a' cs,  fs <a e'> fs  c a' c,  fs <a e'> fs |
    b,8 a' b,  fs' <a ds> b,  b, a'' b,  fs' <a c> b, |
    e8 g b,  e <g d'> b,  <e, e'> g' b,  e <g d'> e |
    b8 g' b,  e <g d'> b,  b, g'' b,  e <g d'> e |
    b8 g' b,  e <g d'> e  bf g' bf,  e <g d'> e |
    
    \barNumberCheck 25
    <a,, a'>8 g'' a,  e' <g cs> <e, e'>  <a, a'> g'' a,  e' <g bf> a, |
    d8 a' a,  fs' d' a,  d, a'' a,  fs' cs' d,, |
    gs8 fs' gs,  ds' bs' ds,  gs, fs' gs,  ds' a' gs, |
    cs8 gs' gs,  e' cs' gs,  cs, e' g,  e' b' cs,, |
    fs8 e' fs,  cs' as' cs,  fs, e' fs,  cs' fs fs, |
    b,8 fs'' fs,  ds' b' fs  b, fs' fs,  ds' gss fs |
    as,8 as' as,  fs' ds' fs,  as, as' as,  fs' ds' fs, |
    as,8 b'-> es,->  gs-> ds'-> \clef treble <b ds b'>->  q-> q q q q 
      \clef bass es, |
      
    \barNumberCheck 33
    as,8 as' es  gs css <gs css as'>  q <gs css> q  q q as, |
    ds,8 <as' fs' as> q  q q q  <fs' as fs'> <as, fs' as> q  <ds as' ds>
      <ds' fs> ds, |
    ds,8 <fs' b fs'> q  q <b, fs' b> q  q q q <fs' ds'> <fs fs'> b |
    ds,,8 <b' gs' b> q  q q q  <gs' b gs'> <b, gs' b> q  <e b' e> <gs e' gs>
      b |
    ds,,8 <b' es! gs b> q  <es gs b es> q q  q q <ds gs b ds>  <gs b gs'> q b |
    ds,8 <ds b' ds> q  q q q  <b' ds b'> <ds, b' ds> q  <gs ds' gs> <b gs' b>
      gs |
    ds8 <css gs' b>-> q->  <gs' b es>-> q-> gs  ds <css gs' b>-> q->
      <gs' b e>-> q-> ds |
    gs,8 <ds' gs ds'> q  q q q \clef treble <b' ds b'> q q \clef bass
      <ds, b' ds> q gs, |
      
    \barNumberCheck 41
    ds8 <b' fs' b> q  q q q  <b es b'> <gs gs'> q  q q gs |
    ds8 <b' fs' b> q  q q q  <b es b'> <gs gs'> q  q q gs |
    ds8 <ds' gs ds'> q  q q q  <gs ds' gs> <b, b'> q  q q b' |
  }
}

leftHandLower = \relative {
  \partial 16 s16
  s1 * 7 |
  \voiceFour 
  \scaleDurations 2/3 {
    <gs,, gs'>4 s8 s4 q8 <es es'>4 s8 s4 q8 |
    
    \barNumberCheck 9
    <as as'>4 s8 s4 <es' es'>8  <as, as'>4 s8 s4 q8 |
    <ds, ds'>8 s4 s2. s4 <ds' ds'>8 |
    <ds, ds'>8 s4 s2. s4 <b'' b'>8 |
    <ds,, ds'>8 s4 s2. s4 <b'' b'>8 |
    <ds,, ds'>8 s4 s2. s4 <b'' b'>8 |
    <ds,, ds'>8 s4 s2. s4 <gs' gs'>8 |
    <ds ds'>8 s4 s <gs gs'>8  <ds ds'> s4 s q8 |
    <gs, gs'>8 s4 s q8  <cs cs'> s4 s q8 |
    
    \barNumberCheck 17
    <fs, fs'>8 s4 s4. s2. |
    s2. s4. s4 <fs' fs'>8 |
    <cs cs'>4 s8 s2. s4 <fs fs'>8 |
    <cs cs'>4 s8 s4 <fs fs'>8 <c c'>4 s8 s4 <fs fs'>8 |
    <b, b'>4 s8 s4. b4 s8 s4. |
    <e e'>4 s8 s2. s4 q8 |
    <b b'>4 s8 s2. s4 <e e'>8 |
    <b b'>4 s8 s4 <e e'>8  <bf bf'>4 s8 s4 <e e'>8 |
    
    \barNumberCheck 25
    s1. |
    <d d'>8 s4 s <a a'>8  <d, d'>4 s8 s4 q8 |
    <gs gs'>4 s8 s4 <ds' ds'>8  <gs, gs'>4 s8 s4. |
    <cs cs'>4 s8 s4 <gs gs'>8  <cs, cs'>4 s8 s4 q8 |
    <fs fs'>4 s8 s4 <cs' cs'>8  <fs, fs'>4 s8 s4 q8 |
    <b, b'>4 s8 s4 <fs'' fs'>8  <b, b'>4 s8 s4 <fs' fs'>8 |
    <as, as'>4 s8 s4 <fs' fs'>8  <as, as'>4 s8 s4 <fs' fs'>8 |
    <as, as'>4 s8 s2. s4 <es' es'>8 |
    
    \barNumberCheck 33
    <as, as'>4 s8 s2. s4 q8 |
    <ds, ds'>4 s8 s2. s4 <ds' ds'>8 |
    <ds, ds'>4 s8 s2. s4 <b'' b'>8 |
    <ds,, ds'>4 s8 s2. s4 <b'' b'>8 |
    <ds,, ds'>4 s8 s2. s4 <ds'' ds'>8 |
    <ds, ds'>4 s8 s2. s4 <gs gs'>8 |
    <ds ds'>4 s8 s4 <gs gs'>8 <ds ds'>4 s8 s4 q8 |
    <gs, gs'>4 s8 s2. s4 q8 |
    
    \barNumberCheck 41
    <ds ds'>4 s8 s2. s4 <gs gs'>8 |
    <ds ds'>4 s8 s2. s4 <gs gs'>8 |
    <ds ds'>4 s8 s2. s4 <b'' b'>8 |
  }
  \oneVoice <css,, cs'>8 <b'' b'> <es b' es> <b b'>  <ds,, ds'> <b'' b'>
    <e b' e> <b b'> |
  <e,, e'>8 <b'' b'> <ds gs b ds> <b b'> <es,, es'> <b'' b'> <css gs' b css>4 |
  <fs,, fs'>8 <css'' gs' b css> <ds fs b ds> <ds, ds'> <fss, fss'> 
    <ds'' fs! b ds> <e as cs e> <e, e'> |
  <gs, gs'>8 <e'' as cs e> <e gs b e> <e, e'> <gss, gss'> <e'' gs! b e>
    <ds fs b ds> <gss,,! gss'!> |
  <as as'> <fs'' b ds fs> \scaleDurations 2/3 { <fs as ds fs> q q
      <fs gss b ds fs> q q  q q q |
    
    \barNumberCheck 49
    <fs gs! ds' fs>8 q q  q q q  <es gs css es> <gs css es> q  <gs css> q
      <as,, as'> |
    <ds, ds'> <as'' fs' as> q  q q q  <fs' as fs'> <as, as'> q  q q q |
    <ds,, ds'> <as'' as'> q  q q q  q <as, as'> q  q q q |
    as8 <ds, ds'> as'  as <ds, ds'> ds'  ds <as as'> as'  as <ds, ds'> ds' |
    ds8 <as as'> as'  as <ds, ds'> \clef treble ds'  ds <as as'> as'  as 
      <ds, ds'> <as' ds as'> |
  }
  q4 r \clef bass <ds,,,, ds' as'>2 |
  <ds' as' ds>1 |
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
  \partial 16 s16 
  s1 |
  s2. s8.\< s16\! |
  \tuplet 3/2 { s4\> s8\! } s2. |
  s2. s8.\< s16\! |
  \tuplet 3/2 { s4\> s8\! } s4 s2\cresc |
  s2. s8.\< s16\! |
  s1\f |
  s1 |
  
  \barNumberCheck 9
  s1 |
  s2.\f s8.\< s16\! |
  \tuplet 3/2 { s4\> s8\! } s2. |
  s2. s8.\< s16\! |
  \tuplet 3/2 { s4\> s8\! } s2. |
  s1 |
  s1\ff |
  s1\dim |
  
  \barNumberCheck 17
  \tuplet 3/2 { s4\> s8\! } s4\dim s2\p |
  s2. s4\< |
  s1\sf |
  s2 s\cresc |
  s4. s8\> s4. s8\! |
  s2.\p s4\< |
  s1\sf |
  s4 s2.\cresc |
  
  \barNumberCheck 25
  s1 * 2 |
  s4\sf\> s2\! s4\cresc |
  s4 s2\< s8 s\! |
  f4\sf\> s2.\! |
  s1\ff |
  s1 * 2 
  
  \barNumberCheck 33
  s1-\tweak Y-offset -2 \cresc |
  s2.-\tweak X-offset 0 -\tweak Y-offset -3 \ff s4\< |
  s4\> s2.\! |
  s2. s4\< |
  s4\> s2.\! |
  s2. s4\< <>\! |
  s1 * 2 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  s2 s8. s16\fff s4 |
  s1 |
  s2 s8. s16\fff s4 |
  s1 * 2 |
  s1-\tweak X-offset 0 \fff |
  s1 |
}

% MIDI only
pedal = {
  \partial 16 s16\sd
  s1 |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s\su\sd |
  
  \barNumberCheck 9
  s2\su\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s\su\sd |
  
  \barNumberCheck 17
  s2\su\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s4.\su\sd s8\su |
  s2\sd s\su\sd |
  s2\su\sd s\su\sd |
  
  \barNumberCheck 25
  s2\su\sd s\su\sd |
  s2\su\sd s8 s4.\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s8 s4.\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s1\su\sd |
  
  \barNumberCheck 33
  s1\su\sd |
  s2\su\sd s4. s8\su |
  s1\sd |
  s2\su\sd s4. s8\su |
  s1\sd |
  s2\su\sd s4. s8\su |
  s2\sd s\su\sd |
  s1\su\sd |
  
  \barNumberCheck 41
  s1\su\sd |
  s2\su\sd s\su\sd |
  s2\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s2\su\sd |
  
  \barNumberCheck 49
  s2\su\sd s\su\sd |
  s1\su\sd |
  s1\su\sd |
  s1\su\sd |
  s1\su\sd |
  s2\su s\sd |
  s1 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Patetico" #2 #0 100-112
  \tempo 4 = 100
  \partial 16 s16
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s2 \tempo 4 = 112 s |
  s1 * 7 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s2 s8 \tempo 4 = 96 s4. |
  \tempo 4 = 108
  s1 * 7 |
  
  \barNumberCheck 41
  s1 * 3
  \tempo 4 = 120
  s1 * 5 |
  
  \barNumberCheck 49
  s2 \tempo 4 = 108 s |
  s1 * 2
  \tempo 4 = 120
  s1 * 4 |
}

forceBreaks = {
  \partial 16 s16
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 2 \break
  s1 * 2 \pageBreak
  
  s1 * 2 \break
  s1 * 2 \break
  s1 * 2 \break
  s1 * 3 \break
}

etudeTwelveNotes =
\score {
  \header {
    title = \markup { Nº 12 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 12"
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

etudeTwelveMidi =
\book {
  \bookOutputName "etude-op8-no12"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
