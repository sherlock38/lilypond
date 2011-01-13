%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks, simultaneous-notes"

  texidoc = "
To connect chords with glissando lines, attach a second glissando to a
hidden voice.

"
  doctitle = "Double glissando"
} % begin verbatim

\relative c {
  \clef bass
  <<
    {
      % new voice ( = \voiceOne), hidden
      \hideNotes
      % attach glissando to note heads
      e2\glissando g
    }
    \\
    {
      % original voice with chords rearranged so that
      % glissando is attached to a & c
      <e a,>2\glissando <g c,>
    }
  >>
}

