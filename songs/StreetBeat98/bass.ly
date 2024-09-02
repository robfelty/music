topbass = 
	\drummode {
  r4 r8 oneb8 oneb8 oneb8 click16 oneb8 oneb16
	oneb8 oneb8 click8 oneb8 \tuplet 3/2 { oneb16 oneb16 oneb16 } s8 s4
  r4 r8 oneb8 oneb8 oneb8 click16 oneb8 oneb16
	oneb4 r4 r2
	% bar 5
	s1
	s1
  \set countPercentRepeats = ##t 
	\doublePercentWithCount 1*2 2
	% bar 9
	oneb8 \buzz oneb8_"L" click16_"R" oneb16 oneb16 oneb16 s2
	s1
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
	\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
	\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
	\repeat unfold 16 {oneb16}
	% bar 21
  \new Unison {
		\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
		\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
		\repeat unfold 2 {oneb16 oneb8 oneb16 oneb8 oneb16 oneb16} 
  }
	oneb16 oneb8 oneb16 oneb8 oneb16 oneb16 oneb16 oneb16 s8 s4
	% bar 25
		oneb16 oneb8 oneb16 oneb8 oneb16 oneb16 s2
		s1
		%\percentWithCount 1*1 1
		oneb16 oneb16 s8 s4 s4 oneb8 oneb8
		oneb16 oneb16 s8 s4 oneb16 oneb16 s8 s4
		% bar 29
		\new Unison { oneb16^>\ff oneb8^> oneb16^> oneb4^> } r2
		r1
    \new Unison { oneb16^>\ff oneb8^> oneb16^> oneb4^> } r2
		r1
		% bar 33 Bass solo
		oneb16^> oneb8^> oneb16^> \repeat unfold 4 { click16 oneb16 oneb16 }
		\tuplet 3/2 { oneb16 oneb16 oneb16 } s8 s4 s4 \tuplet 6/4 { oneb16 oneb16 twob16 twob 16 threeb16 threeb16 }
		s2 r4 s8 oneb16 oneb16
		r1
		% bar 37
		\new Unison { \tuplet 3/2 { oneb8 oneb8 oneb8 } } r4 r2
		r8 \new Unison { oneb8^> r8 oneb8^> r4 r8 oneb8^> 
		oneb4^> s1 s2 }
	}

secondbass = {
	\drummode {
		%\stemUp
  s4 s8 twob8 twob8 twob8 click16 twob8 twob16
	twob8 twob8 click8 twob8 s8 \tuplet 3/2 { twob16 twob16 twob16 } s4
  s4 s8 twob8 twob8 twob8 click16 twob8 twob16
	twob4 s4 s2
	% bar 5
	s2. s8 twob8
	s1
  \doublePercentWithCount 1*2 2
	% bar 9
	s2. s8 twob8
	s1
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	s2. s8 twob8
	s2. s8 twob8
	twob16 twob8 twob16 twob8 twob16 twob16 twob16 twob8 twob16 \repeat unfold 4 {twob16}
	s2 s8 \repeat unfold 6 {twob16}
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	twob16 twob8 twob16 twob8 twob16 twob16 s4 s8 twob16 twob16 
	% bar 25
	s2 twob16 twob8 twob16 twob8 twob16 twob16 
	s1 % repeat written elsewhere
	s8 s16 twob16 twob8 s8 s4 twob8 twob8
	s4 twob16 twob16 s8 s8 twob16 twob16 s4
	% bar 29 unison written in topbass
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	twob16 twob8 twob16 twob4 twob8. twob8. twob8
	s8 twob8 s8 \tuplet 3/2 { twob16 twob16 twob16 } s2
	s2 s4 twob16 twob16 s8
	s1
	% bar 37
	}
}
thirdbass = {
	\drummode {
  %\set countPercentRepeats = ##t
  s4 s8 threeb8 threeb8 threeb8 click16 threeb8 threeb16
	threeb8 threeb8 click8 threeb8 s4 \tuplet 3/2 { threeb16 threeb16 threeb16 } s8 
  s4 s8 threeb8 threeb8 threeb8 click16 threeb8 threeb16
	threeb4 s4 s2
	% bar 5
	threeb2 s8. threeb8. s8
	threeb4 s2.
  \doublePercentWithCount 1*2 2
	% bar 9
	threeb2 s8. threeb8. s8
	threeb4 s2.
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17 
	s2 s8. threeb16 s4
	s2 s8. threeb16 s4
	s2 s8. \repeat unfold 5 {threeb16}
	s2. \repeat unfold 4 {threeb16}
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	threeb16 threeb8 threeb16 threeb8 threeb16 threeb16 s4 threeb16 threeb16 s8
	% bar 25
	threeb16 threeb8 threeb16 threeb8 threeb16 threeb16 s2
	s1 % repeat sign marked elsewhere
	s4 s8 threeb16 threeb16 s2
	s8 threeb16 threeb16 s4 s4 threeb16 threeb16 s8 
	% bar 29 unison marked elsewhere
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	\repeat unfold 5 { threeb16 threeb8 } threeb16 
	s4 threeb4 threeb4 s4
	s1
	% bar 37 - unison in topbass
	s1
	s1
	s1



	}
}
bottombass = {
	\drummode {
  s4 s8 fourb8 fourb8 fourb8 click16 fourb8 fourb16
	fourb8 fourb8 click8 fourb8 s8 s4 \tuplet 3/2 { fourb16 fourb16 fourb16 } 
  s4 s8 fourb8 fourb8 fourb8 click16 fourb8 fourb16
	fourb4 s4 s2
	% bar 5
	fourb2 fourb8. s16 s4
	fourb4 r8. fourb16 fourb4 r8 fourb8
  \set countPercentRepeats = ##t
  \doublePercentWithCount 1*2 2
	% bar 9
	fourb2 fourb8. s16 s4
	fourb4 r8. fourb16 fourb4 r8 fourb8
  \doublePercentWithCount 1*2 2
	% bar 13
  \doublePercentWithCount 1*2 2
  \doublePercentWithCount 1*2 2
	% bar 17
	fourb2 fourb8. s16 s4
	fourb4 r8. fourb16 fourb4 r8 fourb8
	s1
	fourb16 fourb8 fourb16 fourb8  fourb16 fourb16 s4. fourb16 fourb16
	% bar 21 - unison written from the topbass
	s1
	s1
	s1
	fourb16 fourb8 fourb16 fourb8 fourb16 fourb16 s8 fourb16 fourb16 s4 
	% bar 25
	s2 fourb16 fourb8 fourb16 fourb8 fourb16 fourb16
	\percentWithCount 1*1 1
	s2 s16 fourb16 fourb8 fourb8 fourb8
	s4 s8 fourb16 fourb16 s4 s8 fourb16 fourb16
	% bar 29 unison in topbass
	s1
	s1
	s1
	s1
	% bar 33 bass solo
	\repeat unfold 2 { fourb16 fourb8 fourb16 fourb8 fourb16 fourb16 }
	s1
	fourb16 fourb8 fourb16 fourb4 s2
	s1
	% bar 37 unison is in top bass
	s1
	s1
	s1
	s1
\fine
	}
}
