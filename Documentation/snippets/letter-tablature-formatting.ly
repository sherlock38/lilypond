% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.13.36
\version "2.13.36"

\header {
%% Translation of GIT committish: 91eeed36c877fe625d957437d22081721c8c6345
  texidoces = "
La tablatura se puede formatear utilizando letras en lugar de números.

"

  doctitlees = "Formateado de tablaturas con letras"

  lsrtags = "staff-notation, fretted-strings"

  texidoc = "
Tablature can be formatted using letters instead of numbers.

"
  doctitle = "Letter tablature formatting"
} % begin verbatim


music = \relative c {
  c4 d e f
  g4 a b c
  d4 e f g
}

<<
  \new Staff {
    \clef "G_8"
    \music
  }
  \new TabStaff \with {
    tablatureFormat = #fret-letter-tablature-format
  }
  {
    \music
  }
>>
