
trumpetMelody = {
	\tag #'midiOnly { 
		\p
	}
	\melodyfifth
	\drumbreakHorns
	\secondLinefifth
	\drumbreakHorns
	\f
	% trumpet solo
	\relative c' {
		r2
		r8 f8~f8 c8 f4\staccato r4
		r8 f8~f8 c8 f4\staccato r4
		r8 f8\staccato r8 es8\staccato r8 d8\staccato r8 c8\staccato
		r8 g8 a8 bes8 c8\staccato r8 r4
	}
	\relative c {
		r8 f8 a8 bes8 c4 c8 a8 
		c8 bes8~bes4 r8 bes8 a8 bes8 
		c8 a8 r8 e8 f4 g4
		f2 r2
	}
	\drumbreakHorns
	\tag #'printOnly { 
		\mp
	}
	\tag #'midiOnly { 
		\pp
	}
	% alto solo
	\secondLinefifth
	\drumbreakHorns
	\tag #'printOnly { 
		\mp
	}
	\tag #'midiOnly { 
		\pp
	}
	% trombone solo
	\secondLinefifth
}
