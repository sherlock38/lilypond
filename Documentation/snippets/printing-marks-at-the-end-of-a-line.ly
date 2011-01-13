%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "text"

%% Translation of GIT committish: a874fda3641c9e02f61be5c41b215b8304b8ed00

  texidoces = "

Se pueden imprimir marcas al final de la línea actual, en vez de al
principio de la línea siguiente.  En estos casos, puede ser preferible
alinear el borde derecho de la marca con la línea divisoria.

"
  doctitlees = "Imprimir marcas al final de una línea"
%% Translation of GIT committish: 4ab2514496ac3d88a9f3121a76f890c97cedcf4e
  texidocfr = "
Les indications textuelles peuvent être imprimées à la fin d'une ligne
plutôt qu'en tête de la suivante.  Pensez alors à aligner l'extrémité
droite de l'indication sur la barre de mesure.

"
  doctitlefr = "Indication texuelle en fin de ligne"


  texidoc = "
Marks can be printed at the end of the current line, instead of the
beginning of the following line.  In such cases, it might be preferable
to align the right end of the mark with the bar line.

"
  doctitle = "Printing marks at the end of a line"
} % begin verbatim

\relative c'' {
  g2 c
  d,2 a'
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
  \break
  g2 b,
  c1 \bar "||"
}

