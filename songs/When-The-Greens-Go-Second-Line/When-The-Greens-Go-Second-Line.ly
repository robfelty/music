\version "2.24.3"
global = {
\overrideTimeSignatureSettings
        4/4        % timeSignatureFraction
        1/4        % baseMomentFraction
        #'(1 1 1 1)    % beatStructure
        #'()       % beamExceptions
  \numericTimeSignature
}
\header{
	instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Full Score"}
	title = "When The Greens Go Second Line"
	composer = "Traditional "
	arranger = "arr. Robert Felty"
	tagline = \markup {Copyright 2024  }
}

\layout {
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
    \remove Rest_engraver
    \consists Completion_rest_engraver
  }
}

\include "../../lib/drumscore.ly"
\include "../../lib/drumline.ly"
\include "swing.ly"

\layout{
	\context {
		\DrumStaff
		\accepts Unison
	}
}
marks = {
  \key f \major
  
  \tempo 4 = 110 
  \time 4/4 
	\repeat unfold 16 { s1 }
	\mark \default
	\section
	\sectionLabel "Second Line (double time, swung 16s)"
	\repeat unfold 2 { s1 }
	\repeat unfold 8 { s1 }
	\mark \default
}

melody = {
  r4 f4 a4 bes4 
	c'1 
  r4 f4 a4 bes4 
	c'1 
  r4 f4 a4 bes4 
  c'2 a2 
	f2 a2 
	g1 
	r2 a4 g4 
	f2. f4
	a2 c'2
	c'4 bes4~bes2
	r4 bes4 a4 bes4
	c'2 a2
	f2 g2 
	f2 r2
}
secondLine = {
  r8 f8 a8 bes8 
	c'2 
  r8 f8 a8 bes8 
	c'2 
  r8 f8 a8 bes8 
  c'4 a4 
	f4 a4 
	g2 
	r4 a8 g8 
	f4. f8
	a4 c'4
	c'8 bes8~bes4
	r8 bes8 a8 bes8
	c'4 a4
	f4 g4 
	f2 r2
}
drumbreakHorns = {
	\override MultiMeasureRest.expand-limit = #2
	r1 
	r2
}
\include "snare.ly"
\include "tenors.ly"
\include "bass.ly"
\include "trombone.ly"
\include "alto.ly"
\include "trumpet.ly"

\score {
	\removeWithTag #'midiOnly
	\new StaffGroup
  <<
 		\new Staff = "TrumpetMelody" <<
 			\set Score.skipBars = ##t
 			\set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers
 			%\set Staff.instrumentName = \markup {"Trompete" \line "Melodie" }
 			\set Staff.instrumentName = "Trompete"
 			\set Staff.shortInstrumentName = "Tpt."
			\set Staff.midiInstrument = "trumpet"
			\context Voice = voiceA {
			\transpose f g {
				\marks
			}
		}
		\context Voice = voiceB {
			\tag #'printOnly { 
				\transpose f g' {
					\trumpetMelody
				}
			}
			\tag #'midiOnly { 
				\transpose f g'' {
					\trumpetMelody
				}
			}
	}
 		>>
 		\new Staff = "AltoMelody" <<
 			\set Staff.instrumentName = "Alto"
 			\set Staff.shortInstrumentName = "Alt."
			\set Staff.midiInstrument = "alto sax"
			\context Voice = voiceA 
			\transpose f d {
				\marks
			}
			\context Voice = voiceC {
				\transpose f d' {
				\altoMelody
			}
		}
 		>>
 		\new Staff = "TromboneMelody" <<
 			\clef bass
 			\set Staff.instrumentName = "Posaune"
 			\set Staff.shortInstrumentName = "Ps."
			\set Staff.midiInstrument = "trombone"
 			\tromboneMelody
 		>>
	\new DrumStaff = "Snare" <<
		\set Staff.instrumentName = "Snare"
		\set Staff.shortInstrumentName = "SD"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table snareConfig)
		\new DrumVoice { 
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
			\voiceOne \snare 
		}
		\global 
  >> % end snare staff
	\new DrumStaff = "Tenors" <<
		\set Staff.instrumentName = "Quads"
		\set Staff.shortInstrumentName = "QD"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table tenorConfig)
		\new DrumVoice { 
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
			\voiceOne \tenors 
		}
		\global 
  >> % end snare staff
	\new DrumStaff = "Bass" <<
		\set Staff.instrumentName = "Bass drums"
		\set Staff.midiInstrument = "synth drum"
		\set Staff.shortInstrumentName = "BD"
		\set DrumStaff.drumStyleTable = #(alist->hash-table bassConfig)
		\new DrumVoice {
			\voiceOne
			% we use this silent voice just to force line breaks every 4 bars
			%\repeat unfold 10 {
				%s1 \noBreak s1 \noBreak
				%s1 \noBreak s1 \break
			%}
		}
		\new DrumVoice { 
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
			\voiceOne \topbass 
		}
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \secondbass }
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \thirdbass }
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \bottombass }
		\global 
		>> % end bass drum staff
  >> % end staff group
}
% Now the midi score, with a few small differences, namely
% remove parts tagged with printOnly
% Everything needs to be in concert C
% transpose the trumpet and alto up an octave
% unfold all repeats
\score {
	\removeWithTag #'printOnly
	\unfoldRepeats
	\new StaffGroup
  <<
 		\new Staff = "TrumpetMelody" <<
			\set Staff.midiInstrument = "trumpet"
			\transpose f f' {
				\trumpetMelody
			}
 		>>
 		\new Staff = "AltoMelody" <<
			\set Staff.midiInstrument = "alto sax"
			\transpose f f' {
				\altoMelody
			}
 		>>
 		\new Staff = "TromboneMelody" <<
 			\clef bass
			\set Staff.midiInstrument = "trombone"
 			\tromboneMelody
 		>>
	\new DrumStaff = "Snare" <<
		\set Staff.instrumentName = "Snare"
		\set Staff.shortInstrumentName = "SD"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table snareConfig)
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
		\new DrumVoice { 
			\voiceOne \snare 
		}
		\global 
  >> % end snare staff
	\new DrumStaff = "Tenors" <<
		\set Staff.instrumentName = "Quads"
		\set Staff.shortInstrumentName = "Qu"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table tenorConfig)
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
		\new DrumVoice { 
			\voiceOne \tenors 
		}
		\global 
  >> % end snare staff
	\new DrumStaff = "Bass" <<
		\set Staff.instrumentName = "Bass drums"
		\set Staff.shortInstrumentName = "BD"
		\set Staff.midiInstrument = "synth drum"
		\set DrumStaff.drumStyleTable = #(alist->hash-table bassConfig)
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
		\new DrumVoice {
			\voiceOne
		}
		\new DrumVoice { 
			\voiceOne \topbass 
		}
		\new DrumVoice { \voiceOne \secondbass }
		\new DrumVoice { \voiceOne \thirdbass }
		\new DrumVoice { \voiceOne \bottombass }
		\global 
		>> % end bass drum staff
  >> % end staff group
  \midi {}
}
