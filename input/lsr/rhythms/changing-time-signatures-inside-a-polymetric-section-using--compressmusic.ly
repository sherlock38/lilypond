%%  Do not edit this file; it is auto-generated from LSR!
\version "2.11.23"

\header { texidoc = "
The measureLength variable, together with measurePosition, determines
when a barline is needed. However, when using \\compressMusic, the
scaling of durations makes it difficult to change time signatures
without making a mess of it. 

Therefore, measureLength has to be set manually, using the
ly:make-moment callback. The second argument has to be the same as the
second argument of \\compressMusic.
" }

\layout {
 \context { \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
 }
 \context {
   \Staff
   \consists "Timing_translator"
   \consists "Default_bar_line_engraver"
 }
}

<<
 \new Staff {
   \compressMusic #'( 8 . 5 ) {
     \time 6/8
     \set Timing.measureLength = #(ly:make-moment 3 5)
     b8 b b b b b
     \time 2/4
     \set Timing.measureLength = #(ly:make-moment 2 5)
     b4 b
     }
   }
 \new Staff {
   \clef bass
   \time 2/4
   c2 d e f  }
 >>

