\version "2.24.3"
\include "global.ly"
\header {
	subtitle = "Tenors drum"
}

\include "../../lib/drumscore.ly"
\include "../../lib/drumline.ly"
\include "swing.ly"
\include "marks.ly"
\include "melody.ly"
\include "tenors.ly"

\score {
	\removeWithTag #'midiOnly
	\new DrumStaff = "TenorsMelody" <<
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
		\set DrumStaff.drumStyleTable = #(alist->hash-table tenorConfig)
		\global 
		\new DrumVoice {
			\voiceOne
				\marks
		}
		\new DrumVoice { 
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
			\voiceOne \tenors 
		}
	>>
}
