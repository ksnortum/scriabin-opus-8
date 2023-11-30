%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 3/4
  \key a \major
  \set Staff.extraNatural = ##f
  \eighthsInTwos.34
}

rightHand = \relative {
  \global
  \tupletOff
  r4 \tuplet 3/2 { 
    <b' gs'>8( <cs a'> <fs d'>  <e cs'> <ds bs'> <e cs'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  <cs a'>4) \tuplet 3/2 { 
    <gs es'>8( <a fs'> <d b'>  <cs a'> <bs gs'> <cs a'> |
    <e! cs'>8 <d b'> <cs a'>  <bs gs'> <cs a'> < a fs'> 
      <gs e'>-- <fs d'>-- <e cs'>-- |
  }
  <d b'>4) \tuplet 3/2 { <gs es'>8( <a fs'> <e' cs'> <d b'> <e cs'> <fs d'> } |
  <cs' a'>4) \tuplet 3/2 { 
    <gs, es'>8( <a fs'> <e' cs'>  <d b'> <e cs'> <fs d'> |
  } 
  <b gs'>4) \tuplet 3/2 { 
    <a fs'>8( <b gs'> <a fs'>  <gs e'> <d b'> <e cs'> |
    <fs d'>8 <e cs'> <d b'>  <cs a'> <b gs'> <a fs'>  <gs e'>) r r |
  }
  
  \barNumberCheck 9
  r4 \tuplet 3/2 { 
    <cs as'>8( <d b'> <g e'>  <fs d'> <es cs'> <fs d'> |
    <as fs'> <e! cs'> <cs as'>  <gs e'> <as fs'> <cs as'>
      <g' e'> <fs d'> <e cs'> |
  }
  <d b'>4) \tuplet 3/2 { 
    <as fs'>8( <b g'> <e cs'> <d b'> <cs as'> <d b'> |
    <fs d'> <e cs'> <d b'>  <cs as'> <d b'> <b g'>
      <a fs'>-- <g e'>-- <fs d'>-- |
  }
  <d b'>4) \tuplet 3/2 { 
    <gs! es'>8( <a fs'> <e' cs'>  <d b'> <e cs'> <fs d'> |
  }
  <b gs'>4) \tuplet 3/2 { 
    <fss, ds'>8( <gs e'> <e' cs'>  <d b'> <e cs'> <fs! d'> | 
  }
  <a fs'>4) \tuplet 3/2 { 
    <gs e'>8( <a fs'> <gs e'>  <fs d'> <d b'> <e cs'> |
    <cs a'>8 <a fs'> <gs e'>  <fs d'> <e cs'> <d b'>
  }
  <cs a'>4) |
  
  \barNumberCheck 17
  r4 \tuplet 3/2 { 
    <e' cs'>8( <fs d'> <e cs'>  <a, fs'> <b gs'> <cs a'> |
    <b gs'>8 <a fs'> <es cs'>  <fs d'> <es cs'> <fs d'>
      <a fs'> <cs a'> <a fs'> |
    <gs es'>8 <bs gs'> <cs as'>  <ds bs'> <es cs'> <gs es'>
      <fs ds'> <gs es'> <fs ds'> |
    <es cs'>8 <fs ds'> <es cs'>  <dss bs'> <es cs'> <b gs'>
      <d b'> <cs a'> <b gs'> |
  }
  <a fs'>4) \tuplet 3/2 { 
    <e' cs'>8( <fs d'> <e cs'>  <a, fs'> <b gs'> <cs a'> |
    <b gs'>8 <a fs'> <es cs'>  <fs d'> <es cs'> <fs d'>
      <a fs'> <cs a'> <a fs'> |
    <gs e'!>8 <bs gs'> <cs as'>  <ds bs'> <e cs'> <gs e'>
      <fs ds'> <gs e'> <fs ds'> |
    <e cs'>8 <fs ds'> <e cs'>  <ds bs'> <e cs'> <gs e'>
  }
  <e cs'>4) |
  
  \barNumberCheck 25
  r4 \tuplet 3/2 { 
    <ds bs'>8( <e cs'> <gs e'>  <fs ds'> <e cs'> <b! gs'> |
    <ds b'>8 <cs as'> <gs e'>  <b gs'> <e, cs'> <fs ds'>
      <gs e'> <fs ds'> <e cs'>) |
  }
  r4 \tuplet 3/2 { 
    <ds' bs'>8( <e cs'> <g e'>  <fs ds'> <e cs'> <b! g'> |
    <d! b'>8 <cs as'> <g e'>  <b g'> <e, cs'> <fs d'>  <g e'> <fs d'> <e cs'> |
  }
  <d b'>4) \tuplet 3/2 { 
    <cs' as'>8( <d b'> <fs d'>  <e cs'> <d b'> <a! fs'> |
  }
  <fs d'>4) \tuplet 3/2 { 
    <cs as'>8( <d b'> <fs d'>  <e cs'> <d b'> <a! fs'> |
    <cs a'>8 <b gs'> <fs d'>  <a fs'> <d b'> <e cs'>  <fs d'> <a fs'> <d b'> |
    <a' fs'>8-. <fs d'>-. <e cs'>-.  <d b'> <b gs'> <a fs'>
      <gs e'> <e cs'> <d b'> |
  } 
  
  \barNumberCheck 33
  <cs a'>4) \tuplet 3/2 { 
    <bs' gs'>8( <cs a'> <fs d'>  <e cs'> <ds bs'> <e cs'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  <cs a'>4) \tuplet 3/2 { 
    <gs es'>8( <a fs'> <d b'>  <cs a'> <bs gs'> <cs a'> |
    <e! cs'>8 <d b'> <cs a'>  <bs gs'> <cs a'> <a fs'>
      <gs e'> <fs d'> <e cs'> | 
  }
  <d b'>4) \tuplet 3/2 { <gs es'>8( <a fs'> <e' cs'> <d b'> <e cs'> <fs d'> | }
  <cs' a'>4)  \tuplet 3/2 { 
    <gs, es'>8( <a fs'> <e' cs'>  <d b'> <e cs'> <fs d'> | 
  }
  <b gs'>4) \tuplet 3/2 { 
    <gs, es'>8( <a fs'> <e' cs'>  <d b'> <e cs'> <fs d'> | 
  }
  <a fs'>4) \tuplet 3/2 { 
    <gs, es'>8( <a fs'> <e' cs'>  <d b'> <e cs'> <fs d'>) |
  }
  
  \barNumberCheck 41
  r4 \tuplet 3/2 { 
    <fs d'>8( <gs e'> <fs d'>  <e cs'> <bs gs'>  <cs a'> |
    <cs as'>8 <fs, d'> <as fs'>  <e cs'> <ds bs'> <e cs'>
      <g e'> <fs d'!> <e cs'> |
  }
  <d b'>4) \tuplet 3/2 { 
    <e' cs'>8( <fs d'> <e cs'>  <d b'> <cs as'> <d b'> |
    <ds bs'>8 <gs, e'> <bs gs'>  <fs ds'> <es css'> <fs ds'>
      <a fs'> <gs e'!> <fs ds'> |
  }
  <e cs'>4) \tuplet 3/2 { 
    % Beat 3, second chord, lower note: SrcA has a D-sharp, but SrcB has no
    % accidental, making it a D-natural. Follow SrcA in this case, because
    % otherwise the interval between the chord notes would be an augmented
    % sixth, which I don't think occurs elsewhere in the piece.
    <fs' ds'>8( <gs e'> <fs ds'>  <e cs'> <ds bs'> <e cs'> |
    <gs, e'>8 <ds' bs'> <e cs'>  <fs ds'> <gs e'> <fs ds'>
      <e cs'> <ds bs'> <e cs'> |
    <gs e'>8) <cs, as'>( <d b'>  <fs d'!>) <as, fss'>( <b gs'>
      <d b'>) <fss, ds'>( < gs e'> |
    <b gs'>8) <cs, as'>( <d b'>  <gs e'>) <as, fss'>( <b gs'>
    % Beat 3, first chord, lower note: SrcA has an F-sharp, and SrcB has no
    % accidental, making it an F-double-sharp. Follow SrcA with the F-sharp,
    % which forms a minor sixth between chord notes, instead of a diminished
    % sixth if the note were an F-double-sharp.
      <fs' d'> <d b'> <e cs'> |
  }
  
  \barNumberCheck 49
  <cs a'>4) \tuplet 3/2 { 
    <a' fs'>8( <bf g'> <fs' d'>  <e cs'> <ds bs'> <e cs'> |
    <fs d'>8 <c a'> <a fs'>  <e c'> <fs d'> <a fs'>  <e' c'> <d b'> <c a'> |
    <b gs'>8 <c a'> <b gs'>  <as fss'> <b gs'> <e cs'!> 
      <d b'> <cs! as'> <d b'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  <cs a'>4) \tuplet 3/2 { 
    <a fs'>8( <bf g'> <fs' d'>  <e cs'> <ds bs'> <e cs'> |
    <fs d'>8 <c a'> <a fs'>  <e c'> <fs d'> <a fs'>  <e' c'> <d b'> <c a'> |
    <b gs'>8 <c a'> <b gs'>  <as fss'> <b gs'> <e cs'!> 
      <d b'> <cs! as'> <d b'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  
  \barNumberCheck 57
  <cs a'>4) \tuplet 3/2 { 
    <bs gs'>8( <cs a'> <fs d'>  <e cs'> <ds bs'> <e cs'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  <cs a'>4) \tuplet 3/2 { 
    <bs gs'>8( <cs a'> <fs d'>  <e cs'> <ds bs'> <e cs'> |
    <gs e'>8 <d b'> <b gs'>  <fs d'> <gs e'> <b gs'>  <fs' d'> <e cs'> <d b'> |
  }
  <cs a'>4) \tuplet 3/2 { 
    <bs gs'>8( <cs a'> <fs d'>  <e cs'> <d b'!> <cs a'>) | 
  } |
  r4 \tuplet 3/2 { <bs gs'>8( <cs a'> <a fs'>  <gs e'> <fs d'> <e cs'>) | }
  r4 \tuplet 3/2 { 
    <ds bs'>8( <e cs'> <d b'>  <cs a'> <gs e'> <fs d'> | 
    \clef bass <e cs'>8 <d b'> <cs a'>  <e cs'> <d b'> <cs a'>
      <e cs'> <d b'> <cs a'>) |
  }
  r4 \clef treble <a'' cs a'> r |
  \bar "|."
}

%%%
%%% Note: I made an editorial decision to take out many of the clef changes
%%% in the left hand.  I think modern pianists would rather read high ledger
%%% lines than clef changes.  Notes up to a c'' were kept in the bass clef
%%% with one exception (because of space issues).
%%%

leftHandUpper = \relative {  
  s2. * 6 |
  s4 \clef treble \voiceFour fs' gs |
  b,4( e) s4 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2 \voiceThree d4 |
  cs4 s cs |
  s4 \tuplet 3/2 { gs' cs8 } bs4 |
  s2. |
  s2 d,4 |
  cs4 s2 |
  s4 \tuplet 3/2 { gs'4 cs8 } bs4 |
}

leftHandLower = \relative {
  a,4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <e,, e'>4 b''8( e, <d' gs>4) |
  <fs,, fs'>4 \tuplet 3/2 { cs''8( fs, cs } <a' fs'>4) |
  <cs,, cs'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <d,, d'>4 \tuplet 3/2 { fs''8( b, a } d,4) |
  <b, b'>4 \tuplet 3/2 { d''8( b a } fs'4) |
  <e,, e'>4 \clef treble \voiceOne \tuplet 3/2 { fs''8( d b } e'4) |
  d2 \clef bass \oneVoice \tuplet 3/2 { e,,8( d cs } |
  
  \barNumberCheck 9
  b4) \tuplet 3/2 { fs''8( b, fs } <d' b'>4) |
  fs,,4 cs''8( fs, <e' as>4) |
  <g,, g'>4 \tuplet 3/2 { d''8( g, d } <b' g'>4) |
  <d,, d'>4 \tuplet 3/2 { fs''8( b, fs } <d' b'>4) |
  <e,, e'>4 \tuplet 3/2 { b'''8( d, b } e,4) |
  e,4 \clef treble \tuplet 3/2 { b'''8( d, b } e,4) |
  \clef bass <a,, a'> \clef treble \tuplet 3/2 { b'''8 d, e, } gs' e |
  <a, a'>4 \clef bass e \tuplet 3/2 { a,8 a gs } |
  
  \barNumberCheck 17
  fs4 \tuplet 3/2 { a''8 cs, fs,  \voiceFour d' fs, b, } |
  \tuplet 3/2 { cs'8 fs,, cs' } a'4 fs |
  \oneVoice <gs, gs'> \voiceFour \tuplet 3/2 { cs'8 gs es' } ds gs, |
  \oneVoice <es' cs'>8 cs, gs' es' cs4 |
  fs,,4 \tuplet 3/2 { a''8 cs, fs,  \voiceFour d' fs, b, } |
  \tuplet 3/2 { cs'8 fs,, cs' } \oneVoice a'4 <fs cs'> |
  <gs, gs'>4 \tuplet 3/2 { \voiceFour cs'8 gs e' } ds gs, |
  \oneVoice <e' cs'>8 cs, gs' gs'~ <cs, gs'>4 |
  
  \barNumberCheck 25
  cs,4 \tuplet 3/2 { gs''8( cs, gs } b'!4) |
  fs,8 e' cs'4 fs,, |
  cs4 \tuplet 3/2 { b''8( e, g, } b'4) |
  fs,8 e' cs'4 fs,,~ |
  <b, fs'>4 \tuplet 3/2 { fs''8( b, fs } a'4) |
  b,,,4 \tuplet 3/2 { fs''8( b, fs }  a'4) |
  e,8 d' b'4 r |
  <e, ,e'>4 <a' d fs> <gs d' e> |
  
  \barNumberCheck 33
  <a,, a'>4 \tuplet 3/2 { e'''8( a, e } <cs' a'>4) |
  <e,,  e'>4 b''8( e, <d' gs>4) |
  <fs,, fs'>4 \tuplet 3/2 { cs''8( fs, cs } <a' fs'>4) |
  <cs,, cs'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <d,, d'>4 \tuplet 3/2 { fs''8( b, a } d,4) |
  <b, b'>4 \tuplet 3/2 { d''8( b a } fs'4) |
  <d,, d'>4 \tuplet 3/2 { fs''8( b, a } d,4) |
  <b, b'>4 \tuplet 3/2 { d''8( b a } fs'4) |
  
  \barNumberCheck 41
  <e,, e'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <e,, e'>8 fs' <as fs'>4 e~ |
  <e, e'>4 \tuplet 3/2 { fs''8( b, fs } <d' b'>4) |
  <e,, e'>8 gs' <bs gs'>4 e,~ |
  <e, e'>4 \tuplet 3/2 { gs''8( cs, gs } <cs gs' cs>4) |
  <e,, e'>4 \tuplet 3/2 { gs''8( cs, gs } <cs gs' cs>4) |
  \clef bass <e,, e'>4 \clef treble <d''! gs d'!> r |
  % dotted half note, SrcB
  \clef bass e,2. |
  
  \barNumberCheck 49
  <a,, a'>4 \tuplet 3/2 { cs''8( g a, } <bf' g'>4) |
  <a,, a'>4 a''8( d, <c' fs>4) |
  <a,, a'>4 \tuplet 3/2 { d''8( b f } <b gs'>4) |
  <a,, a'>4 b''8( e, <d' gs>4) |
  <a,, a'>4 \tuplet 3/2 { cs''8( g a, } <bf' g'>4) |
  <a,, a'>4 a''8( d, <c' fs>4) |
  <a,, a'>4 \tuplet 3/2 { d''8( b f } <b gs'>4) |
  <a,, a'>4 b''8( e, <d' gs>4) |
  
  \barNumberCheck 57
  <a, e'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <a, e'>4 b'8( e, <d' gs>4) |
  <a, e'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <a, e'>4 b'8( e, <d' gs>4) |
  <a, e'>4 \tuplet 3/2 { e''8( a, e } <cs' a'>4) |
  <e,, e'>4 \tuplet 3/2 { e''8( a, e } cs'4) |
  <a,, a'>4 a''8 a, e' e, |
  <a, a'>8 e' <a, a'> e' <a, a'> e' |
  \ottava -1 <a,, a'>4 \ottava 0 <e''' a e'>4 r |
}

leftHand = {
  \global
  \clef bass
  \omit Staff.TupletBracket
  \omit Staff.TupletNumber
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s4\p s2\< |
  s2.\> <>\! |
  s4 s2\< |
  s2.-\alterBroken Y-offset #'(0 -1) \> |
  \override Hairpin.Y-offset = -1
  s8 s\! s2\< <>\! |
  s4 s2\< <>\! |
  s4 s2\> |
  s2 s4\! |
  
  \barNumberCheck 9
  \revert Hairpin.Y-offset
  s4 s2\< |
  s2-\tweak Y-offset -0.5 \> s4\! |
  s4 s2\< |
  s2\> s4\! |
  s4 s2\< <>\! |
  s4 s2\< <>\! |
  s4 s2\> |
  s2 s4\! |
  
  \barNumberCheck 17
  s2.\p |
  s4. s-\tweak Y-offset 1 \cresc |
  s2. |
  s4 s2-\tweak Y-offset -5 \dim |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 6 |
  \override Hairpin.Y-offset = -1
  s4 s2\< |
  s2.\> |
  
  \barNumberCheck 33
  \revert Hairpin.Y-offset
  s4-\tweak Y-offset -1.5 \p s2\< |
  s2\> s4\! |
  s4 s2\< |
  s2.\> <>\! |
  s4 s2\< |
  s4.\cresc s\< <>\!
  s4 s2\< <>\! |
  s4 s8.\< s16\! s8.\> s16\! |
  
  \barNumberCheck 41
  s2.\f |
  s2. * 5 |
  s2.\dim |
  s2. |
  
  \barNumberCheck 49
  s2.\p |
  s2. * 3 |
  s2.\pp |
  s2. * 3 |
  
  \barNumberCheck 57
  s2. * 4 |
  s2.-\tweak Y-offset 1 \cresc |
  s2. |
  s4 s2\dim |
  s4 s2\pp |
  s2. |
}

% MIDI only 
pedal = {
  s2\sd s4\su |
  s2.\sd |
  s2\su\sd s4\su |
  s2.\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd
  s2\su\sd s4\su |
  
  \barNumberCheck 9
  s2\sd s4\su |
  s2.\sd |
  s2\su\sd s4\su |
  s2.\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd
  s2\su\sd s4\su |
  
  \barNumberCheck 17
  s2\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 25
  s2\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su |
  s4\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 33
  s2\su\sd s4\su |
  s2.\sd |
  s2\su\sd s4\su |
  s4\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  s2\su\sd s4\su\sd |
  
  \barNumberCheck 41
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 49
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  
  \barNumberCheck 57
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Con grazia" #1 #1 44
  \tempo 2. = 44
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 7 |
  \tempo 2. = 42 s4 \tempo 2. = 40 s \tempo 2. =38 s |
  
  \barNumberCheck 33
  \tempo 2. = 44
  s2. * 8 |
  
  \barNumberCheck 41
  \tempo 2. = 48
  s2. * 8 |
  
  \barNumberCheck 49
  \tempo 2. = 50
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  s4 \tempo 2. = 20 s2 |
}

forceBreaks = {
  s2. * 4 \break
  s2. * 5 \break
  s2. * 4 \break
  s2. * 5 \break
  s2. * 4 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 5 \break
  s2. * 5 \pageBreak
  
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
}

etudeSixNotes =
\score {
  \header {
    title = \markup { Nº 6 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 6"
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

etudeSixMidi =
\book {
  \bookOutputName "etude-op8-no06"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
