topbass = 
	\drummode {
  r4 r8 one8 one8 one8 click16 one8 one16
	one8 one8 click8 one8 \tuplet 3/2 { one16 one16 one16 } s8 s4
  r4 r8 one8 one8 one8 click16 one8 one16
	one4 r4 r2
	% bar 5
	s1
	s1
  \set countPercentRepeats = ##t 
	\doublePercentWithCount 1*2 2
	% bar 9
	one8 \buzz one8_"L" click16_"R" one16 one16 one16 s2
	s1
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
	\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
	\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
	\repeat unfold 16 {one16}
	% bar 21
  \new Unison {
		\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
		\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
		\repeat unfold 2 {one16 one8 one16 one8 one16 one16} 
  }
	one16 one8 one16 one8 one16 one16 one16 one16 s8 s4
	% bar 25
		one16 one8 one16 one8 one16 one16 s2
		s1
		%\percentWithCount 1*1 1
		one16 one16 s8 s4 s4 one8 one8
		one16 one16 s8 s4 one16 one16 s8 s4
		% bar 29
		\new Unison { one16^>\ff one8^> one16^> one4^> } r2
		r1
    \new Unison { one16^>\ff one8^> one16^> one4^> } r2
		r1
		% bar 33 Bass solo
		one16^> one8^> one16^> \repeat unfold 4 { click16 one16 one16 }
		\tuplet 3/2 { one16 one16 one16 } s8 s4 s4 \tuplet 6/4 { one16 one16 two16 two 16 three16 three16 }
		s2 r4 s8 one16 one16
		r1
		% bar 37
		\new Unison { \tuplet 3/2 { one8 one8 one8 } } r4 r2
		r8 \new Unison { one8^> r8 one8^> r4 r8 one8^> 
		one4^> s1 s2 }
	}

secondbass = {
	\drummode {
		%\stemUp
  s4 s8 two8 two8 two8 click16 two8 two16
	two8 two8 click8 two8 s8 \tuplet 3/2 { two16 two16 two16 } s4
  s4 s8 two8 two8 two8 click16 two8 two16
	two4 s4 s2
	% bar 5
	s2. s8 two8
	s1
  \doublePercentWithCount 1*2 2
	% bar 9
	s2. s8 two8
	s1
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	s2. s8 two8
	s2. s8 two8
	two16 two8 two16 two8 two16 two16 two16 two8 two16 \repeat unfold 4 {two16}
	s2 s8 \repeat unfold 6 {two16}
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	two16 two8 two16 two8 two16 two16 s4 s8 two16 two16 
	% bar 25
	s2 two16 two8 two16 two8 two16 two16 
	s1 % repeat written elsewhere
	s8 s16 two16 two8 s8 s4 two8 two8
	s4 two16 two16 s8 s8 two16 two16 s4
	% bar 29 unison written in topbass
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	two16 two8 two16 two4 two8. two8. two8
	s8 two8 s8 \tuplet 3/2 { two16 two16 two16 } s2
	s2 s4 two16 two16 s8
	s1
	% bar 37
	}
}
thirdbass = {
	\drummode {
  %\set countPercentRepeats = ##t
  s4 s8 three8 three8 three8 click16 three8 three16
	three8 three8 click8 three8 s4 \tuplet 3/2 { three16 three16 three16 } s8 
  s4 s8 three8 three8 three8 click16 three8 three16
	three4 s4 s2
	% bar 5
	three2 s8. three8. s8
	three4 s2.
  \doublePercentWithCount 1*2 2
	% bar 9
	three2 s8. three8. s8
	three4 s2.
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17 
	s2 s8. three16 s4
	s2 s8. three16 s4
	s2 s8. \repeat unfold 5 {three16}
	s2. \repeat unfold 4 {three16}
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	three16 three8 three16 three8 three16 three16 s4 three16 three16 s8
	% bar 25
	three16 three8 three16 three8 three16 three16 s2
	s1 % repeat sign marked elsewhere
	s4 s8 three16 three16 s2
	s8 three16 three16 s4 s4 three16 three16 s8 
	% bar 29 unison marked elsewhere
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	\repeat unfold 5 { three16 three8 } three16 
	s4 three4 three4 s4
	s1
	% bar 37 - unison in topbass
	s1
	s1
	s1



	}
}
bottombass = {
	\drummode {
  s4 s8 four8 four8 four8 click16 four8 four16
	four8 four8 click8 four8 s8 s4 \tuplet 3/2 { four16 four16 four16 } 
  s4 s8 four8 four8 four8 click16 four8 four16
	four4 s4 s2
	% bar 5
	four2 four8. s16 s4
	four4 r8. four16 four4 r8 four8
  \set countPercentRepeats = ##t
  \doublePercentWithCount 1*2 2
	% bar 9
	four2 four8. s16 s4
	four4 r8. four16 four4 r8 four8
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	four2 four8. s16 s4
	four4 r8. four16 four4 r8 four8
	s1
	four16 four8 four16 four8  four16 four16 s4. four16 four16
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	four16 four8 four16 four8 four16 four16 s8 four16 four16 s4 
	% bar 25
	s2 four16 four8 four16 four8 four16 four16
	\percentWithCount 1*1 1
	s2 s16 four16 four8 four8 four8
	s4 s8 four16 four16 s4 s8 four16 four16
	% bar 29 unison in topbass
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	\repeat unfold 2 { four16 four8 four16 four8 four16 four16 }
	s1
	four16 four8 four16 four4 s2
	s1
	% bar 37 unison is in top bass
	s1
	s1
	s1
	s1
\fine
	}
}
