snareSecondLine = {
	\drummode{
		\tag #'printOnly { 
			\mf
		}
		\tag #'midiOnly { 
			\fffff
		}
		\repeat unfold 2 { sn8 \buzz buzz16^> \buzz buzz16 sn16 sn16^> sn16 sn16 sn8^>_"R" sn8_"L" sn8_"R" rimshot8_"R"^> }
		\repeat unfold 4 { \buzz buzz16^> \buzz buzz16 sn16 sn16^> sn16 sn16 } sn2^>
		\repeat unfold 2 { \tuplet 6/4 { \repeat unfold 6 { sn16 } } sn8 \lflam8 }
		\tuplet 3/2 { sn16 sn16 sn16 } sn8 \tuplet 6/4 { \repeat unfold 6 { sn16 } } sn2
		\repeat unfold 4 { \tuplet 3/2 { sn16 sn16 sn16 } sn8 } 
		\tuplet 6/4 { \repeat unfold 6 { sn16 } } sn8 \lflam8 \rflam4 r4
	}
}
snareDrumBreak = {
	\ff
	\drummode {
		\repeat unfold 2 { \tuplet 6/4 { sn16_"R"^> sn16_"L" sn16_"L" sn16_"R" sn16_"R" sn16_"L"^> } sn4_"R"^> }
		\repeat unfold 2 { \tuplet 6/4 { sn16_"R"^> sn16_"L" sn16_"R" sn16_"R" sn16_"L" sn16_"L" } } sn4_"R"^> r4
	}
}
snare = {
	\drummode {
		s1
		\repeat unfold 2 { 
			\repeat unfold 2 { sn4 \buzz buzz16^>\> \repeat unfold 3 { \buzz buzz16 } }\! 
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
		\f
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
		\f
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
		\f
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
