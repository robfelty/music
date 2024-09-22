
tromboneMelody = 
<<
  \context Voice = voiceA 
		\marks
  \context Voice = voiceC {
		\tag #'midiOnly { 
			\p
		}
		\melody
		\drumbreakHorns
		\secondLine
		\drumbreakHorns
		\tag #'printOnly { 
			\mp
		}
		\tag #'midiOnly { 
			\pp
		}
		\secondLine
		\drumbreakHorns
		\tag #'printOnly { 
			\mp
		}
		\tag #'midiOnly { 
			\pp
		}
		\secondLine
		\drumbreakHorns
		\f
		r2
		% solo
		f8. f16 r8 a8 c'8 bes8 c'4
		f8. f16 r8 a8 c'8 bes8 a4
		f8. f16 r8 e8 d8 c8   d8 e8
		f8 g8 f8 e8 f8\staccato r8 r4
		bes8 c'8 ~ c'8 bes8 c'4 a8 bes8
		c'8 bes8 ~ bes4 r2
		\tuplet 3/2 { c'4 bes4 g4 } \tuplet 3/2 { bes4 g4 e4 }
		f4 
	}
>>
