
tenorDrumBreak = {
	\drummode {
		\ff
		\repeat unfold 2 { \tuplet 6/4 { one16_"R"^> spock16_"L" spock16_"L" spock16_"R" spock16_"R" two16_"L"^> } one4_"R"^> }
		\repeat unfold 2 { \tuplet 6/4 { one16_"R"^> two16_"L" three16_"R" three16_"R" four16_"L" four16_"L" } } one4_"R"^> r4
	}
}

tenorSecondLine = {
	\drummode {
		\tag #'printOnly { 
			\mf
		}
		\tag #'midiOnly { 
			\fffff
		}
		\repeat percent 2 { two16 two16 one16^> two16 two16 three16^> two16 two16 one8^>_"R" two8_"L" three8_"R" four8_"L" }
		\repeat unfold 4 { one16^> four16 three16 four16 three16 two16^> } one2^>
		\repeat unfold 2 { \tuplet 6/4 { \repeat unfold 6 { one16 } } three8 four8 }
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
