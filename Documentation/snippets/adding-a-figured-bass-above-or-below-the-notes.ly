%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "chords, ancient-notation, contexts-and-engravers"

%% Translation of GIT committish: 91eeed36c877fe625d957437d22081721c8c6345
  texidoces = "

Al escribir un bajo cifrado, podemos situar las cifras encima o debajo
de las notas del bajo, mediante la definición de la propiedad
@code{BassFigureAlignmentPositioning #'direction} (exclusivamente
dentro de un contexto @code{Staff}). Se puede elegir entre @code{#UP}
(o @code{#1}, arriba), @code{#CENTER} (o @code{#0}, centrado) y
@code{#DOWN} (o @code{#-1}, abajo).

Esta propiedad se puede cambiar tantas veces como queramos.  Utilice
@code{\\once \\override} si no quiere que la sobreescritura se aplique
a toda la partitura.

"
  doctitlees = "Añadir un bajo cifrado encima o debajo de las notas"


%% Translation of GIT committish: 05624d5147843d2fcbd6e4e126f1fd43142ac6e5
  doctitlefr = "Ajout d'une basse chiffrée au-dessus ou au-dessous des notes"

  texidoc = "
When writing a figured bass, you can place the figures above or below
the bass notes, by defining the @code{BassFigureAlignmentPositioning
#'direction} property (exclusively in a @code{Staff} context). Choices
are @code{#UP} (or @code{#1}), @code{#CENTER} (or @code{#0}) and
@code{#DOWN} (or @code{#-1}).

This property can be changed as many times as you wish. Use
@code{\\once \\override} if you don't want the override to apply to the
whole score.

"
  doctitle = "Adding a figured bass above or below the notes"
} % begin verbatim

bass = {
  \clef bass
  g4 b, c d
  e d8 c d2
}
continuo = \figuremode {
  <_>4 <6>8
  \once \override Staff.BassFigureAlignmentPositioning #'direction = #CENTER
  <5/>8 <_>4
  \override Staff.BassFigureAlignmentPositioning #'direction = #UP
  <_+>4 <6>
  \set Staff.useBassFigureExtenders = ##t
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  <4>4. <4>8 <_+>4
}
\score {
  <<
    \new Staff = bassStaff \bass
    \context Staff = bassStaff \continuo
  >>
}


