%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \tweak positions #'(3 . 0) \etc
slurShapeB = \shape #'(
                        ((0 . 1) (0 . -1.5) (0 . -1.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc

beamPositionsA = \tweak Beam.positions #'(0.5 . 1) \etc
beamPositionsB = \tweak Beam.positions #'(0 . 0.5) \etc

%%% Music %%%

global = {
  \time 6/8
  \key b \minor
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  fs'8( <d d'> fs  <d d'> d <as as'> |
  b'8 <fs fs'> b  <es, es'> b' <e, e'> |
  b'8 <d, d'> g  <cs, cs'> e <b b'> |
  e8 <a, a'> d <g, g'> cs <fs, fs'>) |
  fs'8( <d d'> fs  <d d'> d <as as'> |
  a'!8 <fs fs'> a  <es es'> a <fs fs'> |
  bs8 <fs fs'> cs'  <a a'> ds <a a'> |
  cs8 <es, es'> cs'  <fs, fs'> cs' <fs, fs'>)
  
  \barNumberCheck 9
  a8( <fs fs'> a  <es es'> a <e e'> |
  a8 <ds, ds'> fs  <c c'> fs <b, b'>) |
  b'8( <gs gs'> b  <fss fss'> b <fs fs'> |
  b8 <es, es'> gs  <d d'> gs <cs, cs'>) |
  cs'8-\slurShapeA ( <as as'> d  <b b'> b <es, es'>) |
  cs'8-\slurShapeA ( <as as'> d  <b b'> b <es, es'>) |
  ds'8-\slurShapeB ( <bs bs'> ds  <bs bs'> ds <bs bs'> |
  e8 <cs cs'> cs  <fs, fs'> cs' <fs, fs'>) |
  
  \barNumberCheck 17
  fs8-\slurShapeC ( <d d'> fs  <d d'> d <as as'> |
  b'8 <d, d'> b'  <es, es'> b' <e, e'> |
  b'8 <d, d'> g  <cs, cs'> e <b b'> |
  e8 <a, a'> as  <g g'> as <fs fs'>) |
  b'8( <g g'> b  <g g'> g <ef ef'> |
  d'8 <b b'> b  <es, es'> es <b b'>) |
  fs'8->( <d d'>) g->(  <d d'>) gs->( <d d'>) | 
  fs8->( <d d'>) g->(  <d d'>) gs->( <d d'>) | 
  
  \barNumberCheck 25
  fs8->( <d d'>) b'->(  <fs fs'>) d'->( <b b'>) |
  fs'8->( <d d'>) b'->(  <fs fs'>) d'->( <b b'>) |
  <d d'>4 r8 r4 r8 |
  <as,, e' fs cs'>4 r8 r4 r8 |
  d8--( <b b'>-- d-- <as as'> d <a a'> |
  b8 <g g'> b  <fs fs'> b <e, e'> |
  \clef bass g8 <d d'> g  <cs, cs'> g' <b, b'> |
  g'8 <d d'> g  <cs, cs'> g' <b, b'>) |
  
  \barNumberCheck 33
  \clef treble d'8( <b b'> d <as as'> d <a a'> |
  b8 <g g'> b  <fs fs'> b <e, e'> |
  \clef bass g8 <d d'> g  <cs, cs'> g' <b, b'> |
  g'8 <d d'> g  <cs, cs'> g' <b, b'>) |
  fs'8( <d d'> fs  <cs cs'> fs <b, b'> |
  fs'8 <d d'> fs  <cs cs'> fs <b, b'> |
  d8 <bf bf'> d  <bf bf'> d <bf bf'> |
  d8 <a a'> d  <a a'> d <a a'>) |
  
  \barNumberCheck 41
  \clef treble
  <<
    { 
      fs''4.(^\mf \tuplet 2/3 { e8 fs } | 
      fs4 a8~ a fs4) |
      fs4.( \tuplet 2/3 { e8 fs } |
      fs4 b8~ b fs4) |
    }
    \\
    { 
      <a, d>2. |
      <a cs>4 <fs cs'>8~ q4. |
      <a d>2. |
      <b d>4 <fs d'>8~ q <b d>4 |
    }
  >> 
  \tuplet 2/3 4. { <b d g>8( <b d a'> <b d fs> <b d g> } |
  <b g' d'>4. <d g cs>8 <d g b> <b d a'> |
  \tuplet 2/3 { <b d g>8 <b d fs> } <b d a'>-- <b d g>-- <b d fs>-- |
  <<
    { \voiceTwo d4. cs) | }
    \new Voice { \voiceOne <g e'>2. | }
  >> 
  
  \barNumberCheck 49
  <<
    { \voiceOne g'4.( \tuplet 2/3 { fs8 g } | }
    \new Voice { \voiceTwo <b, e>2. | }
  >> 
  \oneVoice <b ef g>4 <g ef' b'>8~ q <b ef g>4) |
  <d g b>4.^( \tuplet 2/3 { <d g a>8 <d g b> } |
  <d fs b>4 <b fs' d'>8~ q <d fs b>4) |
  \tuplet 2/3 4. { <d a' d>8( <fs a e'> <fs a cs> <fs a d> } |
  <fs d' a'>4. <a d gs>8 < a d fs> <fs a e'> |
  \tuplet 2/3 { <fs a d>8 <fs a cs> } <e gs d'> <d gs cs> <d gs b> |
  <d e b'>4. <cs e a>) |
  
  \barNumberCheck 57
  <cs fs a>8-.^( <a cs gs'>-. <a cs fs>-. 
    \tuplet 2/3 { <a cs e>-. <a cs fs>-. } |
  \tuplet 2/3 4. { \beamPositionsA <a cs>8 <a cs ds> <a cs e> <a cs gs'> } |
  <a e' fs>4. <a e' a>~ |
  q4. <a ds b'>) |
  <b e g>8^( <g b fs'> <g b e>  <g b d>4 <g b e>8 |
  \tupletOff \tuplet 2/3 { \beamPositionsB <g b>8 <g b cs> 
                           <g b d> <g b fs'> } |
  <g d' e>4. <g d' g> |
  <g cs b'>4 < g cs a'>8 <g b g'> <g b d> <g cs e>) |
  
  \barNumberCheck 65
  <<
    { 
      \tupletOff \tuplet 2/3 { fs'4( e8 fs } |
      fs4 a8~ a fs4) |
      \tuplet 2/3 { fs4( e8 fs } |
      fs4 \oneVoice <fs, d' b'>8~ q <b d fs>4) |
    }
    \\
    {  
      <a d>2. |
      <a cs>4 <fs cs'>8~ q4. |
      <a d>2. |
      <b d>4 s8 s4. |
    }
  >> 
  \tuplet 2/3 { <b e g>8^( <b e a> <b e fs> <b e g> } |
  <e g e'>4. <e g d'>8 <e g cs> <b e b'> |
  <b es b'>4. <b es cs'>~ |
  q4 <b es b'>8 <b es cs'> <b es b'> <b es g> |
  
  \barNumberCheck 73
  fs'8 <b, b'> es  <b b'> b <es, es'>) |
  fs'8( <b, b'> es  <b b'> b <es, es'>) |
  fs'8( <d d'> es  <d d'> b <g g'>) |
  fs'8( <d d'> es  <d d'> b <g g'>) |
  b8( <g g'> b <g g'> b <g g'>) |
  <g' b>8->( g') <g, b>(  g'->) <g, b>( g') |
  as,,8( <fs fs'> as <fs fs'> as <fs fs'>) |
  <fs' as>8->( fs') <fs, as>( fs'->) <fs, as>( fs') |
  
  \barNumberCheck 81
  <d, fs>8->( d') <d, fs>( d'->) <as, d>( as') |
  <fs b>8->( fs') <es, b'>( es'->) <e, b'>( e') |
  <d, b'>8->( d') <cs, g'>( cs'->) <b, e>( b') |
  <a, e'>8->( a') <g, d'>( g'->) <fs, cs'>( fs') |
  <d fs>8->( d') <d, fs>( d'->) <bf, d>( bf') |
  <fs a>8->( fs') <es, a>( es'->) <fs, a>( fs') |
  <fs, bs>8->( fs') <a, cs>( a'->) <a, ds>( a') |
  <es, cs'>8->( es') <fs, cs'>( fs'->) <fs, cs'>( fs') |
  
  \barNumberCheck 89
  <fs, a>8->( fs') <es, a>( es'->) <e, a>( e') |
  <ds, a'>8->( ds') <c, fs>( c'->) <b, fs'>( b') |
  <gs b>8->( gs') <fss, b>( fss'->) <fs, b>( fs') |
  <es, b'>8->( es') <d, gs>( d'->) <cs, gs'>( cs') |
  <as cs>8->( as') <b, d>( b'->) <es,, b'>( es'->) |
  <as, cs>8->( as') <b, d>( b'->) <es,, b'>( es'->) |
  <bs ds>8->( bs') <bs, ds>( bs'->) <bs, ds>( bs') |
  <cs, e>8->( cs') <fs,, cs'>( fs'->) <fs, cs'>( fs') |
  
  \barNumberCheck 97
  <d, fs>8->( d') <d, fs>( d'->) <as, d>( as') |
  <fs b>8->( fs') <es, b'>( es'->) <e, b'>( e') |
  <d, b'>8->( d') <cs, g'>( cs'->) <b, e>( b') |
  <a, e'>8( a') <g, as>( g') <fs, as>( fs') |
  <g b>8( g') <g, b>( g') <ef, g>( ef') |
  <b d>( b') <es,, b'>( es') <b, es>( b') |
  <d, fs>8( d') <d, g>( d') <d, gs>( d') |
  <d, fs>8( d') <d, g!>( d') <d, gs>( d') |
  
  \barNumberCheck 105
  <d, fs>8( d') <fs, b>( fs') <b, d>( b') |
  \ottava 1 <d, fs>8( d') <fs, b>( fs') <b, d>( b') |
  <d, d'>4 \ottava 0 r8 r4 r8 |
  <as,, e' fs cs'>4 r8 r4 r8 |
  d8--( <b b'>-- d-- <as as'> d <a a'> |
  b8 <g g'> b <fs fs'> b <e, e'> |
  \clef bass g8 <d d'> g <cs, cs'> g' <b, b'> |
  g'8 <d d'> g <cs, cs'> g' <b, b'>) |
  
  \barNumberCheck 113
  \clef treble d'8( <b b'> d <as as'> d <a a'> |
  b8 <g g'> b <fs fs'> b <e, e'> |
  \clef bass g8 <d d'> g <cs, cs'> g' <b, b'> |
  g'8 <d d'> g <cs, cs'> g' <b, b'> |
  fs'8 <d d'> fs <cs cs'> fs <b, b'> |
  fs'8 <d d'> fs <cs cs'> fs <b, b'> |
  d8 <g, g'> d' <g, g'> d' <g, g'> |
  b8 <fs fs'> b <fs fs'> b <fs fs'> |
  
  \barNumberCheck 121
  b4) r8 r4 r8 |
  \clef treble <b'' fs' b>4 r8 r4 r8 |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  <b, b'>8( fs' <as, as'>  fs' <fs, fs'> d' |
  <d d'>8 b' <cs, cs'>  b' <g g'> cs |
  <fs, fs'>8 b <e, e'>  b' <d, d'> g |
  <cs, cs'>8 g' <b, b'>  e <as, as'> e') |
  <b b'>8( fs' <as, as'>  fs' <fs, fs'> d' |
  <d d'>8 a' <cs, cs'>  a' <d, d'> a' |
  <d, d'>8 gs <cs, cs'>  fs <bs, bs'> fs' |
  <cs cs'>8 b' <cs, cs'>  a' <fs, a'> cs') |
  
  \barNumberCheck 9
  <d d'>8( a' <cs, cs'>  a' <c, c'> a' |
  <b, b'>8 a' <d,! d'!>  a' <ds, ds'> a') |
  <e e'>8( b' <ds, ds'>  b' <d, d'> b' |
  <cs, cs'>8 b' <e, e'>  b' <es, es'> b') |
  <fs fs'>8( cs' <fs, g'>  d' <fs, gs'> d') | 
  <fs, fs'>8( cs' <fs, g'>  d' <fs, gs'> d') |
  <fs, gs'>8( ds' <fs, gs'>  ds' <fs, gs'> ds' |
  <fs, a'>[ e'] <fs, as'>[  e'] <fs, as'> e') |
  
  \barNumberCheck 17
  \tupletOff
  \scaleDurations 3/2 {
    <b, fs' b>8-. <fs fs'>-. <as fs' as>-. <fs fs'>-. |
    <d' b' d>8-. <g, g'>-. <cs cs'>4-> |
    <fs b fs'>8-. <e, e'> <e' b' e>-. <d, d'>-. |
    <cs' g' cs>8-. <cs, cs'>~ <fs cs'>4-> |
    <e' b' e>8-. <b b'>-. <ef b' ef>-. <b b'>-. |
    <g' d' g>8-. <d g d'>-. <g d' g>-. <g, g'>-. |
    <b fs' b>8-. <fs fs'>-. <b fs' b>-. <es, es'>-. |
    <b' fs' b>8-. <fs fs'>-. <b fs' b>-. <es, es'>-. |
    
    \barNumberCheck 25
    <b' fs' b>8-. <fs fs'>-. <d' b' d>-. <fs d' fs>-. |
    \clef treble <b fs' b>8-. <fs fs'>-. <d' b' d>-. <fs d' fs>-. |
  }
  <b fs' b>4 r8 r4 r8 |
  \clef bass <fs,,, fs'>4 r8 r4 r8 |
  \scaleDurations 3/2 {
    <b, b'>8 fs'' fs' fs, |
    <b,, b'>8 g'' g' g, |
    <b,, b'>8 e' e' e, |
    <b, b'>8 es' es' es, |
    
    \barNumberCheck 33
    <b, b'>8 fs'' fs' fs, |
    <b,, b'>8 g'' g' g, |
    <b,, b'>8 e' e' e, |
    <b, b'>8 es' es' es, |
    <b, b'>8 fs'' fs'4 |
  }
  <d, d'>8 fs <cs cs'>  fs <b, b'> fs' |
  <bf, bf'>8 fs' <bf, bf'>  fs' <bf, bf'> fs' |
  <a, a'>8 d <a a'>  d <a a'> d |
  
  \barNumberCheck 41
  <d d'>8 a' <a, a'>  d <d d'> a' |
  <fs fs'> cs' <cs, cs'>  a' <a, a'> fs' |
  <d d'>8 a' <a, a'>  d <d d'> a' |
  <fs fs'>8 d' <d, d'>  b' <b, b'> fs' |
  <e e'>8 b' <b, b'>  e <e e'> b' |
  <b b'>8 e <e, e'>  b' <b, b'> e |
  <e, e'> b' <b b'>  e <e e'> b' |
  <e, e'> a <a, a'>  e' <e e'> a |
  
  \barNumberCheck 49
  <e e'>8 b' <b, b'>  e <e e'> b' |
  <g g'>8 ef' <ef, ef'>  b' <b, b'> g' |
  <g g'>8 d' <d, d'>  g <g g'> d' |
  <b b'>8 fs' <fs, fs'>  b <b b'> fs' |
  <fs fs'>8 b <b, b'>  fs' <fs, fs'> b |
  <b, b'>8 fs' <fs fs'>  b <b b'> fs' |
  <e, e'>8 b' <b b'>  e <e e'> b' |
  <a, a'>8 e' <e, e'>  a <a a'> e' |
  
  \barNumberCheck 57
  <fs, fs'>8 cs' <cs, cs'>  fs <fs fs'> cs' |
  <fs, fs'>8 cs' <cs, cs'>  fs <fs fs'> cs' |
  <fs, fs'>8 c' <c, c'>  fs <fs fs'> c' |
  <fs, fs'>8 b <b, b'>  fs' <fs fs'> b |
  <e, e'>8 b' <b, b'>  e <e e'> b' |
  <e, e'>8 b' <b, b'>  e <e e'> b' |
  <e, e'> a <a, a'>  e' <e e'> a |
  <e e'> a <a, a'>  e' <a a'> e' |
  
  \barNumberCheck 65
  <d, d'>8 a' <a, a'>  d <d d'> a' |
  <fs fs'> cs' <cs, cs'>  a' <a, a'> fs' |
  <d d'>8 a' <a, a'>  d <d d'> a' |
  <fs fs'> d' <d, d'>  b' <b, b'> fs' |
  <e e'>8 b' <b, b'>  e <e e'> b' |
  <b b'>8 e <e, e'>  b' <g g'> b |
  <g g'>8 cs <cs, cs'>  g' <g g'> cs |
  <g g'>8 cs <cs, cs'>  g' <g g'> cs |
  
  \barNumberCheck 73
  <fs, fs'> d' <fs, g'>  d' <cs, cs'> g' |
  <fs fs'>( d' <fs, g'>  d' <cs, cs'> g') |
  <fs b'>( d' <fs, b'>  d' <cs, es'> g') |
  <fs b'>( d' <fs, b'>  d' <cs, es'> g') |
  <cs, e'!>8( g' <cs, e'>  g' <cs, e'> g') |
  <b' e>8->( cs,) <b' e>( cs,->) <b' e>( cs,) |
  e8( fs, e'  fs, e' fs,) |
  <cs'' e>8->( fs,) <cs' e>( fs,->) <cs' e>( fs,) |
  
  \barNumberCheck 81
  <fs b>8->( b,) <fs' as>( as,->) <d fs>( fs,) |
  <b' d>8->( d,) <b' cs>( cs,->) <b' g'>( g) |
  <b fs'>8->( fs) <b e>( e,->) <g d'>( d) |
  <g cs>8->( cs,) <e b'>( b->) <e as>( as,) |
  <fs' b>8->( b,) <fs' bf>( bf,->) <d fs>( fs,) |
  <a' d>8->( d,) <a' cs>( cs,->) <a' d>( d,) |
  <a' fs'>8->( d,) <a' fs'>( cs,->) <a' fs'>( bs,) |
  <b' gs'>8->( cs,) <a' fs'>( cs,->) <cs a'>( fs,) |
  
  \barNumberCheck 89
  <a' d>8->( d,) <a' cs>( cs,->) <a' c>( c,) |
  <a' b>8->( b,) <a' d>( d,->) <a' ds>( ds,) |
  <b' e>8->( e,) <b' ds>( ds,->) <b' d>( d,) |
  <b' cs>8->( cs,) <b' e>( e,->) <b' es>( es,) |
  <cs' fs>->( fs,) <d' g>( fs,->) <d' gs>( fs,) |
  <cs' fs>->( fs,) <d' g>( fs,->) <d' gs>( fs,) |
  <ds' gs>8->( fs,) <ds' gs>( fs,->) <ds' gs>( fs,) |
  <e' a>8->( fs,) <e' as>( fs,->) <e' as>( fs,) |
  
  \barNumberCheck 97
  \scaleDurations 3/2 {
    <b, fs' b>8-. <fs fs'>-. <as fs' as>-. <fs fs'>-. |
    <d' b' d>8-. <g, g'>-. <cs cs'>4-> |
    <fs b fs'>8-> <e, e'>-> <e' b' e>-> <d, d'>-> |
    <cs' g' cs>8-. <cs, cs'>-.~ <fs cs'>4-> |
    <e' b' e>8-. <b b'>-. <ef b' ef>-. <b b'>-. |
    <g' d' g>8-. <d g d'>-. <g d' g>-. <g, g'>-. |
    <b fs' b>8-. <fs fs'>-. <b fs' b>-. <es, es'>-. |
    <b' fs' b>8-. <fs fs'>-. <b fs' b>-. <es, es'>-. |
    
    \barNumberCheck 105
    <b' fs' b>8-. <fs fs'>-. <d' b' d>-. <fs d' fs>-. |
    \clef treble <b fs' b>8-. <fs fs'>-. <d' b' d> <fs d' fs> |  
  }
  <b fs' b>4 r8 r4 r8 |
  \clef bass <fs,,, fs'>4 r8 r4 r8 |
  \scaleDurations 3/2 {
    <b, b'>8 fs'' fs' fs, |
    <b,, b'>8 g'' g' g, |
    <b,, b'>8 e' e' e, |
    <b, b'>8 es' es' es, |
    
    \barNumberCheck 113
    <b, b'>8 fs'' fs' fs, |
    <b,, b'>8 g'' g' g, |
    <b,, b'>8 e' e' e, |
    <b, b'>8 es' es' es, |
    <b, b'>8 fs'' fs' fs, |
  }
  <d d'>8 fs <cs cs'> fs <b, b'> fs' |
  <g, g'> d' <g, g'> d' <g, g'> d' |
  <fs, fs'> b <fs fs'> b <fs fs'> b |
  
  \barNumberCheck 121
  <b, b'>4 r8 r4 r8 |
  <b'' fs' d'>4 r8 r4 r8 |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2.\< |
  s2.\> |
  s4 s8\! s4. |
  s2. * 4 |
  
  \barNumberCheck 9
  s2.\p\< |
  s2. <>\! |
  s2.\< |
  s2. <>\! |
  s2.\< <>\! |
  s4\< s8\cresc s4. |
  s4. s\cresc |
  s2.\cresc |
  
  \barNumberCheck 17
  s2.-\tweak Y-offset -3 \f |
  s2. * 6 |
  s4 s8\cresc s4. |
  
  \barNumberCheck 25
  s2. * 4 |
  s2.\f |
  s4. s\dim |
  s2. * 2 |
  
  \barNumberCheck 33
  s2.\dim |
  s2. * 5 |
  s2.\fp |
  s2.\pp |
  
  \barNumberCheck 41
  s4.\p s\< |
  s8\> s\! s s4. |
  s4. s\< |
  s4.-\tweak Y-offset -1 \> s\! |
  s2.\cresc |
  s4. s\dim |
  s2. * 2 |
  
  \barNumberCheck 49
  s4.\p s\< |
  s8\> s\! s s4. |
  s4.\cresc s\< |
  s4.\> s\! |
  s4 s8\cresc s4. |
  s4. s\dim |
  s2. * 2 |
  
  \barNumberCheck 57
  s2.\pp |
  s2. * 7 |
  
  \barNumberCheck 65
  s4. s\< |
  s4.\> s\! |
  s4. s\< |
  s4.\> s\! |
  s2. * 4 |
  
  \barNumberCheck 73
  s4.\> s\! |
  \override Hairpin.Y-offset = -1
  s2.\> |
  s2.\> |
  s2.\> |
  \revert Hairpin.Y-offset
  s2.\f |
  s2.-\tweak Y-offset 1 \p |
  s2.\f |
  s4.\p s\dim |
  
  \barNumberCheck 81
  s2.\pp |
  s2.\< |
  s2.\> <>\! |
  s2. * 5 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 6 |
  s2.\ff |
  s2. |
  
  \barNumberCheck 105
  s2. * 4 |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 113
  s2.\dim |
  s2. |
  s2.\p |
  s2.\dim |
  s2.-\tweak X-offset 0 \pp |
  s4. s\< |
  s4.\sf s\p |
  s2.-\tweak X-offset 0 \pp |
  
  \barNumberCheck 121
  s2.\sf |
  s2.-\tweak Y-offset 0.5 \sf |
}

% MIDI only 
pedal = {
  s4\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 9
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 17
  s2.\su |
  s2. * 2 |
  s4. s\sd |
  s2.\su |
  s2. * 3 |
  
  \barNumberCheck 25
  s2.\sd |
  s2. |
  s4 s2\su |
  s2. * 5 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s4.\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 49
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 57
  s2.\su |
  s4.\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s2.\su |
  s4.\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 65
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  s4.\su\sd s\su\sd |
  
  \barNumberCheck 73
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 81
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 89
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 97
  s2.\su |
  s2. * 2 |
  s4. s\sd |
  s2.\su |
  s2. * 3 |
  
  \barNumberCheck 105
  s2.\sd |
  s2. |
  s4 s2\su |
  s2. * 5 |
  
  \barNumberCheck 113
  s2. * 6 |
  s2.\sd |
  s2.\su\sd |
  
  \barNumberCheck 121
  s2.\su |
  s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Tempestoso" #1 #0 80-92
  \tempo 2 = 92
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 7 |
  s4. \tempo 2 = 86 s |
  
  \barNumberCheck 41
  \tempo 2 = 80
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  \tempo 2 = 92
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |

  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 4 |
  \tempo 2 = 100
  s2. * 4 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 2 |
}

forceBreaks = {
  s2. * 5 \break
  s2. * 5 \break
  s2. * 5 \break
  s2. * 6 \break
  s2. * 7 \pageBreak
  
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 7 \pageBreak
  
  s2. * 7 \break
  s2. * 7 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  s2. * 5 \break
  s2. * 6 \break
  s2. * 7 \break
  s2. * 6 \break
}

etudeThreeNotes =
\score {
  \header {
    title = \markup { Nº 3 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 3"
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

etudeThreeMidi =
\book {
  \bookOutputName "etude-op8-no03"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {
      \context {
        \Staff
        \remove "Dynamic_performer"
      }
      \context {
        \Voice
        \consists "Dynamic_performer"
      }        
    }
  }
}
