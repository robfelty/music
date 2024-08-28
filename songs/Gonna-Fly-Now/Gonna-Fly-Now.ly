\version "2.24.3"
arrow = #(define-music-function (mymarkup) (markup?)
#{ 
% 		\override TextSpanner.bound-padding = #1.0
%   \override TextSpanner.style = #'line
%   \override TextSpanner.bound-details.right.arrow = ##t
 	\override TextSpanner.bound-details.left.text = #mymarkup
%   \override TextSpanner.bound-details.right.padding = #0.6
% 	\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
%   \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
 	\textSpannerUp
						#}
						)

#(define appice '(
         (crashcymbal           xcircle     #f           6)
         (bassdrum        default   #f           -5)
         (snare           default   #f           0)
         (hihat           cross     #f           5)
         (halfopenhihat   cross     #f     -1)
         (pedalhihat      xcircle   #f      1)
         (lowtom          xcircle   #f      3)))
pdflayout = \layout {
	\context {
		\name Fill
		\type "Engraver_group"
		%\consists "Drum_notes_engraver" TODO makes double heads -ugly
		%\consists "Dynamic_engraver" TODO dynamics are placed on the staff instead of under
		 \consists "Rest_engraver"
%		 \consists "Percent_repeat_engraver"
		 \consists "Tuplet_engraver"
		 \consists "Note_heads_engraver"
		 \consists "Script_engraver"
		 \consists "Text_engraver"
		 \consists "Text_mark_engraver"
		 \consists "Text_spanner_engraver"
%		 \consists "Stem_engraver"
%		 \consists "Auto_beam_engraver"
%		 \consists "Beam_engraver"
		\consists "Rhythmic_column_engraver"
		\consists "Pitch_squash_engraver"
		squashedPosition = #0
		\override NoteHead.style = #'slash
		%	\override Stem.length = #7
		\hide Stem
		\stemUp
		\alias DrumVoice
	}
	\context {
		\DrumStaff
		\accepts Fill
	}
	\context {
			\Score
			%\omit BarNumber
			 \override BarNumber.direction = #DOWN
barNumberVisibility = #all-bar-numbers-visible  %% alle Taktzahlen anzeigen
		%barNumberVisibility = #(lambda (n x) (= (modulo n 1) 0))  %% erste Taktzahl anzeigen, nur wenn leerer Taktstrich vor Beginn eingefügt wurde
    %\override BarNumber.color = #(rgb-color 0.7 0.7 0.7)
    \override BarNumber.outside-staff-priority =#'()
    %\override BarNumber.padding = #-2
    %\override BarNumber.font-size = #-1
    %\override BarNumber.font-series = #'bold
    \override BarNumber.self-alignment-X = #0
    \override BarNumber.break-visibility = #end-of-line-invisible
  }
}
\header{
	title = "Gonna Fly Now - drums"
	composer = "Words and Music by Bill Conti, Ayn Robbins and Carol Connof"
	tagline = \markup {Copyright 1976, 1977 Unitead Artists Corporation  }
}

\paper {
	indent = 0
	top-margin = 2\cm
	bottom-margin = 2\cm
	right-margin = 2\cm
	left-margin = 2\cm
	% get the title on every page
	oddHeaderMarkup = \markup {
			\fill-line
			{
				\fromproperty #'page:page-number-string                   %% left
				 \if \should-print-page-number \fromproperty #'header:title  %% center
				" "                                                       %% right
			 }
	}
	evenHeaderMarkup = \oddHeaderMarkup

  system-system-spacing =
    #'((basic-distance . 11)
       (minimum-distance . 7)
       (padding . 1)
       (stretchability . 10))
}
#(set-global-staff-size 22)
gonnafly = \new DrumStaff { <<
	\override Score.SpacingSpanner.strict-note-spacing = ##t
	\tempo 4 = 120
		\set DrumStaff.drumStyleTable = #(alist->hash-table appice)
		\set Staff.instrumentName = \markup { 
			\column { "HH" 
				\line { "SD" }
				\line {"BD" }
			}
		}
		\set Staff.shortInstrumentName = \markup { 
			\column { "HH" 
				\line { "SD" }
				\line {"BD" }
			}
		}

		%\override Staff.StaffSymbol.line-count = #3
		\set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers
		\override Staff.StaffSymbol.line-positions = #'( 5 0 -5 )
			\new DrumVoice  {
	\set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
			\override Beam.positions = #'(5 . 5) 
				% hi-hat
				\voiceOne 
				\drummode {
					\repeat unfold 2 {
						cymc4 s4 s2
						s1
					}
					\repeat unfold 2 {
						cymc8. cymc16 s4 s2
						s1
					}
					\repeat percent 8 {
						\repeat unfold 8 { hh8 }
					}
					\repeat percent 8 {
						\repeat unfold 8 { hh8 }
					}
					\repeat percent 6 {
						\repeat unfold 8 { hh8 }
					}
					\repeat percent 8 {
						_"hi-hat mit beiden Händen"^"        Sax solo"
						\repeat unfold 3 { hh16 }
						s16_"L"
						\repeat unfold 8 { hh16 }
						s16_"R"
						\repeat unfold 3 { hh16 }
					}
					\repeat percent 8 {
						\repeat unfold 3 { hh16 }
						s16_"L"
						\repeat unfold 8 { hh16 }
						s16_"R"
						\repeat unfold 3 { hh16 }
					}
					\repeat unfold 4 {
						cymc4 
						s4 s2
						s2 s8 cymc8. cymc8.
					}
					\repeat percent 4 {
						\repeat unfold 8 { hh8 }
					}
					\repeat percent 6 {
						\repeat unfold 8 { hh8 }
					}
					\repeat unfold 3 {
						cymc8. cymc16 s4 s2
						s1
					}
					cymc8. cymc16 s4 s2
					s2 s4 s16 cymc8.
					cymc8^"Choke"
				}
			}
			\new DrumVoice  {
			\override Beam.positions = #'(5 . 5) 
			\override Voice.Rest.Y-offset = 0
				% snare
				\voiceTwo 
				\drummode {
					\stemUp
					\repeat unfold 2 {
						sn4 r4 r2
						\new Fill {
							\arrow "fill" sn4\startTextSpan
							sn4 sn4 sn4\stopTextSpan
						}
					}
					\repeat unfold 2 {
						sn8. sn16 r4 r2
						sn16 sn16 r8 r8 sn16 sn16 r2
					}
					\repeat percent 8 {
						s4 sn4 s4 sn4
					}
					\repeat percent 8 {
						s4 sn4 s4 sn4
					}
					\repeat percent 6 {
						s4 sn4 s4 sn4
					}
					\repeat percent 8 {
						s8. sn16 s4 s4 sn4
					}
					\repeat percent 8 {
						s8. sn16 s4 s4 sn4
					}
					% bar 47 drum solo
							\arrow "drum solo" \startTextSpan
					\repeat unfold 4 {
s4
						\new Fill {
							sn4 sn4 sn4
						}
						\new Fill {
							sn4 sn4 
						}
						sn8 s8 s4
					}
							\stopTextSpan
					\repeat percent 4 {
						s4 sn4 s4 sn4
					}
					\repeat percent 6 {
						s4 sn4 s4 sn4
					}
					\repeat unfold 3 {
						sn8. sn16 r4 r2
						sn16 sn16 r8 r8 sn16 sn16 r2
					}
					sn8. sn16 r4 r2
					sn16 sn16 r8 r8 sn16 sn16 r4 sn16 s8.
					s8
				}
			}
			\new DrumVoice  {
				% bass drum
				\voiceThree 
				\drummode {
				\stemDown
				\repeat unfold 2 {
					bd4 s4 s2
					s1
				}
				\repeat unfold 2 {
					bd8. bd16 s4 s2
					s1
				}
				\repeat percent 8 {
					bd4 s4 bd4 s4 
				}
				\repeat percent 8 {
					bd4 s4 bd4 s4 
				}
				\repeat percent 6 {
					bd4 s4 bd4 s4 
				}
				\repeat percent 8 {
					bd4 s4 bd4 s4 
				}
				\repeat percent 8 {
					bd4 s4 bd4 s4 
				}
				\repeat unfold 4 {
					bd4 s4 s2
					s2 s8 bd8. bd8.
				}
			% bar 55
				\repeat percent 4 {
					bd4 s4 bd4 s4 
				}
				% bar 59
				\repeat percent 6 {
					bd4 s4 bd4 s4 
				}
				% bar 65
				\repeat unfold 3 {
					bd4 s4 s2
					s1
				}
					bd8. bd16 s4 s2
					s2 s4 s16 bd8.
					bd8
			}
		}
		% just for marks
		\new DrumVoice 	{
			\voiceOne
			\repeat unfold 8 { s1 } \mark \default % bar 9
			\repeat unfold 8 { s1 } \mark \default % bar 17
			\repeat unfold 8 { s1 } \mark \default %bar 25
			\repeat unfold 6 { s1 } \mark \default %bar 31
			\repeat unfold 8 { s1 } \mark \default %bar 39
			\repeat unfold 8 { s1 } \mark \default %bar 47
%					%\sectionLabel "      Drum Solo"
% For some reason putting a mark at bar 55 messes up the spacing
			\repeat unfold 8 { s1 } %\mark \default %bar 55
				\repeat unfold 4 { s1 } \bar "||" \mark \default %bar 59
				\repeat unfold 6 { s1 } \bar "||" \mark \default %bar 65
				\repeat unfold 8 { s1 } s4\fine
		}
>>
	}

\score {
	\pdflayout
	\gonnafly
}
\include "articulate.ly"
\score {
	\unfoldRepeats
	\gonnafly
	\midi {}
}
