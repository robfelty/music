
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
	\tag #'midiOnly { 
		\p
	}
	\melodybes
	\drumbreakHorns
	\secondLinebes
	\drumbreakHorns
	% trumpet solo
	\tag #'printOnly { 
		\mp
	}
	\tag #'midiOnly { 
		\pp
	}
	\secondLinebes
	\drumbreakHorns
	\f
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
	\tag #'printOnly { 
		\mp
	}
	\tag #'midiOnly { 
		\pp
	}
	% trombone solo
	\secondLinebes
}
