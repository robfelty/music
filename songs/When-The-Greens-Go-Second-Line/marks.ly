
marks = {

	\tag #'printOnly { 
		\key f \major
	}
  
  \tempo 4 = 110 
  \time 4/4 
	\repeat unfold 16 { s1 }
	\mark \default
	\section
	\sectionLabel "Second Line (double time, swung 16s)"
	\repeat unfold 2 { s1 }
	\repeat unfold 8 { s1 }
	\mark \default
	s1 s1
	\sectionLabel "Trumpet solo"
	\repeat unfold 10 { s1 }
	\sectionLabel "Alto solo"
	\repeat unfold 10 { s1 }
	\sectionLabel "Trombone solo"
}
