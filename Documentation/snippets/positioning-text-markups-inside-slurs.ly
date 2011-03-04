%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks, editorial-annotations, tweaks-and-overrides"

%% Translation of GIT committish: 91eeed36c877fe625d957437d22081721c8c6345
  texidoces = "

Los elementos de marcado de texto deben tener la propiedad
@code{outside-staff-priority} establecida al valor falso para que se
impriman por dentro de las ligaduras de expresión.

"
  doctitlees = "Situar los elementos de marcado de texto por dentro de las ligaduras"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Textbeschriftung kann innerhalb von Bögen gesetzt werden, wenn die
@code{outside-staff-priority}-Eigenschaft auf falsch gesetzt wird.

"
  doctitlede = "Textbeschriftung innerhalb von Bögen positionieren"

%% Translation of GIT committish: 217cd2b9de6e783f2a5c8a42be9c70a82195ad20
  texidocfr = "
Lorsqu'il vous faut inscrire une annotation à l'intérieur d'une liaison,
la propriété @code{outside-staff-priority} doît être désactivée.

"
  doctitlefr = "Positionnement d'une annotation à l'intérieur d'une liaison"


  texidoc = "
Text markups need to have the @code{outside-staff-priority} property
set to false in order to be printed inside slurs.

"
  doctitle = "Positioning text markups inside slurs"
} % begin verbatim

\relative c'' {
  \override TextScript #'avoid-slur = #'inside
  \override TextScript #'outside-staff-priority = ##f
  c2(^\markup { \halign #-10 \natural } d4.) c8
}


