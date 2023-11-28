%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 1) (0 . 3) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 2) (0 . 4) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 4) (0 . 0)) \etc
slurShapeD = \shape #'((0 . -1.5) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeE = \shape #'(
                        ((2 . 0) (2 . 0.75) (1 . 0.75) (1 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeF = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 4/4
  \key gs \minor
  \set Staff.extraNatural = ##f
  \eighthsInTwos.44
}

rightHandUpper = \relative {
  \tupletOff
  <gs gs'>4--~ q16 q-- q-- q-- q4-- q-- |
  q4-- <gs' ds' gs>( <b ds b'> <ds gs ds'>) |
  <cs, cs'>4--~ q16 q-- q-- q-- q4-- q-- |
  q4-- <cs' gs' cs>( <e gs e'> <gs cs gs'>) |
  \voiceOne <ds, fss ds'>4( <e fss e'>8_. <ds fss ds'>_. <fss ds' fss> 
    <gs ds' gs> \tuplet 3/2 { <as as'>4 <gs gs'>8) } |
  <e fss e'>8-.( <ds fss ds'>-. <css fss css'>-. <ds fss ds'>-. <fss e' fss>
    <gs e' gs>  \tuplet 3/2 { <as as'> <gs gs'>) <ds' ds'>-\slurShapeF ( } |
  <fs fs'>8 <e e'> \tuplet 3/2 { <ds ds'> <cs cs'>8. <b b'>16 } <b b'>8 
    <as as'>  \tuplet 3/2 { <as as'>4 <gs gs'>8 } |
  \tuplet 3/2 { <fs fs'>8 <e e'> <ds ds'>  q <cs cs'> <b b'> } <b e gs b>4
    <as ds fss as>4) |
  
  \barNumberCheck 9
  \oneVoice <gs gs'>4--~ q16 q-- q-- q-- q4-- q-- |
  q4-- <gs' e' gs>8( <b e b'> <cs gs' cs> <ds gs ds'> <e gs e'> <gs gs'>) |
  <cs,, cs'>4--~ q16 q-- q-- q-- q4-- q-- |
  q4-- <cs' a' cs>8( <e a e'> \ottava 1 <fs cs' fs>[ <gs cs gs'>] <a cs a'>
    <cs cs'>) \ottava 0 |
  \voiceOne <ds,, fss ds'>4( <e fss e'>8 <ds fss ds'> <fss ds' fss> <gs ds' gs>
    \tuplet 3/2 { <as as'>4 <gs gs'>8) } |
  \oneVoice <gs bs gs'>4( <a bs a'>8 <gs bs gs'> <bs gs' bs> <cs gs' cs>
    \tuplet 3/2 { <ds ds'> <cs cs'>) <gs gs'>( } |
  <gs' gs'>8 <fs fs'> \tuplet 3/2 { <e e'> <ds ds'>8. <cs cs'>16 } q8 <b b'>
    \tuplet 3/2 { <as as'>4 <gs gs'>8 } |
  \tuplet 3/2 { q8 <fs fs'> <e e'>  <ds ds'> <cs cs'> <ds ds'> } 
    <b ds b'>4) r |
    
  \barNumberCheck 17
  \clef bass \tuplet 3/2 { 
    <g g'>8-. <a a'>-. <b, b'>-.  <fs' fs'>-. <g g'>-. <b, b'>-.
      <e e'>-. <fs fs'>-. <b, b'>-.  <d d'>-. <e e'>-. <b b'>-. |
    <cs cs'>-. <d d'>-. <b b'>-. \voiceTwo \clef treble <d'' d'> <cs cs'>
      <b b'>  <as as'> <b b'> <e, e'>  <f f'> <e e'> <d d'> |
  }
  \oneVoice gs4~( gs16 gs gs gs gs4 a |
  <fs cs' fs>4 <e cs' e> <d fs d'>4.) r8 |
  \tuplet 3/2 { 
    \clef bass <d, d'>8-. <e e'>-. <fs, fs'>-.  <cs' cs'>-. <d d'>-.
      <fs, fs'>-.  <b b'>-. <cs cs'>-. <fs, fs'>-.  <a a'>-. <b b'>-. 
      <fs fs'>-. |
    <gs gs'>8-. <a a'>-. <fs fs'>-.  \clef treble <a'' a'> <gs gs'> <fs! fs'!>
      <es es'> <fs fs'> <b, b'> <c c'> <b b'> <a a'> |
  }
  \clef bass \voiceOne ds4~( ds16 ds ds ds ds4 e |
  \clef treble \oneVoice <cs gs' cs>4 <b gs' b> <a cs a'>4.) r8 |
  
  \barNumberCheck 25
  \voiceOne fss'4~( fss16 fss fss fss fss4 gs |
  \oneVoice <e bs' e>4 <ds bs' ds>) r8 <gs, gs'>4^(^\mf q8 |
  \voiceOne q4 <a a'>8 <gs gs'> <bs! bs'> <cs cs'> <gs' gs'> q |
  q8 <fss fss'> <fs fs'>2 <e e'>8 <ds ds'> |
  <fs fs'>8 <e e'> <fs fs'> <e e'> <e! e'!> <ds ds'> <e e'> <ds ds'> |
  \oneVoice <ds bs' ds>4 <e cs' e> <ds bs' ds>2) |
  \voiceOne <gs, gs'>4( <a a'>8 <gs gs'> <bs! bs'> <cs cs'> <gs' gs'> q |
  q8 <fss fss'> <as_~ as'^~>4 q8 <gs gs'> <fs fs'> <e e'>) |
  
  \barNumberCheck 33
  \oneVoice <ds gs ds'>4( <e e'>8 <ds ds'> <fss fss'> <gs gs'> <e' e'> q |
  <cs fss e'>4 <cs fss ds'>) r <fss,, fss'> |
  <gs gs'>4~ q16 q q q q4 q |
  q4 <gs' e' gs>8( <b e b'> <cs gs' cs> <ds gs ds'> <e gs e'> <gs gs'>) |
  <cs,, cs'>4~ q16 q q q q4 q |
  q4 <cs' a' cs>8( <e a e'> \ottava 1 <fs cs' fs> <gs cs gs'> <a! cs a'>
    <cs cs'>) |
  \ottava 0 \voiceOne <ds,, fss ds'>4( <e fss e'>8 <ds fss ds'> <fss ds' fss>
    <gs ds' gs> \tuplet 3/2 { <as as'>4 <gs gs'>8) } |
  \voiceTwo <gs bs gs'>4^( <a bs a'>8 <gs bs gs'> <bs gs' bs> <cs gs' cs>
    \tuplet 3/2 { <ds ds'>8 <cs cs'>) <gs gs'>^( } |
    
  \barNumberCheck 41
  <e' e'>8 <ds ds'> \tuplet 3/2 { <cs cs'> <b b'>8. <as as'>16 } q8 <gs gs'>
    \tuplet 3/2 { <fs fs'>4 <e e'>8 } |
  \oneVoice \tuplet 3/2 { q8 <ds ds'> <cs cs'>  <b b'> <as as'> <b b'> }
    <gs e' gs>2) |
  <as e' gs as>4 <bs fs' gs bs> <cs gs' cs> <css gs' b css> |
  <ds gs b ds>4 \tuplet 3/2 { 
    <b'' ds b'>8-> <as as'> <gs gs'>  <fs fs'> <e e'> <ds ds'>
      <cs! cs'!> <b b'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b ds b'>-> <as as'> <gs gs'>
      <fs fs'> <e e'> <ds ds'>  <cs cs'> <b b'> <gs gs'> |
  }
  <ds ds'>2 <ds gs as ds> |
  <ds gs b ds>4 <ds gs as ds> <ds gs b ds> <ds gs as ds> |
  \bar "||"
  \key af \major
  R1 |
  
  \barNumberCheck 49
  \time 12/8
  <c' af' c>4. <bf ef af bf> <c ef af c> <df ef af bf ef> |
  \undo \omit TupletNumber
  \voiceOne <df ef g bf ef>4. g'^\cantabile \tuplet 2/3 { f8 af, } g4. |
  <c, af' c>4. <bf ef af bf> <c ef af c> <d f c' d> |
  <d f b d>4. b''4. \tuplet 2/3 { af8 c, } b4. |
  \oneVoice <ef, c' ef>4. <d g c d> <ef g c ef> <f a ef' f> |
  <g ef' g>4. <bf ef bf'> <ef bf' ef> <d bf' d> |
  <df! bf' df!>4. <c e c'> \voiceOne <c f> q |
  \oneVoice <g af d g>4. <f af d f> <ef g ef'>8 r r r4^\rit r8 |
  
  \barNumberCheck 57
  <f, af df f>4.^\aTempo <ef af df ef> <f af df f> <gf af df ef af> |
  <gf af c ef af>4.^\cantabile \voiceOne \ottava 1 c''4. 
    \tuplet 2/3 { bf8 \ottava 0 df, } c4. |
  <f,, af df f>4. <ef af df ef> <f af df f> <g bf f' g> |
  <g bf e g>4. \voiceOne \ottava 1 e'''4. \tuplet 2/3 { df8 \ottava 0 f, }
    e4. |
  \oneVoice <af,, f' af>4. <g c f g> <af c f af> <bf d af' bf> |
  <c ef' c>4. <ef af ef'> <af ef' af> <g ef' g> |
  <gf ef' gf>4. <f a f'> \voiceTwo <f bf> q |
  \oneVoice <c df g c>4. <bf df g bf> <af c af'> r4 r8 |
  
  \barNumberCheck 65
  <af' ff' af>4. <gf cf gf'> <ff cf' ff!> <ef cf' ef> |
  \arpeggioAsBracket <df df'>4.\arpeggio <cf cf'> <df df'> <ef ef'> |
  <af cf ff af>4. <gf af cf gf'> <ff af cf ff!> <ef af cf ef> |
  <d f bf d>4. <c f a c> <d f bf>2. |
  <bf' df gf bf>4. <af bf df af'> <gf df' gf!> <f df' f> |
  \arpeggioAsBracket \voiceOne <ef ef'>4.\arpeggio <df df'> <ef ef'> <f f'> |
  \oneVoice <bf df gf bf>4. <af bf df af'> <gf bf df gf!> <f bf df f> |
  <e g! c e>4. <ef g c ef>2. <df g ef'>4. |
  
  \barNumberCheck 73
  <c' ef af c>4. <bf ef af bf> <c ef af c> <df ef af bf ef> |
  <df ef g bf ef>4. \voiceOne \ottava 1 g'4. \tuplet 2/3 { f8 af, } s4. |
  \ottava 0 \oneVoice <c, ef af c>4. <bf ef af bf> <c ef af c> <d f c' d> |
  <d f b d>4. \voiceOne b'4. \tuplet 2/3 { af8 c, } b4. |
  \oneVoice <ef, g c ef>4. <d g c d>^\accel <ef g c ef> <ds gs bs ds> |
  \bar "||"
  \key gs \minor
  <e gs cs e>4.^\accelerando <ds gs cs ds> <e gs cs e> <fs a ds fs> |
  <gs b e gs>4. <fs b e fs> <gs b e gs> <as css gs' as> |
  <b css gs' b>4. <fss css' fss> <gs css gs'> <gs, css> |
  
  \barNumberCheck 81
  \bar "||"
  \time 4/4
  \omit TupletNumber
  \tuplet 3/2 { 
    ds'8-.^\aTempo e-. gs,-.  cs-. ds-. gs,-.  b-. cs-. gs-.  as-. b-. gs-. |
    gs'8-. a-. cs,-.  fs-. gs-. cs,-.  e-. fs-. cs-.  ds-. e-. cs-. |
    <e e'>8 <fs fs'> <cs cs'>  <e e'> <fs fs'> <cs cs'>  <e e'> <fs fs'> 
      <cs cs'>  <e e'> <fs fs'> <cs cs'> |
  }
  <e fss cs' e>4 <cs fss cs'>2 <fss, fss'>4 |
  <gs gs'>4~ q16 q q q q4 q |
  q4 <gs' e' gs>8( <b e b'> <cs gs' cs> <ds gs ds'> <e gs e'> <gs gs'>) |
  <cs,, cs'>4~ q16 q q q q4 q |
  q4 <cs' a' cs>8( <e a e'> \ottava 1 <fs cs' fs> <gs cs gs'> <a! cs a'>
    <cs cs'>) |
    
  \barNumberCheck 89
  \ottava 0 <ds,, fss ds'>4( <e fss e'>8 <ds fss ds'> <fss ds' fss>
    <gs ds' gs> \voiceOne \tuplet 3/2 { <as as'>4 <gs gs'>8) } |
  \voiceTwo <gs bs gs'>4^( <a bs a'>8 <gs bs gs'> <bs gs' bs> <cs gs' cs>
    \tuplet 3/2 { <ds ds'>8 <cs cs'>) <gs gs'>-\slurShapeE ^( } |
  <e' e'>8 <ds ds'> \tuplet 3/2 { <cs cs'> <b b'>8. <as as'>16 } q8 <gs gs'>
    \tuplet 3/2 { <fs fs'>4 <e e'>8 } |
  \oneVoice \tuplet 3/2 { q8 <ds ds'> <cs cs'>  <b b'> <as as'> <b b'> }
    <gs e' gs>4) r |
  <as e' gs as>4 <bs fs' gs bs> <cs gs' cs> <css gs' b css> |
  <ds gs b ds>4 \tuplet 3/2 { 
    <b'' ds b'>8-> <as as'> <gs gs'>  <fs fs'> <e e'> <ds ds'>
      <cs! cs'!> <b b'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b ds b'>-> <as as'> <gs gs'>
      <fs fs'> <e e'> <ds ds'>  <cs cs'> <b b'> <gs gs'> |
    \clef bass <css, css'> <ds ds'> <gs gs'>  \clef treble <as as'> <b b'> 
      <cs cs'>  <css css'> <ds ds'> <gs gs'>  <as as'> <b b'> <cs cs'!> |
      
    \barNumberCheck 97
    \ottava 1 <css css'> <ds ds'> <gs gs'>  <as as'> <b b'> <cs cs'!>
      <css css'> <ds ds'> \ottava 0 r
  } <fss,,, fss'> r |
  <gs gs'>4~^\sottoVoce q16 q q q q4 q |
  q4 \tuplet 3/2 { 
    b'8 as gs  fs e ds  cs b gs |
    cs b gs  b'8 as gs  fs e ds  cs b gs |
    cs b gs  e' cs b  gs' e ds  cs' b gs |
  }
  \oneVoice gs'4 r <ds,, gs ds'>2 |
  q1 |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo 
  s1 * 4 |
  s2. ds''4 |
  s2. e4 |
  <gs cs>4 gs e e |
  cs4 gs s2 |
  
  \barNumberCheck 9
  s1 * 4 |
  s2. ds'4 |
  s2. \voiceOne gs4 |
  ds'4 b fs es |
  s4 \voiceTwo as, s2 |
  
  \barNumberCheck 17
  s1 |
  s4 \voiceOne gs' e b |
  \voiceTwo <gs, bf f'>4 q8 <gs bf ef> <gs bf d>4 <a d> |
  s1 * 2 |
  s4 \voiceOne ds' \voiceTwo b fs |
  \clef bass <ds, f c'>4 q8 <ds f bf> <ds f a>4 <e a> |
  s1 |
  
  \barNumberCheck 25
  <fss a e'>4 q8 <fss a d> <fss a cs>4 <gs cs> |
  s1 |
  e'4 <bs fs'> gs' cs |
  cs4 cs bs bs |
  <gs cs>4 q <a cs> q |
  s1 |
  e4 <bs fs'> gs' cs |
  css4 css2 <gs css>4 |
  
  \barNumberCheck 33
  s4 gs \voiceOne  ds' gs |
  s1 * 5 |
  s2. \voiceTwo ds4 |
  s2. \voiceOne gs4 |
  
  \barNumberCheck 41
  gs4 gs e css |
  s4 \voiceTwo fss, s2 |
  s1 * 2 |
  gs4 s2. |
  s1 * 2 |
  \key af \major 
  s1 |
  
  \barNumberCheck 49
  \time 12/8
  s1. |
  s4. <c c'>4-\slurShapeA ^( <bf bf'>8 q <f f'> <ef ef'> q4.) |
  s1. |
  s4. <ef' ef'>4-\slurShapeA ^( <d! d'>8 q8 <af af'> <g g'> q4.) |
  s1. * 2 |
  s2. <bf bf'>4 <af af'>8 <bf bf'> <af af'> <c, c'> |
  s1. |
  
  \barNumberCheck 57
  s1. |
  s4. \ottava 1 <f' f'>4-\slurShapeB ^( <ef ef'>8  q \ottava 0 <bf bf'> 
    <af af'>  q4.) |
  s1. |
  s4. \ottava 1 <af' af'>4-\slurShapeB ^( <g g'>8  q \ottava 0 <df df'> <c c'>
    q4.) |
  s1. * 2 |
  s2. \voiceOne <ef, ef'>4 <df df'>8  <ef ef'> <df df'> <f, f'> |
  s1. |
  
  \barNumberCheck 65
  s1. |
  \voiceTwo ff'2. af |
  s1. * 3
  gf2. bf |
  s1. * 2 |
  
  \barNumberCheck 73
  s1. |
  s4. \ottava 1 <c' c'>4-\slurShapeA ^( <bf bf'>8 q <f f'> <ef ef'> \voiceOne 
    <ef g ef'>4.) |
  s1. |
  s4. \voiceTwo <ef ef'>4-\slurShapeC ^( <d d'>8 q <af af'> <g g'>) q4. |
  s1. |
  \key gs \minor
  s1. * 3 |
  
  \barNumberCheck 81
  \time 4/4
  s1 * 2 |
  <a cs>4 q <gs cs> q |
  s1 * 5 |
  
  \barNumberCheck 89
  s2. \voiceTwo ds'4 |
  s2. \voiceOne gs4 |
  gs4 gs e css |
  s4 \voiceTwo fss, s2 |
  s1 * 2 |
  gs4 s2. |
  \clef bass \voiceOne gs,4 \clef treble s \voiceTwo gs' s |
  
  \barNumberCheck 97
  gs'4 s2. |
  \tupletOff
  \tuplet 3/2 { e,8 fs gs,  ds' e gs,  cs ds gs,  b cs gs | }
  \tuplet 3/2 { as8 b gs } s2. |
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
  s1 |
  s4 ds' b gs |
  s1 |
  s4 \clef treble \voiceFour gs' e \clef bass \voiceThree cs |
  s1 * 4 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 4 |
  \voiceFour gs,4 s2. |
  s1 * 2 |
  \key af \major
  s1 |
  
  \barNumberCheck 49
  \time 12/8
  s1. |
  s2. \hideNoteHead df''4.^~ \voiceThree df4 ef8~ |
  \hideNoteHead ef4 s8 s4. s2. |
  s2. \clef treble \hideNoteHead f4.^~ f4 g8~ |
  \hideNoteHead g4 \clef bass s8 s4. s2. |
  s1. * 3 |
  
  \barNumberCheck 57
  s1. |
  s2. \clef treble \hideNoteHead gf4.^~ gf4 af8~ |
  \hideNoteHead af4 s8 s4. s2. |
  s2. \voiceFour \hideNoteHead bf4.^~ \voiceThree \tuplet 2/3 { bf8 c~ } |
  \hideNoteHead c4 s8 s4. s2. |
  s1. * 3 |
  
  \barNumberCheck 65
  s1. |
  \hideNoteHead af2.\arpeggio s |
  s1. * 3 |
  \hideNoteHead bf2.\arpeggio s |
  s1. * 2 |
  
  \barNumberCheck 73
  <c, ef af>4. <bf ef af> <c ef af> <df ef af bf> |
  <df ef g bf>4. s2. \clef treble \voiceFour <ef g>4 s8 |
  \voiceThree <c ef af>4. <bf ef af> <c ef af> <c f c'> |
  <d f b>4. s2. \clef treble \voiceFour ef8 d g,~ |
  << { \hideNoteHead g4 s8 } \new Voice { \voiceFour <ef g c>4. } >> 
    \clef bass \voiceThree <d g c> <ef g c> <fs gs bs> |
  \key gs \minor
  <e gs cs>4. <ds gs cs> <e gs cs> <fs a ds> |
  <gs b e>4. <fs b e> <gs b e> <as css gs'> |
  <b css gs'>4. s s2. |
  
  \barNumberCheck 81
  \time 4/4
  s1 * 8 |
  
  \barNumberCheck 89
  s1 * 6 |
  \voiceFour gs,4 s2. |
  gs,4 s gs' s |
  
  \barNumberCheck 97
  \voiceThree  gs'4 s2. |
}

leftHandLower = \relative {
  \tupletOff
  \tuplet 3/2 {
    <e, e'>8-._\sottoVoce <fs fs'>-. <gs, gs'>-.  <ds' ds'>-. <e e'>-. 
      <gs, gs'>-.  <cs cs'>-. <ds ds'>-. <gs, gs'>-.  <b b'>-. <cs cs'>-. 
      <gs gs'>-. |
    <as as'>8-. <b b'>-. <gs gs'>-.  \voiceFour <b'' b'>( <as as'> <gs gs'>
      <fs fs'> <gs gs'> <ds ds'>  <cs cs'> <ds ds'> <gs, gs'>) |
    \oneVoice <a a'>8-. <b b'>-. <cs, cs'>-.  <gs' gs'>-. <a a'>-. <cs, cs'>-.
      <fs fs'>-. <gs gs'>-. <cs, cs'>-.  <e e'>-. <fs fs'>-. <cs cs'>-. |
    <ds ds'>8-. <e e'>-. <cs cs'>-.  \clef treble <e'' e'>( <ds ds'> <cs cs'>
      <b b'> <cs cs'> <gs gs'>  \clef bass <fs fs'> <gs gs'> <cs, cs'>) |
    <cs, cs'>8 <b' b'> <as as'>  <gss gss'> <as as'> <cs, cs'>  <b b'>
      <ds' ds'> <gs, gs'>
  } <gs' ds' b'>4 |
  \tuplet 3/2 { <cs,, cs'>8 <b' b'> <as as'>  <gss gss'> <as as'> <cs, cs'>
                <b b'> <e' e'> <b b'> } <gs' e' b'>4 |
  \tuplet 3/2 { <cs,, cs'>8 <gs'' gs'> <gs, gs'> } \clef treble <e'' gs e'>4
    \clef bass \tuplet 3/2 { <gs,,, gs'>8 <cs' cs'> <gs gs'> } <b' e b'>4 |
  \tuplet 3/2 { <cs,,, cs'>8 <gs''' gs'> <gs, gs'> } <e' gs e'>4
    \tuplet 3/2 { <ds,, ds'>8 <cs' cs'> <css css'>  <ds ds'> <css css'> 
                  <ds ds'> } |
  
  \barNumberCheck 9
  \tuplet 3/2 {
    <e e'>8-. <fs fs'>-. <gs, gs'>-.  <ds' ds'>-. <e e'>-. <gs, gs'>-.
      <cs cs'>-. <ds ds'>-. <gs, gs'>-.  <b b'>-. <cs cs'>-. <gs gs'>-. |
    <as as'>8-. <b b'>-. <gs gs'>-.  <b'' e b'>-.( <as e' as>-. <gs e' gs>-.
      <fs b fs'>-. <e b' e>-. <ds b' ds>-.  <cs e cs'>-. <b e b'>-.
      <gs e' gs>-.) |
    <a a'>8-. <b b'>-. <cs, cs'>-.  <gs' gs'>-. <a a'>-. <cs, cs'>-.
      <fs fs'>-. <gs gs'>-. <cs, cs'>-.  <e e'>-. <fs fs'>-. <cs cs'>-. |
    <ds ds'>8-. <e e'>-. <cs cs'>-.  \clef treble <e'' a e'>( <ds a' ds>
      <cs a' cs>  <b e b'> <a e' a> <gs e' gs>  \clef bass <fs a fs'> <e a e'>
      <cs a' cs>) |
    <cs, cs'>8 <b' b'> <as as'>  <gss gss'> <as as'> <cs, cs'>  <b b'>
      <ds' ds'> <gs, gs'>
  } <gs' ds' b'>4 |
  \tuplet 3/2 { <fs, fs'>8 <e' e'> <ds ds'>  <css css'> <ds ds'> <fs, fs'>
                <e e'> <gs' gs'> <cs, cs'> } \clef treble <cs' gs' e'>4 |
  \clef bass \tuplet 3/2 { <fs,,, fs'>8 <fs'' fs'> <ds ds'> } <b' fs' b>4
    \tuplet 3/2 { <fs,, fs'>8 <fs'' fs'> <d d'> } <b' es b'>4 |
  <fs,, fs'>8 <fs' fs'> <e' as e'> <fs, fs'> \tuplet 3/2 { \ottava -1 <b,, b'>
    \ottava 0 <gs'' gs'> <g g'>  <fs fs'> <b, b'> <fs fs'> |
  }
  
  \barNumberCheck 17
  \ottava -1 <b, b'>4~ q16 q q q q4 q |
  q4 \ottava 0 \voiceFour <f''' gs! d' f>8 <b,, b'> <e' gs d' e> <b, b'>
    <d' gs d'> <b, b'> |
  \tuplet 3/2 { 
    \oneVoice <c c'>8-. <d d'>-. <bf bf'>-.  <d d'>-. <ef ef'>-. <bf bf'>
      <e e'>-. <f f'>-. <bf, bf'>-. <es es'>-. <fs fs'>-. <a, a'>-. |
    q8 <a'' a'> <gs gs'>  <g g'> <b, b'> <bf bf'> <a a'> <b b'> <a a'>
      <gs! gs'> <a a'> <d, d'> |
  }
  <fs, fs'>4~ q16 q q q  q4 q |
  q4 <c'' ds! a' c>8 <fs,, fs'> <b' ds a' b> <fs, fs'> <a' ds a'> <fs, fs'> |
  \tuplet 3/2 { 
    <g g'>8-. <a a'>-. <f f'>-.  <a a'>-. <bf bf'>-. <f f'>-.
      <b b'>-. <c c'>-. <f, f'>-.  <bs bs'>-. <cs cs'>-. <e, e'>-. |
    <e' e'>8( <e' e'> <ds ds'>  <d d'> <fs, fs'> <f f'>  <e e'> <fs fs'> <e e'>
      <ds! ds'> <e e'> <a, a'>) |
      
    \barNumberCheck 25
    <b b'>8-. <cs cs'>-. <a a'>-.  <cs cs'>-. <d d'>-. <a a'>-.
      <ds ds'>-. <e e'>-. <a, a'>-.  <ds ds'>-. <e e'>-. <gs, gs'>-. |
    q8 <a'' a'> <fss fss'>  <a a'> <gs gs'> <gs, gs'>  <gs, gs'> <gs' gs'>
      <fss fss'!>  <fs fs'> <e e'> <ds ds'> |
    <bs bs'>8_\p <cs cs'> q  <d d'> <ds ds'> q  q <e e'> q
      <ds' ds'> <e e'> q |
    q8 <a, a'> q  q <d, d'> q  q <ds ds'> q  <gs gs'> <fs fs'> q |
    <ds ds'>8 <e e'> q  <ds ds'> <e e'> q  <es es'> <fs fs'> q  
      q <fss fss'> q |
    q8 <gs gs'> q  <fss fss'> <gs gs'> q  <fss fss'> <gs gs'> q
      <a a'> <gs gs'> q |
    <bs, bs'>8 <cs cs'> q  <d d'> <ds ds'> q  q <e e'> q  <ds' ds'> <e e'> q |
    q8 <as, as'> q  q <e e'> q  q <as as'> q  q q q |
    
    \barNumberCheck 33
    <ds, ds'>8 <as' as'> <b b'>  <cs cs'> <as as'> <b b'>  <ds, ds'> <as' as'>
      <b b'>  <cs cs'> <as as'> <b b'> |
    <ds, ds'>8 <gss gss'> <as as'>  <b b'> <gss gss'> <as as'>
      <ds, ds'> <gss gss'> <as as'>  <b b'> <as as'> <ds, ds'> |
    <e e'>8 <fs fs'> <gs, gs'>  <ds' ds'> <e e'> <gs, gs'>  <cs cs'> <ds ds'>
      <gs, gs'>  <b b'> <cs cs'> <gs gs'> |
    <as as'>8 <b b'> <gs gs'>  <b'' e b'>-.( <as e' as>-. <gs e' gs>-.
      <fs b fs'>-. <e b' e>-. <ds b' ds>-.  <cs e cs'>-. <b e b'>-. 
      <gs e' gs>-.) |
    <a a'>8 <b b'> <cs, cs'>  <gs' gs'> <a a'> <cs, cs'>  <fs fs'> <gs gs'>
      <cs, cs'>  <e e'> <fs fs'> <cs cs'> |
    <ds ds'> <e e'> <cs cs'>  \clef treble <e'' a e'>( <ds a' ds> <cs a' cs>
      <b e b'> <a e' a!> <gs e' gs> \clef bass <fs a fs'> <e a e'> 
      <cs a' cs>) |
    <cs, cs'> <b' b'> <as as'>  <gss gss'> <as as'> <cs, cs'>  <b b'>
      <ds' ds'> <gs, gs'>
  } <gs' ds' b'>4 |
  \tuplet 3/2 { <fs, fs'>8 <e' e'> <ds ds'>  <css css'> <ds ds'> <fs, fs'>
    <e e'> <gs' gs'> <cs, cs'> } \clef treble <cs' gs' e'>4 |
  
  \barNumberCheck 41
  \clef bass \tuplet 3/2 { <ds,,, ds'>8 <ds'' ds'> <b b'> } <gs' ds' gs>4
    \tuplet 3/2 { <ds,, ds'>8 <e'' e'> <b b'> } <gs' css gs'>4 |
  <ds,, ds'>8 <ds' ds'> <ds' cs'> <ds, ds'> \tuplet 3/2 { 
    <e e'> <as as'> <b b'>  <cs cs'> <b b'> <e, e'> |
    <bs bs'>8 <cs cs'> <gs' gs'>  <css, css'> <ds ds'> <gs gs'>
      <ds ds'> <e e'> <gs gs'>  <ds ds'> <e e'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b' ds b'>-> <as as'> <gs gs'>  
      <fs fs'> <e e'> <ds ds'>  <cs cs'!> <b b'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b ds b'>-> <as as'> <gs gs'>  
      <fs fs'> <e e'> <ds ds'>  <cs cs'> <b b'> <gs gs'> |
  }
  \undo \omit TupletNumber
  \tupletDown
  <ds ds'>4~ \tuplet 3/2 { q4 q8~ } q4~ \tuplet 3/2 { q4 q8~ } |
  \tuplet 3/2 4 { q4 <gs gs'>8~ q4 <ds ds'>8~ q4 <gs gs'>8~ q4 <ds ds'>8 } |
  \key af \major
  r2 r4 r8 <ef'' ef'>~ |
  \time 12/8
  q4 <af, af'>8~ q4 <ef ef'>8~ q4 <af af'>8~ q4 <bf bf'>8~ |
  q4 <ef, ef'>8 <ef' df' g>4. \voiceFour <bf' df af'> c8 bf ef,_~ |
  \oneVoice <ef ef'>4 <af, af'>8~ q4 <ef ef'>8~ q4 <af af'>8~ q4 q8~ |
  q4 <ef ef'>8 \clef treble <g' f' b>4. \voiceThree <d' f c'> \voiceFour 
    ef8 d g,_~ |
  \voiceThree <g g'>4 \clef bass \oneVoice <c, c'>8~ q4 <g g'>8~ q4 
    <c c'>8~ q4 <cf cf'>8~ |
  q4 <bf bf'>8~ q8 <ef ef'> <f f'> \clef treble <g g'> <a a'> <bf bf'>
    <g' g'>4 q8~ |
  q4 <g, g'>8  <af af'> <g g'> <c, c'>  <f f'>4. \clef bass <c c'>~ |
  q4 <bf bf'>8  <c c'> <bf bf'> <bf, bf'>~  q <g' g'>-_-\slurShapeD ( <f f'>-_
    <g g'>-_ <f f'>-_ <ef ef'>-_~ |
    
  \barNumberCheck 57
  q4) <df df'>8~ q4 <af af'>8~ q4 <df df'>8~ q4 <ef ef'>8~ |
  q4 <af, af'>8 \clef treble <af'' gf' c>4. \voiceThree <ef' gf df'> \voiceFour
    f8 ef af,~ |
  \voiceThree <af af'>4 \clef bass \oneVoice <df,, df'>8~ q4 <af af'>8~ q4
    <df df'>8~ q4 q8~ |
  q4 <c c'>8 \clef treble <c'' bf' e>4. \voiceFour <g' bf f'>4.  af8 g c,~ |
  \voiceThree <c c'>4 \clef bass \oneVoice <f,, f'>8~ q4 <c c'>8~ q4 
    <f f'>8~ q4 <ff ff'>8~ |
  q4 <ef ef'>8~  q <af af'> <bf bf'>  <c c'> <d d'> <ef ef'> \clef treble
    <c' c'>4 q8~ |
  q4 \clef bass <c, c'>8(  <df df'> <c c'> <f, f'>)  <bf bf'>4. <f f'>~ |
  q4 <ef ef'>8  <f f'> <ef ef'> <ef, ef'>~  q <c' c'> <bf bf'> 
    <af af'> q <gf gf'> |
  
  \barNumberCheck 65
  <ff ff'>4.~ q8 <cf' cf'> <gf ' gf'>  <af af'> <cf cf'> <ff ff'>
    <af af'>4 q8 |
  \voiceFour q2. \oneVoice <cf, af' ff'>4.~ q4 <cf, cf'>8 |
  q8 <ff ff'>4 ~ q q8  q <af af'>4~ q4. |
  <bf bf'>4. <f f'> <bf bf'> <af af'> |
  <gf, gf'>4.~ q8 <df' df'> <af' af'>  <bf bf'> <df df'> <gf gf'>
    <bf bf'>4 q8 |
  \voiceFour q2. \oneVoice <df, bf' gf'>4.~ q4 <df, df'>8 |
  q8 <gf gf'>4~ q4 q8 q8 <bf bf'>4~ q4. |
  <c g'! c>4. q <ef, ef'> <bf' ef bf'>4 \oneVoice <ef ef'>8~ |
  
  \barNumberCheck 73
  q4 \voiceFour <af, af'>8~ q4 <ef ef'>8~ q4 <af af'>8~ q4 <bf bf'>8~ |
  q4 <ef, ef'>8 \clef treble <df'' ef g df'>4. <df ef af df> \voiceThree 
    <c c'>8 <bf bf'> \clef bass \oneVoice <ef, ef'>~ |
  \voiceFour q4 <af, af'>8~ q4 <ef ef'>8~ q4 <af af'>8~ q4 q8~ |
  q4 <g g'>8 \clef treble \voiceThree <g' f' b>4. <d' f c'>~ f4 g8~ |
  <g, g'>4 \clef bass \voiceFour <c,, c'>8~ q4 <g g'>8~ q4 <c\=1( c'\=2(>8
    <bs\=1) bs'\=2)>4 <gs gs'>8~ |
  \key gs \minor  
  q4 <cs cs'>8~ q4 <gs' gs'>8~ q4 <cs, cs'>8~ q4 <b b'>8~ |
  q4 <e e'>8~ q4 <b' b'>8~ q4 <e, e'>8~ q4 q8~ |
  q4.~ q8 <as as'> <b b'> <e e'> <b b'> <e, e'> \oneVoice <as, as'> <b b'> 
    <e, e'> |
    
  \barNumberCheck 81
  \time 4/4
  \omit TupletNumber
  <ds ds'>4 \tuplet 3/2 { <gs gs'>8 <as as'> <b b'> } <e e'>4~ q8 <ds ds'> |
  <ds, ds'>4 \tuplet 3/2 { <cs' cs'>8 <ds ds'> <e e'> } <a a'>4~ q8 <gs gs'> |
  \eighthsInTwos.44
  <ds, ds'>8 <cs'' a'> <e cs'> <cs a'> <ds,, ds'> <cs'' a'> <e cs'> <cs a'> |
  \tuplet 3/2 { 
    <ds,, ds'>8 <a' a'> <as as'>  <e' e'> <css css'> <ds ds'>  <e e'> 
      <css css'> <ds ds'>  <e e'> <css css'> <ds ds'> |
    <e e'>8 <fs fs'> <gs, gs'>  <ds' ds'> <e e'> <gs, gs'>  <cs cs'> <ds ds'>
      <gs, gs'>  <b b'> <cs cs'> <gs gs'> |
    <as as'>8 <b b'> <gs gs'>  <b'' e b'>-.( <as e' as>-. <gs e' gs>-.
      <fs b fs'>-. <e b' e>-. <ds b' ds>-.  <cs e cs'>-. <b e b'>-. 
      <gs e' gs>-.) |
    <a a'>8 <b b'> <cs, cs'>  <gs' gs'> <a a'> <cs, cs'>  <fs fs'> <gs gs'>
      <cs, cs'>  <e e'> <fs fs'> <cs cs'> |
    <ds ds'> <e e'> <cs cs'>  \clef treble <e'' a e'>-.( <ds a' ds>-. 
      <cs a' cs>-.  <b e b'>-. <a e' a!>-. <gs e' gs>-. \clef bass <fs a fs'>-.
      <e a e'>-. <cs a' cs>-.) |
      
    \barNumberCheck 89
    <cs, cs'> <b' b'> <as as'>  <gss gss'> <as as'> <cs, cs'>  <b b'>
      <ds' ds'> <gs, gs'>
  } <gs' ds' b'>4 |
  \tuplet 3/2 { <fs, fs'>8 <e' e'> <ds ds'>  <css css'> <ds ds'> <fs, fs'>
    <e e'> <gs' gs'> <cs, cs'> } \clef treble <cs' gs' e'>4 |
  \clef bass \tuplet 3/2 { <ds,,, ds'>8 <ds'' ds'> <b b'> } <gs' ds' gs>4
    \tuplet 3/2 { <ds,, ds'>8 <e'' e'> <b b'> } <gs' css gs'>4 |
  <ds,, ds'>8 <ds' ds'> <ds' cs'> <ds, ds'> \tuplet 3/2 { 
    <e e'> <as as'> <b b'>  <cs cs'> <b b'> <e, e'> |
    <bs bs'>8 <cs cs'> <gs' gs'>  <css, css'> <ds ds'> <gs gs'>
      <ds ds'> <e e'> <gs gs'>  <ds ds'> <e e'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b' ds b'>-> <as as'> <gs gs'>  
      <fs fs'> <e e'> <ds ds'>  <cs cs'!> <b b'> <gs gs'> |
    <css, css'>8 <ds ds'> <gs gs'>  <b ds b'>-> <as as'> <gs gs'>  
      <fs fs'> <e e'> <ds ds'>  <cs cs'> <b b'> <gs gs'> |
    <css, css'> <ds ds'> <gs gs'>  <as as'> <b b'> <cs cs'>  <css css'> 
      <ds ds'> <gs gs'>  <as as'> <b b'> <cs cs'!> |
      
    \barNumberCheck 97
    <css css'> <ds ds'> <gs gs'>  <as as'> <b b'> <cs cs'!>  <css css'> 
      <ds ds'> r
  } <ds,, ds'> r |
  \tuplet 3/2 { 
    <e e'> <fs fs'> <gs, gs'>  <ds' ds'> <e e'> <gs, gs'>  <cs cs'> <ds ds'>
      <gs, gs'>  <b b'> <cs cs'> <gs gs'> |
    <as as'> <b b'> <gs gs'>  <b' b'> <as as'> <gs gs'>  <fs fs'> <e e'> 
      <ds ds'>  <cs cs'> <b b'> <gs gs'> |
    <cs cs'> <b b'> <gs gs'>  <b' b'> <as as'> <gs gs'>  <fs fs'> <e e'> 
      <ds ds'>  <cs cs'> <b b'> <gs gs'> |
    <cs cs'> <b b'> <gs gs'>  <e' e'> <cs cs'> <b b'>  <gs' gs'> <e e'> 
      <ds ds'>  <cs' cs'> <b b'> <gs gs'> |
  }
  <gs' gs'>4 r <gs,, ds' gs>2 |
  q1 |
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
  s1\p |
  s4 s2.-\tweak Y-offset 1 \f |
  s1\p |
  s4 s2.\f |
  s1 * 2 |
  s2\ff s\dim |
  s4 s2.\dim |
  
  \barNumberCheck 9
  s1\p |
  s4 s2.\ff\< <>\! |
  s1 * 6 |
  
  \barNumberCheck 17
  s1 |
  s4 s2.\sff |
  s1\pp |
  s1 * 2 |
  s4 s2.-\tweak X-offset -2 \sff |
  s1\pp |
  s1 |
  
  \barNumberCheck 25
  s1\< |
  s2-\tweak Y-offset 3 \> s\! |
  s1 * 6 |
  
  \barNumberCheck 33
  s1 * 2 |
  s1-\tweak Y-offset -2 \p |
  s4 s2.-\tweak X-offset -1 \f\< |
  s1\p |
  s4 s2.\f\< <>\! |
  s1 * 2 |
  
  \barNumberCheck 41
  s1\ff |
  s1 |
  s4\p s2.\cresc |
  s1\f |
  s1 |
  s4 s\dim s\p s\dim |
  s4.-\tweak X-offset 0 \pp s8\dim s4 s\ppp | 
  s1 |
  
  \barNumberCheck 49
  \time 12/8
  s1.-\tweak Y-offset 1\pp |
  s4. s4.\p s2. |
  s1. * 2 |
  s2. s\cresc |
  s1. |
  s4 s8\dim s4. s2. |
  s2. s8 s4-\tweak Y-offset 1 \pp s4. |
  
  \barNumberCheck 57
  s1.\p |
  s1. * 3 |
  s1.\cresc |
  s1. * 2 |
  s1.\> |
  
  \barNumberCheck 65
  s1.\p |
  s8. s\cresc s4. s2. |
  s1. |
  s1.\f |
  s1.\pp |
  s1. * 3 |
  
  \barNumberCheck 73
  s1.\ff |
  s1. * 3|
  s4. s\cresc s2. |
  s1. * 3 |
  
  \barNumberCheck 81
  \time 4/4
  \tuplet 3/2 { 
    s4 s8\< s4 s8\! s4 s8\> s4 s8\! |
    s4 s8\< s4 s8\! s4 s8\> s4 s8\! | 
  } 
  s1 * 2 |
  s1-\tweak Y-offset -2 \f |
  s4 s2.\< <>\! |
  s1 |
  s4 s2.\< <>\! |
  
  \barNumberCheck 89
  s1 * 7 |
  s1\sf\dim |
  
  \barNumberCheck 97
  s2.-\tweak Y-offset 1 \p s4\ppp |
  s1\p |
  s4 s2.\dim |
  s4\pp s2.\dim |
  s4-\tweak X-offset 0 \ppp s2.\dim |
  s1-\tweak X-offset -0.5 -\tweak Y-offset 1 \pppp |
  s1 |
}

% MIDI only 
pedal = {
  s1 |
  s4 s\sd s\su\sd s\su\sd |
  s1\su |
  s4 s\sd s\su\sd s\su\sd |
  s1 * 2 \su |
  s2\sd s\su\sd |
  s2\su\sd s\su |
  
  \barNumberCheck 9
  s1 |
  s4 s\sd s\su\sd s\su\sd |
  s1\su |
  s4 s\sd s\su\sd s\su\sd |
  s1 * 2 \su |
  s2\sd s\su\sd |
  s2\su\sd s\su |
  
  \barNumberCheck 17
  s1 |
  s4 s\sd s\su\sd s\su\sd |
  s1 * 3 \su |
  s4 s\sd s\su\sd s\su\sd |
  s1 * 2 \su |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 3 |
  s4 s\sd s\su\sd s\su\sd |
  s1\su |
  s4 s\sd s\su\sd s\su\sd |
  s1 * 2 \su |
  
  \barNumberCheck 41
  s2\sd s\su\sd 
  s2\su\sd s\su |
  s1 * 6 |
  
  \barNumberCheck 49
  \time 12/8
  s1. |
  s4 s8\sd s4. s\su\sd s\su\sd |
  s1.\su |
  s4 s8\sd s4. s\su\sd s\su\sd |
  s1. * 2 \su |
  s2. s\sd |
  s1.\su |
  
  \barNumberCheck 57
  s1. |
  s4 s8\sd s4. s\su\sd s\su\sd |
  s1.\su |
  s4 s8\sd s4. s\su\sd s\su\sd |
  s1. * 2 \su |
  s2. s\sd |
  s1.\su |
  
  \barNumberCheck 65
  s2.\sd s\su\sd |
  s2.\sd s\su\sd |
  s2.\sd s\su\sd |
  s1.\su |
  s2.\sd s\su\sd |
  s2.\sd s\su\sd |
  s2.\sd s\su\sd |
  s1.\su |
  
  \barNumberCheck 73
  s4.\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  s4.\su\sd s\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 81
  \time 4/4
  s1 * 2 \su |
  s2\sd s\su\sd
  s1 * 2 \su |
  s4 s\sd s\su\sd s\su\sd |
  s1\su |
  s4 s\sd s\su\sd s\su\sd |
  
  \barNumberCheck 89
  s1 * 2 \su |
  s2\sd s\su\sd |
  s2\su\sd s\su |
  s1 * 4 |
  
  \barNumberCheck 97
  s1 * 5 |
  s2 s\sd |
  s1 <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Alla ballata" #2 #0 120-136
  \tempo 4 = 126
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 8 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 8 |
  
  \barNumberCheck 49
  \tempo "Meno vivo" 4. = 108
  \time 12/8
  s1. * 7 |
  s2. \tempo 4. = 100 s |
  
  \barNumberCheck 57
  \tempo 4. = 108
  s1. * 8 |
  
  \barNumberCheck 65
  s1. * 8 |
  
  \barNumberCheck 73
  s1. * 5 |
  \tempo 4. = 112
  s1. |
  \tempo 4. = 116
  s1. |
  \tempo 4. = 120
  s1. |
  
  \barNumberCheck 81
  \time 4/4
  \tempo 4 = 126
  s1 | 
}

forceBreaks = {
  s1 * 3 \break
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
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \time 12/8 s1. \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  s1. * 2 \break
  s1. * 2 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  s1. * 2 \break
  s1. * 2 \break
  s1. * 2 \time 4/4 s1 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

etudeNineNotes =
\score {
  \header {
    title = \markup { Nº 9 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 9"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    connectArpeggios = ##t
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

etudeNineMidi =
\book {
  \bookOutputName "etude-op8-no09"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
