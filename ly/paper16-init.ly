% paper16-init.ly

\version "1.5.68"

paperSixteen = \paper {
	staffheight = 16.0\pt
	\stylesheet #(make-font-list 'paper16)

	\include "params-init.ly"
}

\paper {\paperSixteen }
