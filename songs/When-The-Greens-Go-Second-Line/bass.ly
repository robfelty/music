
topbassDrumBreak = {
	\drummode {
		\ff
		\tag #'printOnly { 
			s1
		}
		\tag #'midiOnly {
				oneb8. oneb16 r4 oneb8. oneb16 r4
		}
		oneb8 s8 s4 s2
	}
}
topbassSecondLine = {
	\drummode {
		\tag #'printOnly { 
			\mf
		}
		\tag #'midiOnly { 
			\fffff
		}
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
			\tag #'midiOnly { 
				\fffff
			}
			% drum break
			\tag #'printOnly { 
				s1
			}
			\tag #'midiOnly {
					twob8. twob16 r4 twob8. twob16 r4
			}
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
			\tag #'midiOnly { 
				\fffff
			}
			% drum break
			\tag #'printOnly { 
				s1
			}
			\tag #'midiOnly {
					threeb8. threeb16 r4 threeb8. threeb16 r4
			}
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
		\tag #'midiOnly { 
			\ff
		}
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
			\tag #'midiOnly { 
				\fffff
			}
			\tag #'printOnly {
				\new Unison {
					fourb8. fourb16 r4 fourb8. fourb16 r4
				} 
			}
			\tag #'midiOnly {
				\tripletFeel 16 {
					fourb8. fourb16 r4 fourb8. fourb16 r4
				}
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

