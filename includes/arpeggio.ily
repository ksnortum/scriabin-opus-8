%
% A scheme function that unpacks a rolled chord into displaced notes with
% adjusted lengths such that it will render nicely in MIDI.
%
\version "2.24.0"

% Returns: A skip followed by the given note, with the skip scaled by n/d of
% the note's length, and the note scaled by (d-n)/d of its original length.
#(define shiftedNote (lambda (num denom note)
    (if (= num 0)
        ; First note is unchanged
        note

        ; Construct a skip + the note, both appropriately scaled
        (let ((dLog (ly:duration-log (ly:music-property note 'duration)))
              (dDot (ly:duration-dot-count (ly:music-property note 'duration)))
              (dFac (ly:duration-factor (ly:music-property note 'duration)))
              (scaledNote (ly:music-deep-copy note)))
            (set! (ly:music-property scaledNote 'duration)
                  (ly:make-duration dLog dDot (*
                    (/ (car dFac) (cdr dFac))
                    (/ (- denom num) denom))))
            (make-music 'SequentialMusic
                'elements (list
                    (make-music 'SkipEvent
                        'duration (ly:make-duration dLog dDot
                            (* (/ (car dFac) (cdr dFac)) (/ num denom))))
                    scaledNote
                )
            )
        )
    )
))

% Generate a rolled chord from the given notes. Each subsequent note is shifted
% by num/denom.
#(define genArpeggio (lambda (num denom notes)
    (if (pair? notes) ; Test for empty list
        ; Recursive case
        (if (null? (ly:music-property (car notes) 'duration))
            ; Skip objects that have no duration
            (genArpeggio (+ 1 num) denom (cdr notes))

            ; Shift notes
            (cons
                (shiftedNote num denom (car notes))
                (genArpeggio (+ 1 num) denom (cdr notes))
            )
        )

        ; Base case
        '()
    )
))

% Params:
%   chord = The chord to arpeggiate.
%   denom = The fraction of the chord's length to use as a rest for each note
%       of the arpeggiated chord. This must not be less than the number of
%       notes in the chord. If it's greater than the number of chord notes, the
%       top note will be held longer.
midiArpeggio = #(define-music-function (denom chord) (number? ly:music?)
    (let ((chordTones (ly:music-property chord 'elements)))
        (make-music 'SimultaneousMusic
            'elements (genArpeggio 0 denom chordTones)
        )
    )
)

%% example:
% \midiArpeggio 24 <c e g c>4

getMidiArpeggios =
#(define-music-function (val mus) (number? ly:music?)
  (map-some-music
    (lambda (m)
      (and (music-is-of-type? m 'event-chord)
           (any
             (lambda (elt)
               (eq? (ly:music-property elt 'name) 'ArpeggioEvent))
             (ly:music-property m 'elements))
           (midiArpeggio val  m)))
    mus))

%% example:

% \score {
%   <<
%     \getMidiArpeggios 24
%     \new Staff \relative c' {
%       <c e g c>4\arpeggio
%       r2.
%       |
%       <c e g c>2
%       <c e g c>\arpeggio
%     }
%   >>
%   \midi {
%     \tempo 4 = 120
%   }
% }
