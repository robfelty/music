\layout {
	\context {
		\name Unison
		\type "Engraver_group"
		%\consists "Drum_notes_engraver" TODO makes double heads -ugly
		%\consists "Dynamic_engraver" TODO dynamics are placed on the staff instead of under
		\consists "Rest_engraver"
		\consists "Midi_control_change_performer"
		\consists "Percent_repeat_engraver"
		\consists "Tuplet_engraver"
		\consists "Note_heads_engraver"
		\consists "Script_engraver"
		\consists "Text_engraver"
		\consists "Text_mark_engraver"
		\consists "Stem_engraver"
		\consists "Auto_beam_engraver"
		\consists "Beam_engraver"
		\consists "Rhythmic_column_engraver"
		\consists "Pitch_squash_engraver"
		squashedPosition = #0
		\override NoteHead.style = #'slash
			\override Stem.length = #7
		%\hide Stem
		\stemUp
		\alias DrumVoice
	}
}

rflam = #(define-music-function (dur) (ly:duration?)
#{ \drummode { 
			\override Stem.length = #4
\slashedGrace sna8 
			\override Stem.length = #7
sn$dur ^> _"R" } #})

lflam = #(define-music-function (dur) (ly:duration?)
#{ \drummode { 
			\override Stem.length = #4
	\slashedGrace sna8 
			\override Stem.length = #7
	sn$dur ^> _"L" } #} )

snr = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { sn$dur _"R" } #} )

snl = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { sn$dur _"L" } #} )

br = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { sn$dur _"R" } #} )

bz = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { 
		\once \override TextScript.extra-offset = #'(.4 . -2.5)
sn$dur ^\z
} #} )
bzl = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { 
		\once \override TextScript.extra-offset = #'(.4 . -2.5)
sn$dur ^\z
_"L"
} #} )

bzr = #(define-music-function (dur) (ly:duration?)
  #{ \drummode { 
		\once \override TextScript.extra-offset = #'(.4 . -2.5)
^\z
sn$dur 
_"R"
		\revert TextScript.extra-offset
} #} )

buzzSymbol = \markup \path #0.25
#(let ((x 1/2) (y 1/2))
`((moveto ,x ,(- y)) (lineto ,(- x) ,(- y))
(lineto ,x ,y) (lineto ,(- x) ,y)))

applyBuzzSymbol = #(grob-transformer 'stencil
  (lambda (grob orig)
   (let* ((yex (ly:stencil-extent orig Y))
          (ypos (interval-index yex CENTER ))
          (sten (grob-interpret-markup grob buzzSymbol)))
    (ly:stencil-add orig
     (ly:stencil-translate-axis sten ypos Y)))))
buzz = \tweak Stem.stencil \applyBuzzSymbol \etc

doublePercentWithCount =
  #(define-music-function (length count) (ly:duration? number?)
     (make-music 'DoublePercentEvent
                 'length (ly:duration-length length)
                 'repeat-count count ))
percentWithCount =
  #(define-music-function (length count) (ly:duration? number?)
     (make-music 'PercentEvent
                 'length (ly:duration-length length)
                 'repeat-count count ))



startSlashedGraceMusic = {
  \override NoteHead.font-size = #-6
	\override Flag.stroke-style = "grace"
}


stopSlashedGraceMusic = {
  \revert NoteHead.font-size
	\revert Flag.stroke-style 
}

#(define snareConfig '(
         (claves        default   #f           5)
         (snare           default   #f           1)
         (buzz           default   #f           1)
         (hihat           cross     #f           2)
         (backstick   cross     #f     -1)
         (losidestick      xcircle   #f      1)
         (hisidestick          xcircle   #f      3)))
#(define tenorConfig '(
         (spock        default   #f           5)
         (one           default   #f           3)
         (two           default     #f           1)
         (three   default     #f     -1)
         (four   default     #f     -3)
         (hightom        default   #f           5)
         (himidtom           default   #f           3)
         (lowmidtown           default     #f           1)
         (lowtom   default     #f     -1)
         (highfloortom   default     #f     -1)
         (lowfloortom      default   #f      -3)))
#(define bassConfig '(
         (oneb           default   #f           3)
         (twob           default     #f           1)
         (threeb   default     #f     -1)
         (bassdrum   default     #f     -3)))
titledPiece = {}
AutoBarline = {}
AutoEndMovementBarline = \bar "|."
drumPitchNames.spock = #'spock
drumPitchNames.one = #'one
drumPitchNames.two = #'two
drumPitchNames.three = #'three
drumPitchNames.four = #'four
drumPitchNames.oneb = #'oneb
drumPitchNames.twob = #'twob
drumPitchNames.threeb = #'threeb
drumPitchNames.fourb = #'bassdrum
drumPitchNames.click = #'claves
drumPitchNames.stickshot = #'hihat
drumPitchNames.rimshot = #'hisidestick
drumPitchNames.rimclick = #'losidestick
drumPitchNames.backstick = #'backstick
drumPitchNames.buzz = #'buzz
midiDrumPitches.spock = e'
midiDrumPitches.one = a
midiDrumPitches.two = a
midiDrumPitches.three = d
midiDrumPitches.four = d
midiDrumPitches.snare = e
midiDrumPitches.buzz = c


arrow = #(define-music-function (mymarkup) (markup?)
#{ 
		\override TextSpanner.bound-padding = #1.0
  \override TextSpanner.style = #'line
  \override TextSpanner.bound-details.right.arrow = ##t
	\override TextSpanner.bound-details.left.text = #mymarkup
  \override TextSpanner.bound-details.right.padding = #0.6
	\override TextSpanner.bound-details.right.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
	\textSpannerDown
						#}
						)

