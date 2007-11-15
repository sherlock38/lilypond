\version "2.11.23"

\header{ texidoc = "
@unnumbered Introduction

This document shows examples from the
@uref{http://lsr@/.dsi@/.unimi@/.it,LilyPond Snippet Repository}.

In the web version of this document, you can click on the file name
or figure for each example to see the corresponding input file.

@ifhtml
Also available as a @uref{collated-files.pdf,PDF}
@end ifhtml
"}

% make sure .png  is generated.
\markup{ "This document is for LilyPond version" #(ly:export(lilypond-version)) }

