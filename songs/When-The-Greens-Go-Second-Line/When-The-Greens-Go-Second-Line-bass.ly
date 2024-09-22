\version "2.24.3"
\include "global.ly"
\header {
	subtitle = "Bass drums"
}

\include "../../lib/drumscore.ly"
\include "../../lib/drumline.ly"
\include "swing.ly"
\include "marks.ly"
\include "melody.ly"
\include "bass.ly"

\score {
	\removeWithTag #'midiOnly
	\new DrumStaff = "Bass" <<
		\set Staff.instrumentName = "Bass drums"
		\set Staff.shortInstrumentName = "BD"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table bassConfig)
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
		\new DrumVoice {
			\voiceOne
				\marks
		}
		\new DrumVoice { 
			\voiceOne \topbass 
		}
		\new DrumVoice { \voiceOne \secondbass }
		\new DrumVoice { \voiceOne \thirdbass }
		\new DrumVoice { \voiceOne \bottombass }
		\global 
		>> % end bass drum staff
}
