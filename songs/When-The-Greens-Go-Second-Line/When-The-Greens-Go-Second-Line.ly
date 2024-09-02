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

snareSecondLine = {
	\drummode{
		\repeat unfold 2 { sn8 \buzz buzz16^> \buzz buzz16 sn16 sn16^> sn16 sn16 sn8^>_"R" sn8_"L" sn8_"R" rimshot8_"R"^> }
		\repeat unfold 4 { \buzz buzz16^> \buzz buzz16 sn16 sn16^> sn16 sn16 } sn2^>
		\repeat unfold 2 { \tuplet 6/4 { \repeat unfold 6 { sn16 } } sn8 \lflam8 }
		\tuplet 3/2 { sn16 sn16 sn16 } sn8 \tuplet 6/4 { \repeat unfold 6 { sn16 } } sn2
		\repeat unfold 4 { \tuplet 3/2 { sn16 sn16 sn16 } sn8 } 
		\tuplet 6/4 { \repeat unfold 6 { sn16 } } sn8 \lflam8 \rflam4 r4
	}
}
snareDrumBreak = {
	\drummode {
		\repeat unfold 2 { \tuplet 6/4 { sn16_"R"^> sn16_"L" sn16_"L" sn16_"R" sn16_"R" sn16_"L"^> } sn4_"R"^> }
		\repeat unfold 2 { \tuplet 6/4 { sn16_"R"^> sn16_"L" sn16_"R" sn16_"R" sn16_"L" sn16_"L" } } sn4_"R"^> r4
	}
}
snare = {
	\drummode {
		s1
		\repeat unfold 2 { 
			\repeat unfold 2 { sn4 \buzz buzz16^>\> \repeat unfold 3 { \buzz buzz16 }\! } 
			sn4 r4 r2 
		}
		\repeat unfold 2 { 
			\repeat unfold 2 { sn4 \buzz buzz16^>\> \repeat unfold 3 { \buzz buzz16 }\! } 
		}
		\repeat unfold 2 { sn4 \buzz buzz16^>\> \repeat unfold 3 { \buzz buzz16 }\! } 
		sn4 r4 r2
		\buzz buzz16\< \repeat unfold 7 { \buzz buzz16 } sn2^>\!
		r4 \rflam4 r4 \rflam4
		r4 \rflam4 r4 \lflam4
		\rflam4 r4 r2
		\repeat unfold 2 { 
			\repeat unfold 2 { sn4 \buzz sn16^>\> \repeat unfold 3 { \buzz sn16 }\! } 
		}
		\< \repeat unfold 8 { \buzz sn16 } sn2\!
		% drum break
		\snareDrumBreak
		% second line
		\tag #'printOnly { 
			\snareSecondLine
		}
		\tag #'midiOnly { 
			\tripletFeel 16 {
				\snareSecondLine
			}
		}
		% drum break
		\snareDrumBreak
		% second line trumpet solo
		\tag #'printOnly { 
			\snareSecondLine
		}
		\tag #'midiOnly { 
			\tripletFeel 16 {
				\snareSecondLine
			}
		}
		% drum break
		\snareDrumBreak
		% second line alto solo
		\tag #'printOnly { 
			\snareSecondLine
		}
		\tag #'midiOnly { 
			\tripletFeel 16 {
				\snareSecondLine
			}
		}
		% drum break
		\snareDrumBreak
		% second line trombone solo
		\tag #'printOnly { 
			\snareSecondLine
		}
		\tag #'midiOnly { 
			\tripletFeel 16 {
				\snareSecondLine
			}
		}
	}

}

tenorDrumBreak = {
	\drummode {
		\repeat unfold 2 { \tuplet 6/4 { one16_"R"^> spock16_"L" spock16_"L" spock16_"R" spock16_"R" two16_"L"^> } one4_"R"^> }
		\repeat unfold 2 { \tuplet 6/4 { one16_"R"^> two16_"L" three16_"R" three16_"R" four16_"L" four16_"L" } } one4_"R"^> r4
	}
}

tenorSecondLine = {
	\drummode {
		\repeat percent 2 { two16 two16 one16^> two16 two16 three16^> two16 two16 one8^>_"R" two8_"L" three8_"R" four8_"L" }
		\repeat unfold 4 { one16^> four16 three16 four16 three16 two16^> } one2^>
		\repeat unfold 2 { \tuplet 6/4 { \repeat unfold 6 { one16 } } two8 three8 }
		\tuplet 3/2 { spock16 spock16 spock16 } spock8 \tuplet 6/4 { one16 two16 three16 four16 three16 two16  } one2
		{ \tuplet 3/2 { one16 one16 one16 } one8 } { \tuplet 3/2 { two16 two16 two16 } two8 } 
		{ \tuplet 3/2 { three16 three16 three16 } three8 } { \tuplet 3/2 { four16 four16 four16 } four8 } 
		\tuplet 6/4 { one16 two16 three16 four16 three16 two16  } one8 < three four>8_\markup { \center-column { L \line { R } } } < three four >2_\markup { \center-column { R \line { L } } }
	}
}

tenors = {
	\drummode {
		s1
		\repeat unfold 2 { 
			\repeat unfold 2 { four4 \buzz four16^>\> \repeat unfold 3 { \buzz four16 }\! } 
			four4 r4 r2 
		}
		\repeat unfold 2 { 
			\repeat unfold 2 { four4 \buzz four16^>\> \repeat unfold 3 { \buzz four16 }\! } 
		}
		\repeat unfold 2 { four4 \buzz four16^>\> \repeat unfold 3 { \buzz four16 }\! } 
		four4 r4 r2
		\buzz four16\< \repeat unfold 7 { \buzz four16 } four2^>\!
		r4 two4_"L" r4 two4_"L"
		r4 two4_"L" r4 two4_"L" 
		one4_"R" r4 r2
		\repeat unfold 2 { 
			\repeat unfold 2 { four4 \buzz four16^>\> \repeat unfold 3 { \buzz four16 }\! } 
		}
		\< \repeat unfold 8 { \buzz four16 } four2\!
		\repeat unfold 4 {
			% drum break
			\tenorDrumBreak
			% secondline
			\tag #'midiOnly { 
				\tripletFeel 16 {
					\tenorSecondLine
				}
			}
			\tag #'printOnly { 
				\tenorSecondLine
			}
		}
	}

}

topbassDrumBreak = {
	\drummode {
		s1
		oneb8 s8 s4 s2
	}
}
topbassSecondLine = {
	\drummode {
		s2 s8 oneb8 s4
		s2 s8 oneb8 s4
		s1
		s1
		oneb8 s8 s4 s4 s8 oneb8
		s1
		s8 oneb8 s4 s8 oneb8 s4 
		s8 oneb8 s4 oneb2
	}
}

topbass = {
	\drummode {
		\repeat unfold 16 { s1 }
		\repeat unfold 4 {
			% drum break
			\topbassDrumBreak

			%second line
			\tag #'midiOnly { 
				\tripletFeel 16 {
					\topbassSecondLine
				}
			}
			\tag #'printOnly { 
				\topbassSecondLine
			}
		}
	}
}
secondbass = {
	\drummode {
		\repeat unfold 16 { s1 }
		\repeat unfold 4 {
			% drum break
			s1
			s8 twob s4 s2
			% second line

			s2 s4 twob8 s8
			s2 s4 twob8 s8
			s1
			s1
			s8 twob8 s4 s4 twob8 s8
			s1
			s4 twob4 s4 twob4
			s4 twob4 twob2
		}
	}
}
thirdbass = {
	\drummode {
		\repeat unfold 16 { s1 }

		\repeat unfold 4 {
			% drum break
			s1
			s4 threeb8 s8 s2

			%second line
			s2 s4. threeb8
			s2 s4. threeb8
			s1
			s4 s8 threeb8 s2
			s4 threeb8 s8 s8 threeb8 s4
			s1
			s4 s8 threeb8 s4 s8 threeb8
			s4 s8 threeb8 threeb2
		}

	}
}
bottombass = {
	\drummode {
		s1
		\repeat unfold 2 { fourb2 fourb2 
			fourb1
		}
		fourb2 fourb2
		fourb2 fourb2
		fourb2 fourb2
		fourb1
		fourb1
		fourb2 fourb2
		fourb1
		fourb1
		fourb2 fourb2
		fourb2 fourb2
		fourb2 fourb2

		\repeat unfold 4 {
			% drum break
			\tag #'printOnly {
				\new Unison {
					fourb8. fourb16 r4 fourb8. fourb16 r4
				} 
			}
			\tag #'midiOnly {
					fourb8. fourb16 r4 fourb8. fourb16 r4
			}
			s4. fourb8 fourb4 r4

			% second line
			r8 fourb8 r16 fourb8. fourb8 s8 s4
			r8 fourb8 r16 fourb8. fourb8 s8 s4
			fourb8. fourb16 r4 fourb8. fourb16 r4
			fourb8. fourb16 r8 s8 fourb2
			s4 s8 fourb8 fourb8 s8 s4
			r8 fourb8 r16 fourb8. fourb2
			fourb8 s8 s4 fourb8 s8 s4 
			fourb8 s8 s4 fourb2
		}

	}
}




tromboneMelody = 
<<
  \context Voice = voiceA 
		\marks
  \context Voice = voiceC {
		\melody
		\drumbreakHorns
		\secondLine
		\drumbreakHorns
		\secondLine
		\drumbreakHorns
		\secondLine
		\drumbreakHorns
		r2
		% solo
		f8. f16 r8 a8 c'8 bes8 c'4
		f8. f16 r8 a8 c'8 bes8 a4
		f8. f16 r8 e8 d8 c8   d8 e8
		f8 g8 f8 e8 f8\staccato r8 r4
		bes8 c'8 r8 bes8 c'4 a8 bes8
		c'8 bes8 ~ bes4 r2
		\tuplet 3/2 { c'4 bes4 g4 } \tuplet 3/2 { bes4 g4 e4 }
		f4 
	}
>>
altoSolo = {
	r2
	c'16 d'16 f'16 c'16 d'16 f'16 c'16 d'16 f'16 d'16 c'16 bes16 a8 g8
	f'16 d'16 c'16 bes16 d'16 c'16 bes16 g16 r16 f16 r16 g16 a8 bes8 
	\tuplet 3/2 { c'4 c''4 bes'4 } \tuplet 3/2 { a'4 g'4 f'4 }
	g'16 c''16 r16 c''16 r16 bes'16 r16 c''16 r16 c''16 r16 bes'16 a'8 g'8
	c'8 c''8 ~ c''8 a'8 g'8 f'8 e'8 d'8
	c'8 bes8 r4 r2
	r8 c''16 a'16 c''16 a'16 g'8 f'4 g'4
	f'2
}

altoMelody = {
	\melody
	\drumbreakHorns
	\secondLine
	\drumbreakHorns
	% trumpet solo
	\secondLine
	\drumbreakHorns
	% alto solo
	\sectionLabel "alto solo"
	\tag #'midiOnly { 
		\tripletFeel 16 {
			\altoSolo
		}
	}
	\tag #'printOnly { 
			\altoSolo
	}
	r2
	\drumbreakHorns
	% trombone solo
	\secondLine
}



trumpetMelody = {
	\melody
	\drumbreakHorns
	\secondLine
	\drumbreakHorns
	% trumpet solo
	\relative c' {
		r2
		r8 f8~f8 c8 f4\staccato r4
		r8 f8~f8 c8 f4\staccato r4
		r8 f8\staccato r8 e8\staccato r8 d8\staccato r8 c8\staccato
		r8 g8 a8 bes8 c8\staccato r8 r4
	}
	\relative c {
		r8 f8 a8 bes8 c4 c8 a8 
		c8 bes8~bes4 r8 bes8 a8 bes8 
		c8 a8 r8 e8 f4 g4
		f2 r2
	}
	\drumbreakHorns
	% alto solo
	\secondLine
	\drumbreakHorns
	% trombone solo
	\secondLine
}

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
		\transpose f g' {
 			\trumpetMelody
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
\score {
	\removeWithTag #'printOnly
	\new StaffGroup
  <<
 		\new Staff = "TrumpetMelody" <<
			\set Staff.midiInstrument = "trumpet"
 			\trumpetMelody
 		>>
 		\new Staff = "AltoMelody" <<
			\set Staff.midiInstrument = "alto sax"
 			\altoMelody
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
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
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
		\set DrumStaff.drumPitchTable = #(alist->hash-table midiDrumPitches)
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
  \midi {}
}
