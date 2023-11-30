%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

tempoMarkup = \markup {
  \hspace #1.5 \large \bold "Presto tenebroso, agitato"
  \hspace #1 \raise #0.4 \tiny \note { 4 } #UP
  \concat {
    \huge "("
    \raise #0.4 \tiny \note { 4. } #UP
    \huge ")"
  } 
  \small "= 132"
}

alterPositionsA = \once \alterBroken positions #'((2 . 2) (4 . 4)) Beam
alterPositionsB = \once \alterBroken positions #'((-3 . -3) (-1 . -1)) Beam
alterPositionsC = 
  \once \alterBroken positions #'((2.5 . 2.5) (4.5 . 4.5)) Beam
alterPositionsD = \once \alterBroken positions #'((3 . 3) (4 . 4)) Beam
alterPositionsE = \once \alterBroken positions #'((-3 . -3) (0 . 0)) Beam
alterPositionsF = 
  \once \alterBroken positions #'((-3.5 . -3.5) (-1 . -1)) Beam
alterPositionsG = \once \alterBroken positions #'((0.5 . 0.5) (2 . 2)) Beam
alterPositionsH = 
  \once \alterBroken positions #'((-3.5 . -3.5) (0 . 0)) Beam
 
slurShapeA = \shape #'((0 . 0) (0 . 0) (4 . 0) (4 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0.5) (0 . 1.5) (0 . 2)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 1.5)) \etc

%%% Music %%%

global = {
  \time 4/4
  \key bf \minor
  \set Staff.extraNatural = ##f
}

rightHand = \relative {
  \global
  \omit TupletBracket
  \partial 8 * 4/3 r8 * 4/3
  <bf' f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  <df bf' df>4 <df af'! df> <df bf' df> <c! gf' c!> |
  <df bf' df>4-- <c f c'>-- <bf e bf'>-> r |
  <bf' f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  <df bf' df>4 <df af'! df> <df gf df'> <ef df' ef> |
  <f df' f>4 <ef af ef'> <df gf df'>2 |
  
  \barNumberCheck 9
  <f df' f>8 r <ef af ef'> r <f df' f> r <ef af ef'>8 * 2/3  
    \key c \major 
    r8 * 4/3 |
  <es cs' es>8 r <ds a' ds> r <cs a' cs> r <bs fs' bs> r |
  <cs a'cs>8 r <b! e! b'!> r <cs a' cs> r <b e b'> r |
  <cs a' cs>8 r <b f' b> r <a f' a> r <gs d' gs> r |
  \key bf \minor
  <a f' a>8 r <c a' c> r <f a f'> r q r |
  <f df' f>8 r <ef bf' ef> r <df bf' df> r <bf gf' bf> r |
  <a f' a>8 r <c a' c> r <f a f'> r q r |
  q4 <a f' a>2 q4 |
  
  \barNumberCheck 17
  <bf f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  <df bf' df>8 r <df af' df> r <df bf' df> r <c gf' c> r |
  <df bf' df>8 r <c f c'> r <df bf' df> r <c e c'> r |
  <bf f' bf>8 r <af df af'> r <gf df' gf> r <f bf f'> r |
  \clef bass <df bf' df>8 r <df bf'> r <df bf' df> r <df bf'> r |
  \clef treble <bf' f' bf>8 r <af df af'> r <gf df' gf> r <f bf f'> r |
  \clef bass <df bf' df>8 r <df bf'> r <df bf' df> r <df bf'> r |
  
  \barNumberCheck 25
  r4 r <df bf' df>8 r <df bf'> r |
  r4 <df bf' df>8 r r4 <df bf'>8 r |
  \key gf \major 
  \time 4/4
  <df gf df'>2 <ef gf df' ef>->~ |
  \tuplet 3/2 2 { 
    q4 \clef treble <f df' f> <gf df' gf>  <df' gf df'> <af df af'> 
      <gf df' gf> |
  }
  \clef bass <f df' f>4 <df f df'> q <f df' f> |
  << { df'4 cf bf af | } \\ { <ef ef'>2 <f df'> | } >>
  <df gf df'>2 <ef gf df' ef>~ |
  \tuplet 3/2 2 { 
    q4 \clef treble <f df' f> <gf df' gf>  <df' gf df'> <af df af'> 
      <gf df' gf> | 
  }
  
  \barNumberCheck 33
  \clef bass <f df' f>4 <df f df'> q <f df' f> | 
  << { df'4 c } \\ { <ef, ef'>2 } >> <f df' f>~ |
  q4 <g bf f' g>2 <af f' af>4 |
  \clef treble <a f' a>2 <c f c'> |
  <df f df'>2 << { <c c'>4 <cf cf'> } \\ { f2 } >> |
  << { <cf cf'>4 <bf bf'> q <af af'> | } \\ { f'2 f | } >> 
  \clef bass <df, gf df'>2 <ef gf df' ef>2~ |
  \tuplet 3/2 2 { 
    q4 \clef treble <f df' f> <gf df' gf>  <df' gf df'> <af df af'> 
      <gf df' gf> |
  }
  
  \barNumberCheck 41
  \clef bass <f df' f>4 <df f df'> q <f df' f> |
  <e bf' e>4 <c bf' c> q <e bf' e> |
  <f a f'>4 <f a c> q <f a f'> |
  <gf bf f'>4 <gf bf df> q^\accel <gf bf f'> |
  \key bf \minor
  \time 4/4
  <f a f'>4 <f a c> q <f a f'> |
  <gf bf f'>4 <gf bf df> q <gf bf f'> |
  <f a f'>4 <f a> <gf bf> <gf bf f'> |
  <g b f'>4 <g b> <af c> <af c f> |
  
  \barNumberCheck 49
  <a c f>4 <a c> q \clef treble <f' a f'> |
  q4 <a f' a>2 q4 |
  <bf f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  <df bf' df>4 <df af'! df> <df bf' df> <c! gf' c!> |
  <df bf' df>4-- <c f c'>-- <bf e bf'>-> r |
  <bf' f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  
  \barNumberCheck 57
  <df bf' df>4 <df af'! df> <df gf df'> <ef df' ef> |
  <f df' f>4 <ef af ef'> <df gf df'>2 |
  <f df' f>8 r <ef af ef'> r <f df' f> r <ef af ef'>8 * 2/3  
    \key c \major 
    r8 * 4/3 |
  <es cs' es>8 r <ds a' ds> r <cs a' cs> r <bs fs' bs> r |
  <cs a'cs>8 r <b! e! b'!> r <cs a' cs> r <b e b'> r |
  <cs a' cs>8 r <b f' b> r <a f' a> r <gs d' gs> r |
  \key bf \minor
  <a f' a>8 r <c a' c> r <f a f'> r q r |
  <f df' f>8 r <ef bf' ef> r <df bf' df> r <bf gf' bf> r |
  <a f' a>8 r <c a' c> r <f a f'> r q r |
  q4 <a f' a>2 q4 |
  <bf f' bf>8 r <af df af'> r <gf bf gf'> r <f df' f> r |
  <e bf' e>8 r <c bf' c> r <ef a ef'> r <cf a' cf> r |
  <df bf' df>8 r <df af' df> r <df bf' df> r <c gf' c> r |
  <df bf' df>8 r <c f c'> r <df bf' df> r <c e c'> r |
  <bf f' bf>8 r <af df af'> r <gf df' gf> r <f bf f'> r |
  \clef bass <df bf' df>8 r <df bf'> r <df bf' df> r <df bf'> r |
  \clef treble <bf' f' bf>8 r <af df af'> r <gf df' gf> r <f bf f'> r |
  \clef bass <df bf' df>8 r <df bf'> r <df bf' df> r <df bf'> r |
  r4 r <df bf' df>8 r <df bf'> r |
  r4 <df bf' df>8 r r4 <df bf'>8 r |
  R1 |
  \bar "|."
}

leftHand = \relative {
  \global
  \set Staff.timeSignatureFraction = 12/8
  \override Beam.breakable = ##t
  \omit TupletBracket
  \clef bass
  \scaleDurations 2/3 {
    \partial 4 f8([ bf,
    df'8]  bf[ f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef'])  f,[( bf, |
    bf'8]  bf[ f f'])  bf,,[( e, gf']  gf[ df df'])  \alterPositionsA bf,[( f |
    gf'8]  f[ df df'])  bf,[( gf gf']  e[ c c'])  f,,[( bf, |
    df'8]  bf'[f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef'])
      \alterPositionsB f,[-\slurShapeB ( bf, |
    bf'8]  bf[ f f'])  df,[( bff bff']  gf[ df df'])  df,[( af |
    af'8]  af[ df, df'])  df,[( bff bff']  gf[ df df'])  df,[( af |
    
    \barNumberCheck 9
    af'8]  af[ df, df'])  df,[( af af'] af[ df, df']) 
      \bar "||"
      \key c \major 
      \alterPositionsC cs,[( fs, |
    a'8]  a[ ds, cs'])  cs,[( fs, a']  a[ ds, ds'])  a,[( e |
    e'8]  e[ a, a'])  a,[( e e']  e[ a, a'])  a,[( d, |
    f']  f[ b, a'])  a,[( d, f']  f[ b, b'])
      \alterPositionsD c,![-\slurShapeA ( c, |
    \key bf \minor
    f'8]  f[ c c'])  c,[( f, f']  f[ c c'])  df,[( c, |
    gf''8]  ef[ df df'])  df,[( f, gf']  ef[ df df'])  c,[( c, |
    f'8]  f[ c c'])  c,[( f, f']  f[ c c'])  
        \alterPositionsE f,[-\slurShapeC ( cf |
    ef'8]  a,[ f ef'])  f,[( cf ef']  a,[ f ef'])  f,[( bf, |
    
    \barNumberCheck 17
    df'8]  bf[ f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef']) 
      \alterPositionsF f,[-\slurShapeB ( bf, |
    bf'8]  bf[ f f'])  bf,,[( e, gf']  gf[ df df'])  bf,[( f |
    gf'8]  f[ df df'])  bf,[( gf gf']  e[ c c'])  f,,[( bf, |
    df'8]  bf[ f f'])  ef,[( bf bf']  bf[ f f'])
      \alterPositionsG f,[( bf, |
    bf'8]  bf[ f f'])  f,[( bf, bf']  bf[ f f'])  f,[( bf, |
    df'8]  bf[ f f'])  ef,[( bf bf']  bf[ f f'])  f,[( bf, |
    bf'8]  bf[ f f'])  f,[( bf, bf']  bf[ f f'])  r r |
    
    \barNumberCheck 25
    r4. r8 f,[( bf, bf']  bf[ f f']) r r |
    r8 f,[( bf, bf']) r4 r8 bf[( f f']) r r |
  }
  \bar "||"
  \key gf \major 
  \unset Staff.timeSignatureFraction
  \time 4/4
  <bf,, bf'>2 <a a'>~ |
  q2 <bf bf'>4 <bff bff'> |
  \tuplet 3/2 2 { 
    q4 <af af'> q  q <g g'> q |
    q4 <af af'> q  <df df'> <cf cf'> q |
    q4 <bf bf'> q  q <a a'> q |
  }
  \after 4 \! <a a'>2\> <bf bf'>4 <bff bff'> |
  
  \barNumberCheck 33
  \tuplet 3/2 2 { 
    q4 <af af'> q  q <g g'> q |
    q4 <af af'> q  q <df df'> q |
    q4 <f f'>-> q->  q-> <df df'> q |
    q4 <c c'> q  q <a a'> q |
    q4 <af af'> q  q <eff' eff'> q |
    q4 <df df'> q  q <cf cf'> q |
    q4 <bf bf'> q  q <a a'> q |
  }
  q2 <bf bf'>4 <bff bff'> |
  
  \barNumberCheck 41
  \tuplet 3/2 2 { 
    q4 <af af'> q  q <g g'> q |
    q4 <gf gf'> q  q c' c |
    c4 f, f,  ef'' f, f, |
    df''4 f, f,  f'' f, f, |
  }
  \bar "||"
  \key bf \minor
  \time 4/4
  \set Staff.timeSignatureFraction = 12/8
  \scaleDurations 2/3 {
    c''8 f, f  f, f' f  ef' f, f  f, f' f | 
    df'8 f, f  f, f' f  f' f, f  f, f' f | 
    c'8 f, f  f, f' f  df' f, f  f, f' f |
    d'8 f, f  f, f' f  ef' f, f  f, f' f |
    
    \barNumberCheck 49
    ef'8 f, f  f, f' f  ef' f, ef'  a ef[ f, |
    a'8]  f[ c ef']  f,[ cf ef']  a,[ f ef']
      \alterPositionsH f,[-\slurShapeB ( bf, |
    % Tempo I
    df'8]  bf[ f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef'])  f,[( bf, |
    bf'8]  bf[ f f'])  bf,,[( e, gf']  gf[ df df'])  \alterPositionsA bf,[( f |
    gf'8]  f[ df df'])  bf,[( gf gf']  e[ c c'])  f,,[( bf, |
    df'8]  bf'[f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef'])  \alterPositionsB f,[( bf, |
    
    \barNumberCheck 57
    bf'8]  bf[ f f'])  df,[( bff bff']  gf[ df df'])  df,[( af |
    af'8]  af[ df, df'])  df,[( bff bff']  gf[ df df'])  df,[( af |
    af'8]  af[ df, df'])  df,[( af af'] af[ df, df']) 
      \bar "||"
      \key c \major 
      \alterPositionsC cs,[( fs, |
    a'8]  a[ ds, cs'])  cs,[( fs, a']  a[ ds, ds'])  a,[( e |
    e'8]  e[ a, a'])  a,[( e e']  e[ a, a'])  a,[( d, |
    f']  f[ b, a'])  a,[( d, f']  f[ b, b'])
      \alterPositionsD c,![-\slurShapeA ( c, |
    \key bf \minor
    f'8]  f[ c c'])  c,[( f, f']  f[ c c'])  df,[( c, |
    gf''8]  ef[ df df'])  df,[( f, gf']  ef[ df df'])  c,[( c, |
    f'8]  f[ c c'])  c,[( f, f']  f[ c c'])  \alterPositionsE f,[( cf |
    ef'8]  a,[ f ef'])  f,[( cf ef']  a,[ f ef'])  f,[( bf, |
    df'8]  bf[ f <df' bf'>])  gf,[( bf, df']  bf[ gf <df' bf'>])  g,[( bf, |
    c'8]  bf[ g e'])  gf,[( bf, cf']  a[ gf ef'])
      \alterPositionsF f,[( bf, |
    bf'8]  bf[ f f'])  bf,,[( e, gf']  gf[ df df'])  bf,[( f |
    gf'8]  f[ df df'])  bf,[( gf gf']  e[ c c'])  f,,[( bf, |
    df'8]  bf[ f f'])  ef,[( bf bf']  bf[ f f'])
      \alterPositionsG f,[( bf, |
    bf'8]  bf[ f f'])  f,[( bf, bf']  bf[ f f'])  f,[( bf, |
    df'8]  bf[ f f'])  ef,[( bf bf']  bf[ f f'])  f,[( bf, |
    bf'8]  bf[ f f'])  f,[( bf, bf']  bf[ f f'])  r r |
    r4. r8 f,[( bf, bf']  bf[ f f']) r r |
    r8 f,[( bf, bf']) r4 r8 bf[( f f']) r r |
    <bf,,, bf'>4. r r2. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \partial 8 * 4/3 s8 * 4/3 -\tweak Y-offset -1 \pp 
  s1^\sottoVoce |
  s1 * 5
  s4 s2.\< |
  s2\> s\! |
  
  \barNumberCheck 9
  s1\mf |
  s1\dim |
  s1\p |
  s1\dim |
  s2\pp s\< |
  s1\> <>\! |
  s1\cresc |
  s4 s2.\dim |
  
  \barNumberCheck 17
  s1-\tweak X-offset 0 \pp |
  s1 * 7 |
  
  \barNumberCheck 25
  s1 * 2 |
  % Meno Vivo
  s1\p |
  \tuplet 3/2 { s4 s\< s\! s2\> s4\! } |
  s1 * 3 |
  \tuplet 3/2 { s4 s\< s\! s2\> s4\! } |
  
  \barNumberCheck 33
  s1 * 2 |
  s2 s8 s4.\cresc |
  s1 * 2 |
  s1\dim |
  s1\pp |
  s1 |
  
  \barNumberCheck 41
  s1 * 3 |
  s2 s\cresc |
  s1 |
  s2. s4\cresc |
  s1 |
  s2. s4\cresc |
  
  \barNumberCheck 49
  s1 |
  s4\f s2.\dim |
  s1-\tweak X-offset 0 \pp |
  s1 * 5 |
  
  \barNumberCheck 57
  s1 * 2 
  s1-\tweak X-offset 0 \pp |
  s4 s2.\cresc |
  s1\p |
  s1\cresc |
  s1\mf 
  s1\dim |
  
  \barNumberCheck 65
  s1 |
  s2. s4\dim |
  s1 * 4 |
  s1-\tweak X-offset 0 \pp |
  s1 |
  
  \barNumberCheck 73
  s1 * 2 |
  s4 s2.\ppp |
  s1^\smorz |
  s1 |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempoMarkup
  \time 4/4
  \tempo 4 = 132
  \partial 8 * 4/3 s8 * 4/3
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 2 |
  \tempo "Meno vivo" 4 = 100 
  s1 * 6 |
  
  \barNumberCheck 33
  s1 * 8 |
  
  \barNumberCheck 41
  s1 * 4 |
  \tempo 4 = 104
  s1 |
  \tempo 4 = 108
  s1 |
  \tempo 4 = 112
  s1 |
  \tempo 4 = 116
  s1 |
  
  \barNumberCheck 49
  \tempo 4 = 120
  s1 |
  \tempo 4 = 126
  s1 |
  \tempo "Tempo I" 4 = 132
}

forceBreaks = {
  \partial 8 * 4/3 s8 * 4/3
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  s1 * 5 \break
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

etudeSevenNotes =
\score {
  \header {
    title = \markup { Nº 7 }
    composer = "Alexander Scriabin"
    opus = "Opus 8, No. 7"
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

etudeSevenMidi =
\book {
  \bookOutputName "etude-op8-no07"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \tempi >>
    >>
    \midi {}
  }
}
