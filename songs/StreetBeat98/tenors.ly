\version "2.24.0"
	\drummode {
		\stemUp
		one16 \repeat unfold 3 { sn16:32 } sn4 one16^> two16 three16 four16 one16 one16 one8
		one16^> four8^> four16^> r16  four16^> one8^> r2
		one16 \repeat unfold 3 { sn16:32 } sn4 one16^> two16 three16 four16 three16 two16 one16 two16 three16 four16 three16 two16 one4 r2
		% bar 5
		r1
		r1
		r1
		r2 four16_"L" three16_"R" two16_"L" two16_"L" one16_"R" one16_"L" r8
		% bar9
		r1
		r1
		r1
		\buzz one2~ one16_"R" one16_"R" two16_"L" two16_"L" three16_"R" three16_"R" four16_"L" four16_"L"
		% bar 13
		four8._"L"  two16_"R" four8_"L" three8_"R" four8_"L" one8_"R"  < four one >4
		four8._"L"  two16_"R" four8_"L" three8_"R" four8_"L" one8_"R"  < four one >16 one16 r8
  \set countPercentRepeats = ##t
  \doublePercentWithCount 1*2 2
		% bar 17
		four8._"L"  two16_"R" four8_"L" three8_"R" four8_"L" one8_"R"  < four one >4
	\arrow "R" one16\startTextSpan one8 one16 one8 one16 one16\stopTextSpan \arrow "L" two16\startTextSpan two8 two16 two8 two16 two16\stopTextSpan
		\arrow "R" three16\startTextSpan three8 three16 three8 three16 three16\stopTextSpan four16_"L" four8 four16 \repeat unfold 2 {four16_"R" four16_"L"}
		\repeat unfold 16 {four16}
		% bar 21
		\repeat unfold 2 { four16_"R" four8_"L" four16_"L" one8_"R"^> four16_"R" four16_"L" }
		four16_"L" two16_"R"^> four16_"L" four16_"L" one8_"R"^> four16_"R" four16_"L" four16 four8 four16 one8_"R"^> four16 four16
		\repeat unfold 2 { four16_"R" four8_"L" four16_"L" one8_"R"^> four16_"R" four16_"L" }
		four16_"L" two16_"R"^> four16_"L" four16_"L" one8_"R"^> four16_"L" four16_"L" \repeat unfold 2 { spock16^^ spock16^^ r8 }
		% bar 25
		one16:32_"R" two16:32_"L" three16:32_"R" four16:32_"L" one8 two8 four16 four8 four16 one8_"R"^> four16 four16
		\percentWithCount 1*1 1
		four8_"skank!" four8 four16 four8 four16 r16 four16 r 16 four16 four8 four8
		four16 four8 four16 four8 \repeat unfold 6 { one16:32 } three8 four8
		% bar 29
		< three four >16^> < three four>8^> < three four>16^> <three four>4^> r2
		r1
		one16^> four8^> four16^> four8^> four16:32 four16:32 two16:32 two16:32 one8^> < three four >16^>_"cross"^> < three four >8^> < three four >16
		r16 two16^> three16 four16 one16^> two16 three16 four16 \tuplet 6/4 { two16_"R" one16_"R" two16_"L" four16_"L" two16_"R" one16_"R" } \tuplet 6/4 { two16_"L" four16_"L" two16_"R" one16_"R" two16_"L" four16_"L" } 
		% bar 33
		four16 four8 four16 four4 r2
		r1
		r1
		\repeat unfold 2 { \rflam16 three16_"R" two16 } \rflam8 r2
		% bar 37 coda
		r2 \tuplet 3/2 { r8 r8 spock8 } \tuplet 3/2 { spock8 spock8 r8 }
		one4^> < one two >4^> one16^> one16:32 one16:32 one16:32 one4^>
		s1
		s1
		\fine
	}
