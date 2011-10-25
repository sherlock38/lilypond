%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.0"

\header {
%% Translation of GIT committish: 40bf2b38d674c43f38058494692d1a0993fad0bd

  texidocfr = "
Les diagrammes de fret peuvent s'orienter de trois manières différentes.
Ils s'aligneront par défaut sur la corde du haut ou le sommet du fret.


"

  doctitlefr = "Orientation des diagrammes de fret"


  lsrtags = "fretted-strings"









%% Translation of GIT committish: 2d548a99cb9dba80f2ff035582009477cd37eceb

  texidoces = "

Los diagramas de posiciones de acordes se pueden orientar de tres
formas.  De manera predeterminada se alinena la cuerda o traste
superior en las distintas alineaciones.


"

  doctitlees = "Modificar la orientación de los trastes"

  texidoc = "
Fret diagrams can be oriented in three ways.  By default the top string
or fret in the different orientations will be aligned.

"
  doctitle = "Changing fret orientations"
} % begin verbatim

\include "predefined-guitar-fretboards.ly"

<<
  \chords {
    c1
    c1
    c1
  }
  \new FretBoards {
    \chordmode {
      c1
      \override FretBoard #'(fret-diagram-details orientation) =
        #'landscape
      c1
      \override FretBoard #'(fret-diagram-details orientation) =
        #'opposing-landscape
      c1
    }
  }
  \new Voice {
    c'1
    c'1
    c'
  }
>>

