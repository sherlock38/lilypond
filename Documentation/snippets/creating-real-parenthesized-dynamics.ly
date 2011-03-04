%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks, text"

%% Translation of GIT committish: 91eeed36c877fe625d957437d22081721c8c6345
  texidoces = "
Aunque la manera más fácil de añadir paréntesis a una indicación
de dinámica es utilizar un bloque @code{\\markup}, este método
tiene un inconveniente: los objetos que se crean se comportarán
como elementos de marcado de texto y no como indicaciones
dinámicas.

Sin embargo, es posible crear un objeto similar utilizando el código
de Scheme equivalente (como se explica en la Referencia de la
notación), en combinación con la función
@code{make-dynamic-script}. De esta forma, el elemento de marcado se
tratará como una indicación dinámica, y por tanto seguirá siendo
compatible con instrucciones como @code{\\dynamicUp} o
@code{\\dynamicDown}.

"
  doctitlees = "Crear indicaciones dinámicas \"verdaderas\" entre paréntesis"

  texidoc = "
Although the easiest way to add parentheses to a dynamic mark is to use
a @code{\\markup} block, this method has a downside: the created
objects will behave like text markups, and not like dynamics.

However, it is possible to create a similar object using the equivalent
Scheme code (as described in the Notation Reference), combined with the
@code{make-dynamic-script} function. This way, the markup will be
regarded as a dynamic, and therefore will remain compatible with
commands such as @code{\\dynamicUp} or @code{\\dynamicDown}.



"
  doctitle = "Creating \"real\" parenthesized dynamics"
} % begin verbatim

parenF = #(make-dynamic-script (markup #:line (#:normal-text #:italic
           #:fontsize 2 "(" #:hspace -0.8 #:dynamic "f" #:normal-text
           #:italic #:fontsize 2 ")")))

\relative c'' {
  c4\parenF c c \dynamicUp c\parenF
}

