\version "2.24.3"
\include "global.ly"
\header {
	subtitle = "Trombone"
}

\include "swing.ly"
\include "marks.ly"
\include "melody.ly"
\include "trombone.ly"

\score {
	\removeWithTag #'midiOnly
	\new Staff = "tromboneMelody" <<
		\clef bass \global 
		\context Voice = voiceA {
			\marks
		}
		\context Voice = voiceB {
			\tromboneMelody
		}
	>>
}
