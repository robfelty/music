\version "2.24.3"
\include "global.ly"
\header {
	subtitle = "Trumpet"
}

\include "swing.ly"
\include "marks.ly"
\include "melody.ly"
\include "trumpet.ly"

\score {
	\removeWithTag #'midiOnly
	\new Staff = "TrumpetMelody" <<
		\global 
		\context Voice = voiceA {
			\transpose f g {
				\marks
			}
		}
		\context Voice = voiceB {
			\transpose f g' {
				\trumpetMelody
			}
		}
	>>
}
