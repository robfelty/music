
hand =
#(define-music-function (mymarkup) (markup?)
#{ 
		\override TextSpanner.bound-padding = #1.0
  \override TextSpanner.style = #'line
  \override TextSpanner.bound-details.right.arrow = ##t
  \override TextSpanner.bound-details.right.padding = #0.6
	\override TextSpanner.bound-details.left.text = #"L"
  \override TextSpanner.bound-details.right.padding = #0.6
	\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
						#}
   (make-music 'CrescendoEvent
               'span-direction START
               'span-type 'text
							 'span-style 'line
							 'span-text mymarkup 
							 )
							 )
lhand = #(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cresc. poco a poco")
newhand =
#(define-music-function (mymarkup) (markup?)
#{ 
		\override TextSpanner.bound-padding = #1.0
  \override TextSpanner.style = #'line
  \override TextSpanner.bound-details.right.arrow = ##t
  \override TextSpanner.bound-details.right.padding = #0.6
	\override TextSpanner.bound-details.left.text = #"F"
  \override TextSpanner.bound-details.right.padding = #0.6
	\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
						#}
   (make-music 'TextSpanEvent
               'span-direction START
               'span-type 'text
							 'span-style 'line
							 'span-text mymarkup 
							 )
							 )



	\context {
			\name SnareStaff
  %\type "Engraver_group"
  \type "Score_engraver"
			\override StemTremolo.slope = #0.25
			\override StemTremolo.beam-width = #1.5
			\override Beam.positions = #'(4 . 4)
  \alias DrumStaff
	}
z = \markup { 
	\override #'(font-family . sans)
              \fontsize #2 "z" 
						}

	\context {
  \Staff
	\accepts SnareStaff
}
\inherit-acceptability "SnareStaff" "DrumStaff"
